/*
 * =====================================================================
 *  FLAUTA MAGICA  -  codigo RECONSTRUIDO a partir do firmware da placa
 * =====================================================================
 *  Origem : dump da flash do Arduino (Copia.ino.hex, lido com AVRDUDESS)
 *  Placa  : Arduino Uno / Nano (ATmega328P, 16 MHz, bootloader Optiboot)
 *
 *  O QUE ESTE CODIGO E
 *   Foi obtido desmontando o firmware (linguagem de maquina AVR) e
 *   reescrevendo a logica em C++. Valores numericos (pinos, tabelas,
 *   cores, tempos, ordem das chamadas) vem DIRETO do binario.
 *   Nomes de variaveis/funcoes e comentarios NAO existem no binario:
 *   foram inventados aqui para facilitar a leitura.
 *
 *  BIBLIOTECAS (instalar pelo Gerenciador de Bibliotecas)
 *   - Adafruit NeoPixel
 *   - DFRobotDFPlayerMini        (>= 1.0.5, begin(stream, isACK, doReset))
 *   - SoftwareSerial             (ja vem com o Arduino)
 *
 *  HARDWARE
 *   - 4 fitas NeoPixel (WS2812, GRB, 800 kHz) de 40 LEDs
 *       fita1 = pino 13 | fita2 = pino 12 | fita3 = pino 11 | fita4 = pino 10
 *   - DFPlayer Mini: Arduino RX = pino 2, TX = pino 3 (9600 baud)
 *   - 4 sensores digitais: pinos 9, 8, A0, A4 (INPUT, sem pull-up)
 *   - Serial (USB) a 9600 baud, so para mensagens de depuracao
 *
 *  GRADE DE LEDS
 *   Os 40 LEDs de cada fita sao divididos em 5 colunas de 8 LEDs, cada
 *   coluna em 2 blocos de 4. Juntando as 4 fitas, cada coluna tem 8
 *   "linhas" (4 fitas x 2 blocos) => grade 5 x 8. A tabela 'mapa' diz,
 *   para cada (coluna, linha), qual fita e quais LEDs acender.
 * =====================================================================
 */

#include <SoftwareSerial.h>
#include <DFRobotDFPlayerMini.h>
#include <Adafruit_NeoPixel.h>

// ------------------------------------------------------------------
//  Hardware
// ------------------------------------------------------------------
#define NUM_LEDS 40

Adafruit_NeoPixel fita1(NUM_LEDS, 13, NEO_GRB + NEO_KHZ800);
Adafruit_NeoPixel fita2(NUM_LEDS, 12, NEO_GRB + NEO_KHZ800);
Adafruit_NeoPixel fita3(NUM_LEDS, 11, NEO_GRB + NEO_KHZ800);
Adafruit_NeoPixel fita4(NUM_LEDS, 10, NEO_GRB + NEO_KHZ800);

SoftwareSerial mySoftwareSerial(2, 3);   // RX, TX do DFPlayer
DFRobotDFPlayerMini myDFPlayer;

const int SENSOR1 = 9;
const int SENSOR2 = 8;
const int SENSOR3 = A0;
const int SENSOR4 = A4;

// ------------------------------------------------------------------
//  Estado
// ------------------------------------------------------------------
int volume = 5;   // so e alterado (ver loop); nesta versao NAO e enviado ao DFPlayer
int banco  = 0;   // 0..5 : "banco" de sons, avanca com a combinacao 1-1-1-1

// ------------------------------------------------------------------
//  Cores {R, G, B}   (valores lidos do binario)
// ------------------------------------------------------------------
// animacao melodica
const int AZUL[3]           = {0, 0, 255};
const int MAGENTA[3]        = {255, 0, 255};
const int VERDE_FOLHA[3]    = {69, 139, 19};
// animacao ritmica
const int LIMAO[3]          = {165, 218, 32};
const int AZUL_CEU[3]       = {43, 138, 226};
// animacao harmonica
const int AZUL_NOITE[3]     = {25, 25, 112};
const int VERDE_FLORESTA[3] = {34, 178, 34};
const int VERDE_CLARO[3]    = {105, 210, 30};

