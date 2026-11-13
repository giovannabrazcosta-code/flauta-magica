/*
 * =====================================================================
 *  FLAUTA MAGICA  -  versao em JAVASCRIPT (navegador) do firmware
 * =====================================================================
 *  Mesma logica da versao Java (FlautaMagicaJava.pde), que por sua vez
 *  e a reescrita do firmware do Arduino recuperado do dump da placa.
 *  NAO e o codigo-fonte original: nomes e comentarios foram escritos na
 *  reconstrucao. O firmware exato esta em 1_firmware_original_exato.
 *
 *  COMO USAR
 *   1) Abra index.html no navegador (Chrome ou Edge).
 *   2) Clique em "Iniciar" (o navegador so libera o som depois de um clique).
 *   3) Os .wav sao lidos de ../data (pasta data ao lado desta pasta).
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
 *     no binario (so o numero da faixa). O mapeamento abaixo e uma suposicao.
 * =====================================================================
 */
"use strict";

// ======================================================================
//  "HARDWARE" SIMULADO
// ======================================================================
const NUM_LEDS = 40;
const PINO_FITA = [13, 12, 11, 10];
const SHOW_MS = 1;    // um show() de 40 LEDs leva ~1,2 ms no hardware real
const LOOP_MS = 1;    // duracao simulada de uma passada do loop()

function esperar(ms) {                 // = delay() do Arduino
  return ms > 0 ? new Promise(function (r) { setTimeout(r, ms); }) : Promise.resolve();
}

// setTimeout tem piso de ~4 ms; o custo dos show() e somado e gasto em lotes.
let dividaMs = 0;
async function gastarTempo(ms) {
  dividaMs += ms;
  if (dividaMs >= 4) {
    const t = dividaMs;
    dividaMs = 0;
    await esperar(t);
  }
}

// Equivalente da Adafruit_NeoPixel: setPixelColor escreve no buffer,
// show() "envia" o buffer para a fita (aqui: copia para o que e desenhado).
class Fita {
  constructor() {
    this.buffer = new Array(NUM_LEDS).fill(0);
    this.tela = new Array(NUM_LEDS).fill(0);
  }
  Color(r, g, b) {
    return ((r & 255) << 16) | ((g & 255) << 8) | (b & 255);
  }
  setPixelColor(i, cor) {
    if (i >= 0 && i < NUM_LEDS) this.buffer[i] = cor;
  }
  async show() {
    this.tela = this.buffer.slice();
    await gastarTempo(SHOW_MS);
  }
}

const fita1 = new Fita();
const fita2 = new Fita();
const fita3 = new Fita();
const fita4 = new Fita();
const fitas = [fita1, fita2, fita3, fita4];

// Sensores: bit 0 = pino 9, bit 1 = pino 8, bit 2 = A0, bit 3 = A4
const NOME_SENSOR = ["S1 (pino 9)", "S2 (pino 8)", "S3 (A0)", "S4 (A4)"];
let sensoresBits = 0;
let leituras = 0;
let pulsoEmCurso = false;

// ======================================================================
//  DFPLAYER SIMULADO (faixa -> arquivo .wav)
// ======================================================================
const PASTA_SONS = "../data/";
const som = new Array(17).fill(null);
const ARQUIVO_FAIXA = new Array(17).fill(null);
let somAtual = null;
let volumeDF = 15;        // 0..30, como no DFPlayer
let faixaAtual = -1;

function dfPlay(n) {
  console.log("[DFPlayer] play(" + n + ")");
  if (somAtual) { somAtual.pause(); somAtual.currentTime = 0; }
  somAtual = (n >= 0 && n < som.length) ? som[n] : null;
  faixaAtual = n;
  if (somAtual) {
    somAtual.volume = volumeDF / 30;
    somAtual.currentTime = 0;
    somAtual.play().catch(function (e) { console.warn("[DFPlayer] nao consegui tocar a faixa " + n + ": " + e); });
  } else {
    console.log("[DFPlayer] (sem arquivo .wav associado a faixa " + n + ")");
  }
}

