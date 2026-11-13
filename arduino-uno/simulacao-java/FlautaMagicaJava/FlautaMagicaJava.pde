/*
 * =====================================================================
 *  FLAUTA MAGICA  -  versao em JAVA (Processing 4) do firmware original
 * =====================================================================
 *  Esta e a logica do Arduino (recuperada do dump da placa) reescrita em
 *  Java. Ela roda numa "thread de firmware" separada, exatamente como a
 *  placa roda o loop(), enquanto a janela desenha as fitas de LED e o
 *  DFPlayer e simulado tocando os arquivos .wav da pasta data.
 *
 *  COMO USAR
 *   1) Abra este arquivo no Processing 4 (biblioteca "Sound" instalada).
 *   2) Os .wav sao procurados em: pasta data do sketch, ../../data, ../data.
 *   3) Aperte Play.
 *
 *  SENSORES (os 4 pinos de entrada do Arduino)
 *   Clique nas bolinhas S1..S4 (ou teclas 1..4) para ligar/desligar cada
 *   sensor, ou use os botoes/teclas que dao um "toque" na combinacao:
 *     M = melodica  (S1 S2 S3 S4 = 1 0 0 0)
 *     H = harmonica (0 1 0 0)
 *     R = ritmica   (0 0 1 0)
 *     P = parar     (1 0 0 1)
 *     B = proximo banco (1 1 1 1)
 *     V = volume +  (0 1 1 1)
 *
 *  O QUE E CERTO E O QUE E SUPOSICAO
 *   - Pinos, tabela de LEDs, cores, tempos, ordem das animacoes e as
 *     combinacoes de sensores: vem DIRETO do binario.
 *   - Qual .wav corresponde a cada faixa do cartao SD do DFPlayer NAO esta
 *     no binario (so o numero da faixa). O mapeamento abaixo foi deduzido
 *     pela analogia com o FlautaVirtual.pde (melodicos, harmonicos, ritmicos).
 * =====================================================================
 */

import processing.sound.*;

// ======================================================================
//  "HARDWARE" SIMULADO
// ======================================================================
final int NUM_LEDS = 40;
final int[] PINO_FITA = {13, 12, 11, 10};
final int SHOW_MS = 1;    // um show() de 40 LEDs leva ~1,2 ms no hardware real
final int LOOP_MS = 1;    // duracao simulada de uma passada do loop()

// Equivalente da Adafruit_NeoPixel: setPixelColor escreve no buffer,
// show() "envia" o buffer para a fita (aqui: copia para o que e desenhado).
class Fita {
  int[] buffer = new int[NUM_LEDS];
  int[] tela = new int[NUM_LEDS];

  int Color(int r, int g, int b) {
    return ((r & 255) << 16) | ((g & 255) << 8) | (b & 255);
  }
  void setPixelColor(int i, int cor) {
    if (i >= 0 && i < NUM_LEDS) buffer[i] = cor;
  }
  void show() {
    System.arraycopy(buffer, 0, tela, 0, NUM_LEDS);
    esperar(SHOW_MS);
  }
}

Fita fita1 = new Fita();
Fita fita2 = new Fita();
Fita fita3 = new Fita();
Fita fita4 = new Fita();
Fita[] fitas = {fita1, fita2, fita3, fita4};

// Sensores: bit 0 = pino 9, bit 1 = pino 8, bit 2 = A0, bit 3 = A4
final String[] NOME_SENSOR = {"S1 (pino 9)", "S2 (pino 8)", "S3 (A0)", "S4 (A4)"};
final Object trava = new Object();
int sensoresBits = 0;
long leituras = 0;
boolean pulsoEmCurso = false;

// ======================================================================
//  DFPLAYER SIMULADO (faixa -> arquivo .wav)
// ======================================================================
SoundFile[] som = new SoundFile[17];
String[] ARQUIVO_FAIXA = new String[17];
SoundFile somAtual = null;
int volumeDF = 15;        // 0..30, como no DFPlayer
int faixaAtual = -1;