// ------------------------------------------------------------------
//  mapa[coluna][linha] = { fita (1..4), LED inicial, LED final }
//  (a 9a entrada de cada coluna e zero/nao usada)
// ------------------------------------------------------------------
const int mapa[5][9][3] = {
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

// ------------------------------------------------------------------
//  trilha[familia-1][banco] = numero do arquivo MP3 no cartao SD
//  familia 1 = melodica, 2 = harmonica, 3 = ritmica ; banco 5 => 0
// ------------------------------------------------------------------
const int trilha[3][6] = {
  {1, 2, 3, 4, 5, 0},
  {6, 7, 8, 9, 10, 0},
  {12, 13, 14, 15, 16, 0}
};

// ------------------------------------------------------------------
//  Funcoes auxiliares
// ------------------------------------------------------------------

// Pinta os LEDs [ini..fim] de uma fita e atualiza (show() a cada LED, como no original)
void pintarFaixa(Adafruit_NeoPixel &fita, int ini, int fim, const int cor[3]) {
  for (int i = ini; i <= fim; i++) {
    fita.setPixelColor(i, fita.Color(cor[0], cor[1], cor[2]));
    fita.show();
  }
}

// Acende a celula (coluna, linha) da grade com a cor dada
void led(int coluna, int linha, const int cor[3]) {
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

// Apaga as 4 fitas.
// (No firmware isso era feito chamando led(9, 0, ...), um indice fora da
//  tabela que cai no caso "apagar tudo". Aqui esta explicito e seguro.)
void apagarTudo() {
  for (int i = 0; i < NUM_LEDS; i++) {
    fita1.setPixelColor(i, 0); fita1.show();
    fita2.setPixelColor(i, 0); fita2.show();
    fita3.setPixelColor(i, 0); fita3.show();
    fita4.setPixelColor(i, 0); fita4.show();
  }
}

// Toca a faixa da familia x (1=melodica, 2=harmonica, 3=ritmica) no banco y
void tocar(int x, int y) {
  x = x - 1;
  Serial.println();
  Serial.println();
  Serial.print("x: ");
  Serial.println(x);
  Serial.print("y: ");
  Serial.println(y);
  myDFPlayer.play(trilha[x][y]);
  delay(200);
  Serial.println();
}

// ------------------------------------------------------------------
//  Animacoes (cada uma acompanha o som da sua familia)
// ------------------------------------------------------------------

// corpo da animacao melodica (executado 3 vezes seguidas)
void passosMelodica() {
  led(0, 1, AZUL);
  delay(83);

  led(4, 1, AZUL);
  delay(83);

  led(4, 5, AZUL);
  delay(83);

  led(2, 2, AZUL);
  delay(83);

  led(0, 3, AZUL);
  delay(83);

  led(4, 3, AZUL);
  delay(83);

  led(4, 0, AZUL);
  delay(83);

  led(4, 4, AZUL);
  delay(83);

  led(2, 6, AZUL);
  delay(83);

  led(0, 7, AZUL);
  delay(83);

  led(0, 5, AZUL);
  delay(83);

  led(4, 7, AZUL);
  delay(83);

  led(0, 0, MAGENTA);
  led(1, 0, MAGENTA);
  delay(41);

  led(1, 1, MAGENTA);
  led(2, 1, MAGENTA);
  delay(41);

  led(0, 2, MAGENTA);
  led(1, 2, MAGENTA);
  delay(41);

  led(1, 3, MAGENTA);
  led(2, 3, MAGENTA);
  delay(41);

  led(0, 4, MAGENTA);
  led(1, 4, MAGENTA);
  delay(41);

  led(1, 5, MAGENTA);
  led(2, 5, MAGENTA);
  delay(41);

  led(0, 6, MAGENTA);
  led(1, 6, MAGENTA);
  delay(41);

  led(1, 7, MAGENTA);
  led(2, 7, MAGENTA);
  delay(41);

  led(3, 7, VERDE_FOLHA);
  delay(41);

  led(3, 6, VERDE_FOLHA);
  led(4, 6, VERDE_FOLHA);
  delay(41);

  led(3, 5, VERDE_FOLHA);
  delay(41);

  led(2, 4, VERDE_FOLHA);
  led(3, 4, VERDE_FOLHA);
  delay(41);

  led(3, 3, VERDE_FOLHA);
  delay(41);

  led(3, 2, VERDE_FOLHA);
  led(4, 2, VERDE_FOLHA);
  delay(41);

  led(3, 1, VERDE_FOLHA);
  delay(41);

  led(2, 0, VERDE_FOLHA);
  led(3, 0, VERDE_FOLHA);
}

void animacaoMelodica() {
  for (int rep = 0; rep < 3; rep++) {
    apagarTudo();
    if (rep == 0) tocar(1, banco);   // o som toca so na 1a repeticao
    passosMelodica();
    delay(41);
  }
}

// alterna duas fases de cor em 4 celulas (efeito de "pulso" ritmico)
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
      if (compasso == 3 && tempo == 7) break;      // ultimo tempo: sem espera
      delay(tempo == 7 ? 50 : 100);
    }
  }
}

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
  delay(1000);

  led(1, 4, VERDE_FLORESTA);
  led(2, 3, VERDE_FLORESTA);
  led(2, 5, VERDE_FLORESTA);
  led(3, 4, VERDE_FLORESTA);
  led(1, 3, AZUL_NOITE);
  led(2, 2, AZUL_NOITE);
  led(3, 3, AZUL_NOITE);
  led(2, 4, VERDE_CLARO);
  delay(1000);

  led(1, 3, VERDE_FLORESTA);
  led(2, 2, VERDE_FLORESTA);
  led(2, 4, VERDE_FLORESTA);
  led(3, 3, VERDE_FLORESTA);
  led(1, 4, AZUL_NOITE);
  led(2, 5, AZUL_NOITE);
  led(3, 4, AZUL_NOITE);
  led(2, 3, VERDE_CLARO);
  delay(1000);

  led(1, 3, AZUL_NOITE);
  led(2, 2, AZUL_NOITE);
  led(3, 3, AZUL_NOITE);
  led(1, 4, VERDE_CLARO);
  led(2, 3, VERDE_CLARO);
  led(2, 5, VERDE_CLARO);
  led(3, 4, VERDE_CLARO);
  led(2, 4, VERDE_CLARO);
  delay(1000);

  led(1, 4, AZUL_NOITE);
  led(2, 5, AZUL_NOITE);
  led(3, 4, AZUL_NOITE);
  led(1, 3, VERDE_CLARO);
  led(2, 2, VERDE_CLARO);
  led(2, 4, VERDE_CLARO);
  led(3, 3, VERDE_CLARO);
  led(2, 3, VERDE_CLARO);
  delay(750);

  led(1, 3, AZUL_NOITE);
  led(2, 2, AZUL_NOITE);
  led(3, 3, AZUL_NOITE);
  led(1, 4, VERDE_CLARO);
  led(2, 3, VERDE_CLARO);
  led(2, 5, VERDE_CLARO);
  led(3, 4, VERDE_CLARO);
  led(2, 4, VERDE_CLARO);
  delay(750);

  led(1, 4, AZUL_NOITE);
  led(2, 5, AZUL_NOITE);
  led(3, 4, AZUL_NOITE);
  led(1, 3, VERDE_CLARO);
  led(2, 2, VERDE_CLARO);
  led(2, 4, VERDE_CLARO);
  led(3, 3, VERDE_CLARO);
  led(2, 3, VERDE_CLARO);
  delay(750);

  led(1, 3, AZUL_NOITE);
  led(2, 2, AZUL_NOITE);
  led(3, 3, AZUL_NOITE);
  led(1, 4, VERDE_CLARO);
  led(2, 3, VERDE_CLARO);
  led(2, 5, VERDE_CLARO);
  led(3, 4, VERDE_CLARO);
  led(2, 4, VERDE_CLARO);
  delay(750);
}