function dfStop() {
  console.log("[DFPlayer] stop()");
  if (somAtual) { somAtual.pause(); somAtual.currentTime = 0; }
  faixaAtual = -1;
}

function dfVolume(v) {
  console.log("[DFPlayer] volume(" + v + ")");
  volumeDF = v;
  if (somAtual) somAtual.volume = volumeDF / 30;
}

function carregarSons() {
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
  for (let n = 0; n < ARQUIVO_FAIXA.length; n++) {
    if (ARQUIVO_FAIXA[n] === null) continue;
    const a = new Audio(PASTA_SONS + encodeURIComponent(ARQUIVO_FAIXA[n]));
    a.preload = "auto";
    som[n] = a;
  }
}

// ======================================================================
//  ESTADO DO FIRMWARE
// ======================================================================
let volume = 5;   // so e alterado; nunca enviado ao DFPlayer (como no original)
let banco = 0;                     // 0..5
let acaoAtual = "(aguardando)";

// cores {R, G, B}
const AZUL           = [0, 0, 255];
const MAGENTA        = [255, 0, 255];
const VERDE_FOLHA    = [69, 139, 19];
const LIMAO          = [165, 218, 32];
const AZUL_CEU       = [43, 138, 226];
const AZUL_NOITE     = [25, 25, 112];
const VERDE_FLORESTA = [34, 178, 34];
const VERDE_CLARO    = [105, 210, 30];

// mapa[coluna][linha] = [ fita (1..4), LED inicial, LED final ]
const mapa = [
  [ // coluna 0
    [1, 4, 7],
    [1, 0, 3],
    [2, 4, 7],
    [2, 0, 3],
    [3, 4, 7],
    [3, 0, 3],
    [4, 0, 3],
    [4, 4, 7],
    [0, 0, 0]
  ],
  [ // coluna 1
    [1, 8, 11],
    [1, 12, 15],
    [2, 8, 11],
    [2, 12, 15],
    [3, 8, 11],
    [3, 12, 15],
    [4, 12, 15],
    [4, 8, 11],
    [0, 0, 0]
  ],
  [ // coluna 2
    [1, 20, 23],
    [1, 16, 19],
    [2, 20, 23],
    [2, 16, 19],
    [3, 20, 23],
    [3, 16, 19],
    [4, 16, 19],
    [4, 20, 23],
    [0, 0, 0]
  ],
  [ // coluna 3
    [1, 24, 27],
    [1, 28, 31],
    [2, 24, 27],
    [2, 28, 31],
    [3, 24, 27],
    [3, 28, 31],
    [4, 28, 31],
    [4, 24, 27],
    [0, 0, 0]
  ],
  [ // coluna 4
    [1, 36, 39],
    [1, 32, 35],
    [2, 36, 39],
    [2, 32, 35],
    [3, 36, 39],
    [3, 32, 35],
    [4, 32, 35],
    [4, 36, 39],
    [0, 0, 0]
  ]
];

// trilha[familia-1][banco] = numero da faixa no cartao SD
const trilha = [
  [1, 2, 3, 4, 5, 0],
  [6, 7, 8, 9, 10, 0],
  [12, 13, 14, 15, 16, 0]
];

// ======================================================================
//  FUNCOES DO FIRMWARE (traducao direta do C++ do Arduino)
// ======================================================================
async function pintarFaixa(fita, ini, fim, cor) {
  for (let i = ini; i <= fim; i++) {
    fita.setPixelColor(i, fita.Color(cor[0], cor[1], cor[2]));
    await fita.show();
  }
}

async function led(coluna, linha, cor) {
  const fita = mapa[coluna][linha][0];
  const ini  = mapa[coluna][linha][1];
  const fim  = mapa[coluna][linha][2];
  switch (fita) {
    case 1: await pintarFaixa(fita1, ini, fim, cor); break;
    case 2: await pintarFaixa(fita2, ini, fim, cor); break;
    case 3: await pintarFaixa(fita3, ini, fim, cor); break;
    case 4: await pintarFaixa(fita4, ini, fim, cor); break;
  }
}