void dfPlay(int n) {
  println("[DFPlayer] play(" + n + ")");
  if (somAtual != null) somAtual.stop();
  somAtual = (n >= 0 && n < som.length) ? som[n] : null;
  faixaAtual = n;
  if (somAtual != null) {
    somAtual.amp(volumeDF / 30.0);
    somAtual.play();
  } else {
    println("[DFPlayer] (sem arquivo .wav associado a faixa " + n + ")");
  }
}

void dfStop() {
  println("[DFPlayer] stop()");
  if (somAtual != null) somAtual.stop();
  faixaAtual = -1;
}

void dfVolume(int v) {
  println("[DFPlayer] volume(" + v + ")");
  volumeDF = v;
  if (somAtual != null) somAtual.amp(volumeDF / 30.0);
}

String pastaSons() {
  String[] cand = { dataPath(""), sketchPath("../../data"), sketchPath("../data"), sketchPath("data") };
  for (String c : cand) {
    if (new File(c, "AGU 3.wav").exists()) return c;
  }
  return dataPath("");
}

void carregarSons() {
  // melodicas: faixas 1..5 | harmonicas: 6..10 | ritmicas: 12..15
  ARQUIVO_FAIXA[1]  = "AG 1 esc 1.wav";
  ARQUIVO_FAIXA[2]  = "AG 1 INVERS 3.wav";
  ARQUIVO_FAIXA[3]  = "AGU 3.wav";
  ARQUIVO_FAIXA[4]  = "AGU 4.wav";
  ARQUIVO_FAIXA[5]  = "AGUDO 5.5.wav";
  ARQUIVO_FAIXA[6]  = "AG 1 INVERS 1.wav";
  ARQUIVO_FAIXA[7]  = "AG 1 INVERS 2.wav";
  ARQUIVO_FAIXA[8]  = "AG 1 INVERS 5.wav";
  ARQUIVO_FAIXA[9]  = "AG 6.wav";
  ARQUIVO_FAIXA[10] = "AGUDO 6.wav";
  ARQUIVO_FAIXA[12] = "R 1.wav";
  ARQUIVO_FAIXA[13] = "R 2.wav";
  ARQUIVO_FAIXA[14] = "R 3.wav";
  ARQUIVO_FAIXA[15] = "R 3 (1).wav";
  String pasta = pastaSons();
  println("Pasta de sons: " + pasta);
  for (int n = 0; n < ARQUIVO_FAIXA.length; n++) {
    if (ARQUIVO_FAIXA[n] == null) continue;
    File f = new File(pasta, ARQUIVO_FAIXA[n]);
    if (!f.exists()) {
      println("AVISO: nao achei " + f.getPath());
      continue;
    }
    som[n] = new SoundFile(this, f.getAbsolutePath());
  }
}

// ======================================================================
//  ESTADO DO FIRMWARE
// ======================================================================
int volume = 5;   // so e alterado; nunca enviado ao DFPlayer (como no original)
int banco = 0;                     // 0..5
String acaoAtual = "(aguardando)";

// cores {R, G, B}
final int[] AZUL           = {0, 0, 255};
final int[] MAGENTA        = {255, 0, 255};
final int[] VERDE_FOLHA    = {69, 139, 19};
final int[] LIMAO          = {165, 218, 32};
final int[] AZUL_CEU       = {43, 138, 226};
final int[] AZUL_NOITE     = {25, 25, 112};
final int[] VERDE_FLORESTA = {34, 178, 34};
final int[] VERDE_CLARO    = {105, 210, 30};