// ------------------------------------------------------------------
//  setup / loop
// ------------------------------------------------------------------
void setup() {
  fita1.begin();
  fita2.begin();
  fita3.begin();
  fita4.begin();

  Serial.begin(9600);

  pinMode(SENSOR1, INPUT);
  pinMode(SENSOR2, INPUT);
  pinMode(SENSOR3, INPUT);
  pinMode(SENSOR4, INPUT);

  mySoftwareSerial.begin(9600);
  myDFPlayer.begin(mySoftwareSerial, false);   // sem ACK, com reset
  Serial.println(F("DFPlayer Mini online."));
  myDFPlayer.volume(15);
  Serial.println("Fim da funcao setup");
}

void loop() {
  int s1 = digitalRead(SENSOR1);   // pino 9
  int s2 = digitalRead(SENSOR2);   // pino 8
  int s3 = digitalRead(SENSOR3);   // pino A0
  int s4 = digitalRead(SENSOR4);   // pino A4

  if (s1 == 1 && s2 == 1 && s3 == 1 && s4 == 1) {
    // 1-1-1-1 : proximo banco de sons (0..5, volta ao 0)
    banco++;
    if (banco == 6) banco = 0;
  }
  else if (s1 == 1 && s2 == 0 && s3 == 0 && s4 == 0) {
    // 1-0-0-0 : familia melodica
    animacaoMelodica();
  }
  else if (s1 == 0 && s2 == 1 && s3 == 0 && s4 == 0) {
    // 0-1-0-0 : familia harmonica
    animacaoHarmonica();
  }
  else if (s1 == 0 && s2 == 0 && s3 == 1 && s4 == 0) {
    // 0-0-1-0 : familia ritmica
    animacaoRitmica();
  }
  else if (s1 == 1 && s2 == 0 && s3 == 0 && s4 == 1) {
    // 1-0-0-1 : parar som e apagar luzes
    myDFPlayer.stop();
    apagarTudo();
  }
  else if (s1 == 0 && s2 == 1 && s3 == 1 && s4 == 1) {
    // 0-1-1-1 : "volume +" (so altera a variavel; nao chega ao DFPlayer)
    volume = volume + 2;
    if (volume >= 30) volume = 30;
  }
  // qualquer outra combinacao: nada acontece
}