async function apagarTudo() {
  for (let i = 0; i < NUM_LEDS; i++) {
    fita1.setPixelColor(i, 0); await fita1.show();
    fita2.setPixelColor(i, 0); await fita2.show();
    fita3.setPixelColor(i, 0); await fita3.show();
    fita4.setPixelColor(i, 0); await fita4.show();
  }
}

async function tocar(x, y) {
  x = x - 1;
  console.log("x: " + x);
  console.log("y: " + y);
  dfPlay(trilha[x][y]);
  await esperar(200);
}

// ---- animacao melodica ----
async function passosMelodica() {
  await led(0, 1, AZUL);
  await esperar(83);

  await led(4, 1, AZUL);
  await esperar(83);

  await led(4, 5, AZUL);
  await esperar(83);

  await led(2, 2, AZUL);
  await esperar(83);

  await led(0, 3, AZUL);
  await esperar(83);

  await led(4, 3, AZUL);
  await esperar(83);

  await led(4, 0, AZUL);
  await esperar(83);

  await led(4, 4, AZUL);
  await esperar(83);

  await led(2, 6, AZUL);
  await esperar(83);

  await led(0, 7, AZUL);
  await esperar(83);

  await led(0, 5, AZUL);
  await esperar(83);

  await led(4, 7, AZUL);
  await esperar(83);

  await led(0, 0, MAGENTA);
  await led(1, 0, MAGENTA);
  await esperar(41);

  await led(1, 1, MAGENTA);
  await led(2, 1, MAGENTA);
  await esperar(41);

  await led(0, 2, MAGENTA);
  await led(1, 2, MAGENTA);
  await esperar(41);

  await led(1, 3, MAGENTA);
  await led(2, 3, MAGENTA);
  await esperar(41);

  await led(0, 4, MAGENTA);
  await led(1, 4, MAGENTA);
  await esperar(41);

  await led(1, 5, MAGENTA);
  await led(2, 5, MAGENTA);
  await esperar(41);

  await led(0, 6, MAGENTA);
  await led(1, 6, MAGENTA);
  await esperar(41);

  await led(1, 7, MAGENTA);
  await led(2, 7, MAGENTA);
  await esperar(41);

  await led(3, 7, VERDE_FOLHA);
  await esperar(41);

  await led(3, 6, VERDE_FOLHA);
  await led(4, 6, VERDE_FOLHA);
  await esperar(41);

  await led(3, 5, VERDE_FOLHA);
  await esperar(41);

  await led(2, 4, VERDE_FOLHA);
  await led(3, 4, VERDE_FOLHA);
  await esperar(41);

  await led(3, 3, VERDE_FOLHA);
  await esperar(41);

  await led(3, 2, VERDE_FOLHA);
  await led(4, 2, VERDE_FOLHA);
  await esperar(41);

  await led(3, 1, VERDE_FOLHA);
  await esperar(41);

  await led(2, 0, VERDE_FOLHA);
  await led(3, 0, VERDE_FOLHA);
}

async function animacaoMelodica() {
  for (let rep = 0; rep < 3; rep++) {
    await apagarTudo();
    if (rep === 0) await tocar(1, banco);
    await passosMelodica();
    await esperar(41);
  }
}

// ---- animacao ritmica ----
async function piscaFase1() {
  await led(0, 6, LIMAO);
  await led(0, 7, LIMAO);
  await led(2, 6, AZUL_CEU);
  await led(3, 7, AZUL_CEU);
}

async function piscaFase2() {
  await led(0, 6, AZUL_CEU);
  await led(0, 7, AZUL_CEU);
  await led(2, 6, LIMAO);
  await led(3, 7, LIMAO);
}