// mapa[coluna][linha] = { fita (1..4), LED inicial, LED final }
final int[][][] mapa = {
  { // coluna 0
    {1, 4, 7},
    {1, 0, 3},
    {2, 4, 7},
    {2, 0, 3},
    {3, 4, 7},
    {3, 0, 3},
    {4, 0, 3},
    {4, 4, 7},
    {0, 0, 0}
  },
  { // coluna 1
    {1, 8, 11},
    {1, 12, 15},
    {2, 8, 11},
    {2, 12, 15},
    {3, 8, 11},
    {3, 12, 15},
    {4, 12, 15},
    {4, 8, 11},
    {0, 0, 0}
  },
  { // coluna 2
    {1, 20, 23},
    {1, 16, 19},
    {2, 20, 23},
    {2, 16, 19},
    {3, 20, 23},
    {3, 16, 19},
    {4, 16, 19},
    {4, 20, 23},
    {0, 0, 0}
  },
  { // coluna 3
    {1, 24, 27},
    {1, 28, 31},
    {2, 24, 27},
    {2, 28, 31},
    {3, 24, 27},
    {3, 28, 31},
    {4, 28, 31},
    {4, 24, 27},
    {0, 0, 0}
  },
  { // coluna 4
    {1, 36, 39},
    {1, 32, 35},
    {2, 36, 39},
    {2, 32, 35},
    {3, 36, 39},
    {3, 32, 35},
    {4, 32, 35},
    {4, 36, 39},
    {0, 0, 0}
  }
};

// trilha[familia-1][banco] = numero da faixa no cartao SD
final int[][] trilha = {
  {1, 2, 3, 4, 5, 0},
  {6, 7, 8, 9, 10, 0},
  {12, 13, 14, 15, 16, 0}
};

// ======================================================================
//  FUNCOES DO FIRMWARE (traduÃ§Ã£o direta do C++ do Arduino)
// ======================================================================
void esperar(int ms) {                 // = delay() do Arduino
  if (ms <= 0) return;
  try {
    Thread.sleep(ms);
  } catch (InterruptedException e) {
    Thread.currentThread().interrupt();
  }
}

void pintarFaixa(Fita fita, int ini, int fim, int[] cor) {
  for (int i = ini; i <= fim; i++) {
    fita.setPixelColor(i, fita.Color(cor[0], cor[1], cor[2]));
    fita.show();
  }
}

void led(int coluna, int linha, int[] cor) {
  int fita = mapa[coluna][linha][0];
  int ini  = mapa[coluna][linha][1];
  int fim  = mapa[coluna][linha][2];
  switch (fita) {
    case 1: pintarFaixa(fita1, ini, fim, cor); break;
    case 2: pintarFaixa(fita2, ini, fim, cor); break;
    case 3: pintarFaixa(fita3, ini, fim, cor); break;
    case 4: pintarFaixa(fita4, ini, fim, cor); break;
  }
}

void apagarTudo() {
  for (int i = 0; i < NUM_LEDS; i++) {
    fita1.setPixelColor(i, 0); fita1.show();
    fita2.setPixelColor(i, 0); fita2.show();
    fita3.setPixelColor(i, 0); fita3.show();
    fita4.setPixelColor(i, 0); fita4.show();
  }
}

void tocar(int x, int y) {
  x = x - 1;
  println();
  println();
  print("x: ");
  println(x);
  print("y: ");
  println(y);
  dfPlay(trilha[x][y]);
  esperar(200);
  println();
}

// ---- animacao melodica ----
void passosMelodica() {
  led(0, 1, AZUL);
  esperar(83);

  led(4, 1, AZUL);
  esperar(83);

  led(4, 5, AZUL);
  esperar(83);

  led(2, 2, AZUL);
  esperar(83);

  led(0, 3, AZUL);
  esperar(83);

  led(4, 3, AZUL);
  esperar(83);

  led(4, 0, AZUL);
  esperar(83);

  led(4, 4, AZUL);
  esperar(83);

  led(2, 6, AZUL);
  esperar(83);

  led(0, 7, AZUL);
  esperar(83);

  led(0, 5, AZUL);
  esperar(83);

  led(4, 7, AZUL);
  esperar(83);

  led(0, 0, MAGENTA);
  led(1, 0, MAGENTA);
  esperar(41);

  led(1, 1, MAGENTA);
  led(2, 1, MAGENTA);
  esperar(41);

  led(0, 2, MAGENTA);
  led(1, 2, MAGENTA);
  esperar(41);

  led(1, 3, MAGENTA);
  led(2, 3, MAGENTA);
  esperar(41);

  led(0, 4, MAGENTA);
  led(1, 4, MAGENTA);
  esperar(41);

  led(1, 5, MAGENTA);
  led(2, 5, MAGENTA);
  esperar(41);

  led(0, 6, MAGENTA);
  led(1, 6, MAGENTA);
  esperar(41);

  led(1, 7, MAGENTA);
  led(2, 7, MAGENTA);
  esperar(41);

  led(3, 7, VERDE_FOLHA);
  esperar(41);

  led(3, 6, VERDE_FOLHA);
  led(4, 6, VERDE_FOLHA);
  esperar(41);

  led(3, 5, VERDE_FOLHA);
  esperar(41);

  led(2, 4, VERDE_FOLHA);
  led(3, 4, VERDE_FOLHA);
  esperar(41);

  led(3, 3, VERDE_FOLHA);
  esperar(41);

  led(3, 2, VERDE_FOLHA);
  led(4, 2, VERDE_FOLHA);
  esperar(41);

  led(3, 1, VERDE_FOLHA);
  esperar(41);

  led(2, 0, VERDE_FOLHA);
  led(3, 0, VERDE_FOLHA);
}

