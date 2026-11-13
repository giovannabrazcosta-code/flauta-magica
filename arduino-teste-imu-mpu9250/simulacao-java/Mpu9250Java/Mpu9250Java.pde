/*
 * =====================================================================
 *  PROGRAMA DO HEX COLADO NA CONVERSA  -  versao em JAVA (Processing 4)
 * =====================================================================
 *  O hex que voce colou na conversa contem um sketch que le um sensor
 *  inercial MPU9250 (acelerometro + giroscopio + magnetometro + temperatura)
 *  com a biblioteca da Bolder Flight Systems e imprime os valores na Serial.
 *  Ele NAO tem som nem LEDs. (Os primeiros 1 KB da flash foram regravados
 *  por um sketch Blink, entao o inicio do programa original se perdeu, mas
 *  toda a logica do sketch esta no trecho que sobrou.)
 *
 *  O QUE ESTE JAVA FAZ (tudo verificado no desassembly do hex):
 *   setup():
 *     Serial.begin(115200)
 *     inicializa o IMU (checa os "WHO_AM_I": 0x71 / 0x73 do MPU9250 e 0x48 do magnetometro)
 *       - se falhar:  println("IMU initialization unsuccessful")
 *                     println("Check IMU wiring or try cycling power")
 *                     print("Status: "); println(codigoDeErro); e trava para sempre
 *     ConfigSrd(19)  -> taxa de amostragem = 1000 / (1 + 19) = 50 Hz
 *     calibra o giroscopio: 100 amostras, delay(20) entre elas (~2 s)
 *   loop():
 *     imu.Read()
 *     imprime 10 valores float com 6 casas (separados por TAB), em 3 linhas:
 *        v1 \t v2 \t ... \t v8 \t v9 \r\n
 *        \t \r\n
 *        v10 \r\n
 *     delay(1000)
 *
 *  O SENSOR AQUI E SIMULADO: mexa o mouse na janela para "inclinar" a placa.
 *  Os nomes dos 10 valores (acel x,y,z / giro x,y,z / mag x,y,z / temperatura)
 *  sao os da biblioteca; o binario so guarda 10 floats em sequencia.
 * =====================================================================
 */

import java.util.Locale;

final int NUM_AMOSTRAS_CALIBRACAO = 100;   // 0x64 no binario
final int SRD = 19;                        // ConfigSrd(19)
final int ATRASO_LOOP_MS = 1000;           // delay(1000) no fim do loop

final String[] NOME = {"acel x (m/s2)", "acel y (m/s2)", "acel z (m/s2)",
                       "giro x (rad/s)", "giro y (rad/s)", "giro z (rad/s)",
                       "mag x (uT)", "mag y (uT)", "mag z (uT)", "temperatura (C)"};
float[] valor = new float[10];             // ultimos valores lidos

final int MAX_LINHAS = 14;
ArrayList<String> serialSaida = new ArrayList<String>();
volatile String estado = "iniciando";
volatile int statusImu = 0;                // 0 = ok, negativo = erro

// ------------------------------------------------------------------
//  Serial simulada (escreve no console E no painel da janela)
// ------------------------------------------------------------------
String linhaAtual = "";

synchronized void serialPrint(String s) {
  print(s);
  linhaAtual += s;
}

synchronized void serialPrintln(String s) {
  println(s);
  linhaAtual += s;
  serialSaida.add(linhaAtual.replace("\t", "  →  "));
  if (serialSaida.size() > MAX_LINHAS) serialSaida.remove(0);
  linhaAtual = "";
}

String f6(float v) {
  return String.format(Locale.US, "%.6f", v);
}

void esperar(int ms) {                      // = delay()
  try { Thread.sleep(ms); } catch (InterruptedException e) { Thread.currentThread().interrupt(); }
}

// ------------------------------------------------------------------
//  IMU simulado
// ------------------------------------------------------------------
boolean imuBegin() {
  // o firmware le WHO_AM_I do MPU9250 (0x71 ou 0x73) e do magnetometro (0x48)
  // e devolve um codigo de erro negativo (-1 ... -20) se algo falhar.
  statusImu = 0;
  return true;
}