async function animacaoRitmica() {
  await apagarTudo();
  await tocar(3, banco);

  // desenho de fundo
  await led(0, 2, AZUL_CEU);
  await led(0, 3, AZUL_CEU);
  await led(0, 4, AZUL_CEU);
  await led(0, 5, AZUL_CEU);
  await led(0, 6, AZUL_CEU);
  await led(0, 7, AZUL_CEU);
  await led(1, 0, AZUL_CEU);
  await led(1, 1, AZUL_CEU);
  await led(1, 3, AZUL_CEU);
  await led(1, 6, AZUL_CEU);
  await led(1, 7, AZUL_CEU);
  await led(2, 0, AZUL_CEU);
  await led(2, 1, AZUL_CEU);
  await led(2, 2, AZUL_CEU);
  await led(2, 4, AZUL_CEU);
  await led(2, 5, AZUL_CEU);
  await led(2, 7, AZUL_CEU);
  await led(3, 0, AZUL_CEU);
  await led(3, 1, AZUL_CEU);
  await led(3, 3, AZUL_CEU);
  await led(3, 5, AZUL_CEU);
  await led(3, 6, AZUL_CEU);
  await led(4, 2, AZUL_CEU);
  await led(4, 3, AZUL_CEU);
  await led(4, 4, AZUL_CEU);
  await led(4, 6, AZUL_CEU);
  await led(4, 7, AZUL_CEU);
  await led(0, 0, LIMAO);
  await led(0, 1, LIMAO);
  await led(1, 2, LIMAO);
  await led(1, 4, LIMAO);
  await led(1, 5, LIMAO);
  await led(2, 3, LIMAO);
  await led(2, 6, LIMAO);
  await led(3, 2, LIMAO);
  await led(3, 4, LIMAO);
  await led(3, 7, LIMAO);
  await led(4, 0, LIMAO);
  await led(4, 1, LIMAO);
  await led(4, 5, LIMAO);

  // 4 compassos de 8 tempos alternando as duas fases
  for (let compasso = 0; compasso < 4; compasso++) {
    for (let tempo = 0; tempo < 8; tempo++) {
      if (tempo % 2 === 0) await piscaFase1(); else await piscaFase2();
      if (compasso === 3 && tempo === 7) break;
      await esperar(tempo === 7 ? 50 : 100);
    }
  }
}