void animacaoMelodica() {
  for (int rep = 0; rep < 3; rep++) {
    apagarTudo();
    if (rep == 0) tocar(1, banco);
    passosMelodica();
    esperar(41);
  }
}

// ---- animacao ritmica ----
void piscaFase1() {
  led(0, 6, LIMAO);
  led(0, 7, LIMAO);
  led(2, 6, AZUL_CEU);
  led(3, 7, AZUL_CEU);
}

void piscaFase2() {
  led(0, 6, AZUL_CEU);
  led(0, 7, AZUL_CEU);
  led(2, 6, LIMAO);
  led(3, 7, LIMAO);
}

void animacaoRitmica() {
  apagarTudo();
  tocar(3, banco);

  // desenho de fundo
  led(0, 2, AZUL_CEU);
  led(0, 3, AZUL_CEU);
  led(0, 4, AZUL_CEU);
  led(0, 5, AZUL_CEU);
  led(0, 6, AZUL_CEU);
  led(0, 7, AZUL_CEU);
  led(1, 0, AZUL_CEU);
  led(1, 1, AZUL_CEU);
  led(1, 3, AZUL_CEU);
  led(1, 6, AZUL_CEU);
  led(1, 7, AZUL_CEU);
  led(2, 0, AZUL_CEU);
  led(2, 1, AZUL_CEU);
  led(2, 2, AZUL_CEU);
  led(2, 4, AZUL_CEU);
  led(2, 5, AZUL_CEU);
  led(2, 7, AZUL_CEU);
  led(3, 0, AZUL_CEU);
  led(3, 1, AZUL_CEU);
  led(3, 3, AZUL_CEU);
  led(3, 5, AZUL_CEU);
  led(3, 6, AZUL_CEU);
  led(4, 2, AZUL_CEU);
  led(4, 3, AZUL_CEU);
  led(4, 4, AZUL_CEU);
  led(4, 6, AZUL_CEU);
  led(4, 7, AZUL_CEU);
  led(0, 0, LIMAO);
  led(0, 1, LIMAO);
  led(1, 2, LIMAO);
  led(1, 4, LIMAO);
  led(1, 5, LIMAO);
  led(2, 3, LIMAO);
  led(2, 6, LIMAO);
  led(3, 2, LIMAO);
  led(3, 4, LIMAO);
  led(3, 7, LIMAO);
  led(4, 0, LIMAO);
  led(4, 1, LIMAO);
  led(4, 5, LIMAO);

  // 4 compassos de 8 tempos alternando as duas fases
  for (int compasso = 0; compasso < 4; compasso++) {
    for (int tempo = 0; tempo < 8; tempo++) {
      if (tempo % 2 == 0) piscaFase1(); else piscaFase2();
      if (compasso == 3 && tempo == 7) break;
      esperar(tempo == 7 ? 50 : 100);
    }
  }
}