void imuRead() {
  // acelerometro: gravidade segundo a inclinacao do mouse
  float ax = map(mouseX, 0, width, -9.81, 9.81);
  float ay = map(mouseY, 0, height, -9.81, 9.81);
  float az = sqrt(max(0, 9.81 * 9.81 - ax * ax - ay * ay));
  // giroscopio: pequeno ruido (apos a calibracao, a media fica perto de zero)
  float gx = (noise(frameCount * 0.05) - 0.5) * 0.02;
  float gy = (noise(100 + frameCount * 0.05) - 0.5) * 0.02;
  float gz = (noise(200 + frameCount * 0.05) - 0.5) * 0.02;
  // magnetometro e temperatura
  float mx = 22.0 + 2.0 * sin(frameCount * 0.01);
  float my = -5.0 + 2.0 * cos(frameCount * 0.013);
  float mz = -41.0 + noise(300 + frameCount * 0.02);
  float t  = 25.0 + 0.5 * sin(frameCount * 0.003);
  float[] v = {ax, ay, az, gx, gy, gz, mx, my, mz, t};
  for (int i = 0; i < 10; i++) valor[i] = v[i];
}

// ------------------------------------------------------------------
//  setup() / loop() do Arduino
// ------------------------------------------------------------------
void fwSetup() {
  estado = "setup: inicializando o IMU";
  if (!imuBegin()) {
    serialPrintln("IMU initialization unsuccessful");
    serialPrintln("Check IMU wiring or try cycling power");
    serialPrint("Status: ");
    serialPrintln(str(statusImu));
    estado = "ERRO - travado (while(1))";
    while (true) { esperar(1000); }
  }
  estado = "setup: ConfigSrd(" + SRD + ") = " + (1000 / (1 + SRD)) + " Hz";
  esperar(50);

  estado = "setup: calibrando giroscopio (" + NUM_AMOSTRAS_CALIBRACAO + " amostras)";
  float[] soma = new float[3];
  for (int i = 0; i < NUM_AMOSTRAS_CALIBRACAO; i++) {
    imuRead();
    for (int k = 0; k < 3; k++) soma[k] += valor[3 + k] / NUM_AMOSTRAS_CALIBRACAO;
    esperar(20);
  }
}

void fwLoop() {
  estado = "loop: lendo e imprimindo";
  imuRead();
  for (int i = 0; i < 8; i++) {
    serialPrint(f6(valor[i]));
    serialPrint("\t");
  }
  serialPrintln(f6(valor[8]));    // println(v9, 6)
  serialPrintln("\t");            // println("\t")
  serialPrintln(f6(valor[9]));    // println(v10, 6)
  estado = "loop: delay(" + ATRASO_LOOP_MS + ")";
  esperar(ATRASO_LOOP_MS);
}

// ------------------------------------------------------------------
//  Janela
// ------------------------------------------------------------------
void setup() {
  size(900, 560);
  surface.setTitle("Programa do hex colado - leitura de IMU (simulacao em Java)");
  Thread t = new Thread(new Runnable() {
    public void run() {
      fwSetup();
      while (true) fwLoop();
    }
  }, "firmware");
  t.setDaemon(true);
  t.start();
}

void draw() {
  background(16, 18, 24);
  fill(240);
  textSize(19);
  textAlign(LEFT, BASELINE);
  text("IMU (MPU9250) - simulacao do programa do hex colado", 20, 34);
  textSize(13);
  fill(150);
  text("Mova o mouse para inclinar a placa.   Estado do firmware: " + estado, 20, 56);

  // valores
  textSize(14);
  for (int i = 0; i < 10; i++) {
    float y = 92 + i * 28;
    fill(190);
    text(NOME[i], 20, y);
    fill(240);
    text(f6(valor[i]), 190, y);
    float m = (i < 3) ? 9.81 : (i < 6) ? 0.02 : (i < 9) ? 60 : 50;
    float w = constrain(map(valor[i], -m, m, 0, 200), 0, 200);
    noStroke();
    fill(40, 44, 56);
    rect(300, y - 12, 200, 14, 4);
    fill(90, 160, 240);
    rect(300, y - 12, w, 14, 4);
  }

  // "monitor serial"
  fill(10, 12, 16);
  rect(530, 76, 350, 330, 6);
  fill(150);
  textSize(12);
  text("Monitor Serial (115200)", 540, 94);
  fill(120, 230, 150);
  textSize(11);
  synchronized (this) {
    for (int i = 0; i < serialSaida.size(); i++) {
      String s = serialSaida.get(i);
      if (s.length() > 52) s = s.substring(0, 52) + "...";
      text(s, 540, 116 + i * 20);
    }
  }
}