// ---- animacao harmonica ----
async function animacaoHarmonica() {
  await apagarTudo();
  await tocar(2, banco);

  await led(0, 0, VERDE_FLORESTA);
  await led(0, 1, VERDE_FLORESTA);
  await led(0, 2, VERDE_FLORESTA);
  await led(0, 5, VERDE_FLORESTA);
  await led(0, 6, VERDE_FLORESTA);
  await led(0, 7, VERDE_FLORESTA);
  await led(1, 0, VERDE_FLORESTA);
  await led(1, 1, VERDE_FLORESTA);
  await led(1, 6, VERDE_FLORESTA);
  await led(1, 7, VERDE_FLORESTA);
  await led(3, 0, VERDE_FLORESTA);
  await led(3, 1, VERDE_FLORESTA);
  await led(3, 6, VERDE_FLORESTA);
  await led(3, 7, VERDE_FLORESTA);
  await led(4, 0, VERDE_FLORESTA);
  await led(4, 1, VERDE_FLORESTA);
  await led(4, 2, VERDE_FLORESTA);
  await led(4, 5, VERDE_FLORESTA);
  await led(4, 6, VERDE_FLORESTA);
  await led(4, 7, VERDE_FLORESTA);
  await led(0, 3, AZUL_NOITE);
  await led(0, 4, AZUL_NOITE);
  await led(1, 2, AZUL_NOITE);
  await led(1, 5, AZUL_NOITE);
  await led(2, 0, AZUL_NOITE);
  await led(2, 1, AZUL_NOITE);
  await led(2, 6, AZUL_NOITE);
  await led(2, 7, AZUL_NOITE);
  await led(3, 2, AZUL_NOITE);
  await led(3, 5, AZUL_NOITE);
  await led(4, 3, AZUL_NOITE);
  await led(4, 4, AZUL_NOITE);
  await led(1, 3, VERDE_FLORESTA);
  await led(2, 2, VERDE_FLORESTA);
  await led(2, 4, VERDE_FLORESTA);
  await led(3, 3, VERDE_FLORESTA);
  await led(1, 4, AZUL_NOITE);
  await led(2, 5, AZUL_NOITE);
  await led(3, 4, AZUL_NOITE);
  await led(2, 3, VERDE_CLARO);
  await esperar(1000);

  await led(1, 4, VERDE_FLORESTA);
  await led(2, 3, VERDE_FLORESTA);
  await led(2, 5, VERDE_FLORESTA);
  await led(3, 4, VERDE_FLORESTA);
  await led(1, 3, AZUL_NOITE);
  await led(2, 2, AZUL_NOITE);
  await led(3, 3, AZUL_NOITE);
  await led(2, 4, VERDE_CLARO);
  await esperar(1000);

  await led(1, 3, VERDE_FLORESTA);
  await led(2, 2, VERDE_FLORESTA);
  await led(2, 4, VERDE_FLORESTA);
  await led(3, 3, VERDE_FLORESTA);
  await led(1, 4, AZUL_NOITE);
  await led(2, 5, AZUL_NOITE);
  await led(3, 4, AZUL_NOITE);
  await led(2, 3, VERDE_CLARO);
  await esperar(1000);

  await led(1, 3, AZUL_NOITE);
  await led(2, 2, AZUL_NOITE);
  await led(3, 3, AZUL_NOITE);
  await led(1, 4, VERDE_CLARO);
  await led(2, 3, VERDE_CLARO);
  await led(2, 5, VERDE_CLARO);
  await led(3, 4, VERDE_CLARO);
  await led(2, 4, VERDE_CLARO);
  await esperar(1000);

  await led(1, 4, AZUL_NOITE);
  await led(2, 5, AZUL_NOITE);
  await led(3, 4, AZUL_NOITE);
  await led(1, 3, VERDE_CLARO);
  await led(2, 2, VERDE_CLARO);
  await led(2, 4, VERDE_CLARO);
  await led(3, 3, VERDE_CLARO);
  await led(2, 3, VERDE_CLARO);
  await esperar(750);

  await led(1, 3, AZUL_NOITE);
  await led(2, 2, AZUL_NOITE);
  await led(3, 3, AZUL_NOITE);
  await led(1, 4, VERDE_CLARO);
  await led(2, 3, VERDE_CLARO);
  await led(2, 5, VERDE_CLARO);
  await led(3, 4, VERDE_CLARO);
  await led(2, 4, VERDE_CLARO);
  await esperar(750);

  await led(1, 4, AZUL_NOITE);
  await led(2, 5, AZUL_NOITE);
  await led(3, 4, AZUL_NOITE);
  await led(1, 3, VERDE_CLARO);
  await led(2, 2, VERDE_CLARO);
  await led(2, 4, VERDE_CLARO);
  await led(3, 3, VERDE_CLARO);
  await led(2, 3, VERDE_CLARO);
  await esperar(750);

  await led(1, 3, AZUL_NOITE);
  await led(2, 2, AZUL_NOITE);
  await led(3, 3, AZUL_NOITE);
  await led(1, 4, VERDE_CLARO);
  await led(2, 3, VERDE_CLARO);
  await led(2, 5, VERDE_CLARO);
  await led(3, 4, VERDE_CLARO);
  await led(2, 4, VERDE_CLARO);
  await esperar(750);
}

// ======================================================================
//  setup() / loop() DO ARDUINO  (aqui: fwSetup / fwLoop)
// ======================================================================
function fwSetup() {
  console.log("DFPlayer Mini online.");
  dfVolume(15);
  console.log("Fim da funcao setup");
}