// ---- animacao harmonica ----
void animacaoHarmonica() {
  apagarTudo();
  tocar(2, banco);

  led(0, 0, VERDE_FLORESTA);
  led(0, 1, VERDE_FLORESTA);
  led(0, 2, VERDE_FLORESTA);
  led(0, 5, VERDE_FLORESTA);
  led(0, 6, VERDE_FLORESTA);
  led(0, 7, VERDE_FLORESTA);
  led(1, 0, VERDE_FLORESTA);
  led(1, 1, VERDE_FLORESTA);
  led(1, 6, VERDE_FLORESTA);
  led(1, 7, VERDE_FLORESTA);
  led(3, 0, VERDE_FLORESTA);
  led(3, 1, VERDE_FLORESTA);
  led(3, 6, VERDE_FLORESTA);
  led(3, 7, VERDE_FLORESTA);
  led(4, 0, VERDE_FLORESTA);
  led(4, 1, VERDE_FLORESTA);
  led(4, 2, VERDE_FLORESTA);
  led(4, 5, VERDE_FLORESTA);
  led(4, 6, VERDE_FLORESTA);
  led(4, 7, VERDE_FLORESTA);
  led(0, 3, AZUL_NOITE);
  led(0, 4, AZUL_NOITE);
  led(1, 2, AZUL_NOITE);
  led(1, 5, AZUL_NOITE);
  led(2, 0, AZUL_NOITE);
  led(2, 1, AZUL_NOITE);
  led(2, 6, AZUL_NOITE);
  led(2, 7, AZUL_NOITE);
  led(3, 2, AZUL_NOITE);
  led(3, 5, AZUL_NOITE);
  led(4, 3, AZUL_NOITE);
  led(4, 4, AZUL_NOITE);
  led(1, 3, VERDE_FLORESTA);
  led(2, 2, VERDE_FLORESTA);
  led(2, 4, VERDE_FLORESTA);
  led(3, 3, VERDE_FLORESTA);
  led(1, 4, AZUL_NOITE);
  led(2, 5, AZUL_NOITE);
  led(3, 4, AZUL_NOITE);
  led(2, 3, VERDE_CLARO);
  esperar(1000);

  led(1, 4, VERDE_FLORESTA);
  led(2, 3, VERDE_FLORESTA);
  led(2, 5, VERDE_FLORESTA);
  led(3, 4, VERDE_FLORESTA);
  led(1, 3, AZUL_NOITE);
  led(2, 2, AZUL_NOITE);
  led(3, 3, AZUL_NOITE);
  led(2, 4, VERDE_CLARO);
  esperar(1000);

  led(1, 3, VERDE_FLORESTA);
  led(2, 2, VERDE_FLORESTA);
  led(2, 4, VERDE_FLORESTA);
  led(3, 3, VERDE_FLORESTA);
  led(1, 4, AZUL_NOITE);
  led(2, 5, AZUL_NOITE);
  led(3, 4, AZUL_NOITE);
  led(2, 3, VERDE_CLARO);
  esperar(1000);

  led(1, 3, AZUL_NOITE);
  led(2, 2, AZUL_NOITE);
  led(3, 3, AZUL_NOITE);
  led(1, 4, VERDE_CLARO);
  led(2, 3, VERDE_CLARO);
  led(2, 5, VERDE_CLARO);
  led(3, 4, VERDE_CLARO);
  led(2, 4, VERDE_CLARO);
  esperar(1000);

  led(1, 4, AZUL_NOITE);
  led(2, 5, AZUL_NOITE);
  led(3, 4, AZUL_NOITE);
  led(1, 3, VERDE_CLARO);
  led(2, 2, VERDE_CLARO);
  led(2, 4, VERDE_CLARO);
  led(3, 3, VERDE_CLARO);
  led(2, 3, VERDE_CLARO);
  esperar(750);

  led(1, 3, AZUL_NOITE);
  led(2, 2, AZUL_NOITE);
  led(3, 3, AZUL_NOITE);
  led(1, 4, VERDE_CLARO);
  led(2, 3, VERDE_CLARO);
  led(2, 5, VERDE_CLARO);
  led(3, 4, VERDE_CLARO);
  led(2, 4, VERDE_CLARO);
  esperar(750);

  led(1, 4, AZUL_NOITE);
  led(2, 5, AZUL_NOITE);
  led(3, 4, AZUL_NOITE);
  led(1, 3, VERDE_CLARO);
  led(2, 2, VERDE_CLARO);
  led(2, 4, VERDE_CLARO);
  led(3, 3, VERDE_CLARO);
  led(2, 3, VERDE_CLARO);
  esperar(750);

  led(1, 3, AZUL_NOITE);
  led(2, 2, AZUL_NOITE);
  led(3, 3, AZUL_NOITE);
  led(1, 4, VERDE_CLARO);
  led(2, 3, VERDE_CLARO);
  led(2, 5, VERDE_CLARO);
  led(3, 4, VERDE_CLARO);
  led(2, 4, VERDE_CLARO);
  esperar(750);
}