async function fwLoop() {
  const snap = sensoresBits;      // "digitalRead" dos 4 pinos, de uma vez so
  leituras++;
  const s1 = (snap >> 0) & 1;     // pino 9
  const s2 = (snap >> 1) & 1;     // pino 8
  const s3 = (snap >> 2) & 1;     // pino A0
  const s4 = (snap >> 3) & 1;     // pino A4

  if (s1 === 1 && s2 === 1 && s3 === 1 && s4 === 1) {
    acaoAtual = "proximo banco";
    banco++;
    if (banco === 6) banco = 0;
  }
  else if (s1 === 1 && s2 === 0 && s3 === 0 && s4 === 0) {
    acaoAtual = "melodica";
    await animacaoMelodica();
  }
  else if (s1 === 0 && s2 === 1 && s3 === 0 && s4 === 0) {
    acaoAtual = "harmonica";
    await animacaoHarmonica();
  }
  else if (s1 === 0 && s2 === 0 && s3 === 1 && s4 === 0) {
    acaoAtual = "ritmica";
    await animacaoRitmica();
  }
  else if (s1 === 1 && s2 === 0 && s3 === 0 && s4 === 1) {
    acaoAtual = "parar";
    dfStop();
    await apagarTudo();
  }
  else if (s1 === 0 && s2 === 1 && s3 === 1 && s4 === 1) {
    acaoAtual = "volume +";
    volume = volume + 2;
    if (volume >= 30) volume = 30;
  }
  else {
    acaoAtual = "(aguardando)";
  }
}

let iniciado = false;
async function iniciar() {
  if (iniciado) return;
  iniciado = true;
  fwSetup();
  while (true) {
    await fwLoop();
    await esperar(LOOP_MS);
  }
}

// ======================================================================
//  INTERFACE
// ======================================================================
const NOME_BOTAO = ["M  melodica", "H  harmonica", "R  ritmica", "P  parar", "B  proximo banco", "V  volume +"];
const COMBO_BOTAO = [[1, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 0], [1, 0, 0, 1], [1, 1, 1, 1], [0, 1, 1, 1]];

function bitsDe(c) {
  return (c[0] << 0) | (c[1] << 1) | (c[2] << 2) | (c[3] << 3);
}

// Liga a combinacao so ate o firmware le-la uma vez (um "toque" curto).
function pulso(combo) {
  if (!iniciado || pulsoEmCurso) return;
  pulsoEmCurso = true;
  const guardado = sensoresBits;
  sensoresBits = bitsDe(combo);
  const r0 = leituras;
  (function aguardar() {
    if (leituras > r0) {
      sensoresBits = guardado;
      pulsoEmCurso = false;
    } else {
      setTimeout(aguardar, 2);
    }
  })();
}

function alternarSensor(i) {
  if (!iniciado) return;
  sensoresBits ^= (1 << i);
}

const canvas = document.getElementById("tela");
const ctx = canvas.getContext("2d");