// ======================================================================
//  setup() / loop() DO ARDUINO  (aqui: fwSetup / fwLoop)
// ======================================================================
void fwSetup() {
  println("DFPlayer Mini online.");
  dfVolume(15);
  println("Fim da funcao setup");
}

void fwLoop() {
  int snap;
  synchronized (trava) {          // "digitalRead" dos 4 pinos, de uma vez so
    snap = sensoresBits;
    leituras++;
  }
  int s1 = (snap >> 0) & 1;       // pino 9
  int s2 = (snap >> 1) & 1;       // pino 8
  int s3 = (snap >> 2) & 1;       // pino A0
  int s4 = (snap >> 3) & 1;       // pino A4

  if (s1 == 1 && s2 == 1 && s3 == 1 && s4 == 1) {
    acaoAtual = "proximo banco";
    banco++;
    if (banco == 6) banco = 0;
  }
  else if (s1 == 1 && s2 == 0 && s3 == 0 && s4 == 0) {
    acaoAtual = "melodica";
    animacaoMelodica();
  }
  else if (s1 == 0 && s2 == 1 && s3 == 0 && s4 == 0) {
    acaoAtual = "harmonica";
    animacaoHarmonica();
  }
  else if (s1 == 0 && s2 == 0 && s3 == 1 && s4 == 0) {
    acaoAtual = "ritmica";
    animacaoRitmica();
  }
  else if (s1 == 1 && s2 == 0 && s3 == 0 && s4 == 1) {
    acaoAtual = "parar";
    dfStop();
    apagarTudo();
  }
  else if (s1 == 0 && s2 == 1 && s3 == 1 && s4 == 1) {
    acaoAtual = "volume +";
    volume = volume + 2;
    if (volume >= 30) volume = 30;
  }
  else {
    acaoAtual = "(aguardando)";
  }
}

// ======================================================================
//  INTERFACE (Processing)
// ======================================================================
void setup() {
  size(1000, 620);
  surface.setTitle("Flauta Magica - simulacao do firmware (Java / Processing)");
  carregarSons();
  Thread t = new Thread(new Runnable() {
    public void run() {
      fwSetup();
      while (true) {
        fwLoop();
        esperar(LOOP_MS);
      }
    }
  }, "firmware");
  t.setDaemon(true);
  t.start();
}

// combinacoes de "toque": {S1, S2, S3, S4}
final String[] NOME_BOTAO = {"M  melodica", "H  harmonica", "R  ritmica", "P  parar", "B  proximo banco", "V  volume +"};
final int[][] COMBO_BOTAO = { {1,0,0,0}, {0,1,0,0}, {0,0,1,0}, {1,0,0,1}, {1,1,1,1}, {0,1,1,1} };

int bitsDe(int[] c) {
  return (c[0] << 0) | (c[1] << 1) | (c[2] << 2) | (c[3] << 3);
}

// Liga a combinacao so ate o firmware le-la uma vez (um "toque" curto).
void pulso(final int[] combo) {
  synchronized (trava) {
    if (pulsoEmCurso) return;
    pulsoEmCurso = true;
  }
  new Thread(new Runnable() {
    public void run() {
      int guardado;
      long r0;
      synchronized (trava) {
        guardado = sensoresBits;
        sensoresBits = bitsDe(combo);
        r0 = leituras;
      }
      while (true) {
        synchronized (trava) {
          if (leituras > r0) {
            sensoresBits = guardado;
            pulsoEmCurso = false;
            return;
          }
        }
        esperar(2);
      }
    }
  }, "toque").start();
}