function desenhar() {
  ctx.fillStyle = "#101218";
  ctx.fillRect(0, 0, canvas.width, canvas.height);
  ctx.textAlign = "left";
  ctx.textBaseline = "alphabetic";
  ctx.fillStyle = "#f0f0f0";
  ctx.font = "20px sans-serif";
  ctx.fillText("Flauta Magica  -  firmware reconstruido (simulacao em JavaScript)", 20, 34);

  // ---- fitas ----
  ctx.font = "12px sans-serif";
  for (let f = 0; f < 4; f++) {
    const y = 100 + f * 52;
    ctx.fillStyle = "#aaaaaa";
    ctx.fillText("fita" + (f + 1) + "  (pino " + PINO_FITA[f] + ")", 20, y + 4);
    for (let i = 0; i < NUM_LEDS; i++) {
      const c = fitas[f].tela[i];
      ctx.fillStyle = (c === 0) ? "#262830" : "rgb(" + ((c >> 16) & 255) + "," + ((c >> 8) & 255) + "," + (c & 255) + ")";
      ctx.beginPath();
      ctx.arc(190 + i * 19.5, y, 7.5, 0, Math.PI * 2);
      ctx.fill();
    }
  }
  ctx.fillStyle = "#787878";
  for (let col = 0; col < 5; col++) {
    ctx.fillText("col " + col, 190 + col * 8 * 19.5, 74);
  }

  // ---- estado ----
  ctx.fillStyle = "#e6e6e6";
  ctx.font = "15px sans-serif";
  ctx.fillText("banco: " + banco + "     volume (variavel): " + volume +
    "     faixa tocando: " + (faixaAtual < 0 ? "-" : faixaAtual) + "     acao: " + acaoAtual, 20, 340);

  // ---- sensores ----
  ctx.font = "13px sans-serif";
  for (let i = 0; i < 4; i++) {
    const cx = 60 + i * 235;
    const on = ((sensoresBits >> i) & 1) === 1;
    ctx.fillStyle = on ? "#50dc78" : "#3c404c";
    ctx.beginPath();
    ctx.arc(cx, 400, 22, 0, Math.PI * 2);
    ctx.fill();
    ctx.fillStyle = on ? "#0a0a0a" : "#c8c8c8";
    ctx.textAlign = "center";
    ctx.textBaseline = "middle";
    ctx.fillText(on ? "1" : "0", cx, 400);
    ctx.fillStyle = "#bebebe";
    ctx.textAlign = "left";
    ctx.textBaseline = "alphabetic";
    ctx.fillText(NOME_SENSOR[i] + "  [tecla " + (i + 1) + "]", cx + 30, 405);
  }

  // ---- botoes de toque ----
  for (let b = 0; b < 6; b++) {
    const bx = 20 + (b % 3) * 245;
    const by = 460 + Math.floor(b / 3) * 60;
    ctx.fillStyle = pulsoEmCurso ? "#323642" : "#465a8c";
    ctx.beginPath();
    ctx.roundRect(bx, by, 230, 44, 8);
    ctx.fill();
    ctx.fillStyle = "#f0f0f0";
    ctx.textBaseline = "middle";
    ctx.fillText(NOME_BOTAO[b] + "   (" + COMBO_BOTAO[b].join("-") + ")", bx + 14, by + 22);
  }
  ctx.textBaseline = "alphabetic";
  ctx.fillStyle = "#787878";
  ctx.fillText("Cada LED desenhado e um LED real da fita. Combinacoes nao listadas nao fazem nada (como no firmware).", 20, 602);

  if (!iniciado) {
    ctx.fillStyle = "rgba(16,18,24,0.78)";
    ctx.fillRect(0, 0, canvas.width, canvas.height);
    ctx.fillStyle = "#f0f0f0";
    ctx.font = "20px sans-serif";
    ctx.textAlign = "center";
    ctx.fillText("Clique em \"Iniciar\" para ligar a flauta (o navegador so libera o som depois de um clique)", canvas.width / 2, canvas.height / 2 - 40);
    ctx.textAlign = "left";
  }
  requestAnimationFrame(desenhar);
}

canvas.addEventListener("pointerdown", function (e) {
  if (!iniciado) return;
  const r = canvas.getBoundingClientRect();
  const mx = (e.clientX - r.left) * canvas.width / r.width;
  const my = (e.clientY - r.top) * canvas.height / r.height;
  for (let i = 0; i < 4; i++) {
    if (Math.hypot(mx - (60 + i * 235), my - 400) < 24) {
      alternarSensor(i);
      return;
    }
  }
  for (let b = 0; b < 6; b++) {
    const bx = 20 + (b % 3) * 245;
    const by = 460 + Math.floor(b / 3) * 60;
    if (mx >= bx && mx <= bx + 230 && my >= by && my <= by + 44) {
      pulso(COMBO_BOTAO[b]);
      return;
    }
  }
});

window.addEventListener("keydown", function (e) {
  if (e.ctrlKey || e.metaKey || e.altKey) return;
  if (e.key >= "1" && e.key <= "4") {
    alternarSensor(e.key.charCodeAt(0) - "1".charCodeAt(0));
    return;
  }
  const k = e.key.toLowerCase();
  const i = "mhrpbv".indexOf(k);
  if (k.length === 1 && i >= 0) pulso(COMBO_BOTAO[i]);
});

carregarSons();
desenhar();
const botaoIniciar = document.getElementById("iniciar");
if (botaoIniciar) {
  botaoIniciar.addEventListener("click", function () {
    botaoIniciar.style.display = "none";
    iniciar();
  });
}