void alternarSensor(int i) {
  synchronized (trava) {
    sensoresBits ^= (1 << i);
  }
}

void draw() {
  background(16, 18, 24);
  noStroke();
  fill(240);
  textSize(20);
  textAlign(LEFT, BASELINE);
  text("Flauta Magica  -  firmware reconstruido (simulacao em Java)", 20, 34);

  // ---- fitas ----
  textSize(12);
  for (int f = 0; f < 4; f++) {
    float y = 100 + f * 52;
    fill(170);
    text("fita" + (f + 1) + "  (pino " + PINO_FITA[f] + ")", 20, y + 4);
    for (int i = 0; i < NUM_LEDS; i++) {
      int c = fitas[f].tela[i];
      if (c == 0) fill(38, 40, 48); else fill((c >> 16) & 255, (c >> 8) & 255, c & 255);
      ellipse(190 + i * 19.5, y, 15, 15);
    }
  }
  fill(120);
  for (int col = 0; col < 5; col++) {
    text("col " + col, 190 + col * 8 * 19.5, 74);
  }

  // ---- estado ----
  fill(230);
  textSize(15);
  text("banco: " + banco + "     volume (variavel): " + volume + "     faixa tocando: " + (faixaAtual < 0 ? "-" : str(faixaAtual)) + "     acao: " + acaoAtual, 20, 340);

  // ---- sensores ----
  int bits;
  synchronized (trava) { bits = sensoresBits; }
  textSize(13);
  for (int i = 0; i < 4; i++) {
    float cx = 60 + i * 170;
    boolean on = ((bits >> i) & 1) == 1;
    fill(on ? color(80, 220, 120) : color(60, 64, 76));
    ellipse(cx, 400, 44, 44);
    fill(on ? 10 : 200);
    textAlign(CENTER, CENTER);
    text(on ? "1" : "0", cx, 399);
    fill(190);
    textAlign(LEFT, BASELINE);
    text(NOME_SENSOR[i] + "  [tecla " + (i + 1) + "]", cx + 30, 405);
  }

  // ---- botoes de toque ----
  for (int b = 0; b < 6; b++) {
    float bx = 20 + (b % 3) * 245;
    float by = 460 + (b / 3) * 60;
    fill(pulsoEmCurso ? color(50, 54, 66) : color(70, 90, 140));
    rect(bx, by, 230, 44, 8);
    fill(240);
    textAlign(LEFT, CENTER);
    text(NOME_BOTAO[b] + "   (" + COMBO_BOTAO[b][0] + "-" + COMBO_BOTAO[b][1] + "-" + COMBO_BOTAO[b][2] + "-" + COMBO_BOTAO[b][3] + ")", bx + 14, by + 22);
  }
  textAlign(LEFT, BASELINE);
  fill(120);
  text("Cada LED desenhado e um LED real da fita. Combinacoes nao listadas nao fazem nada (como no firmware).", 20, 602);
}

void mousePressed() {
  for (int i = 0; i < 4; i++) {
    if (dist(mouseX, mouseY, 60 + i * 170, 400) < 24) {
      alternarSensor(i);
      return;
    }
  }
  for (int b = 0; b < 6; b++) {
    float bx = 20 + (b % 3) * 245;
    float by = 460 + (b / 3) * 60;
    if (mouseX >= bx && mouseX <= bx + 230 && mouseY >= by && mouseY <= by + 44) {
      pulso(COMBO_BOTAO[b]);
      return;
    }
  }
}

void keyPressed() {
  if (key >= '1' && key <= '4') {
    alternarSensor(key - '1');
    return;
  }
  char k = Character.toLowerCase(key);
  if (k == 'm') pulso(COMBO_BOTAO[0]);
  else if (k == 'h') pulso(COMBO_BOTAO[1]);
  else if (k == 'r') pulso(COMBO_BOTAO[2]);
  else if (k == 'p') pulso(COMBO_BOTAO[3]);
  else if (k == 'b') pulso(COMBO_BOTAO[4]);
  else if (k == 'v') pulso(COMBO_BOTAO[5]);
}
