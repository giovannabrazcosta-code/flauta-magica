# Flauta Mágica — recuperação do código a partir do hex

Placa: Arduino Uno/Nano (ATmega328P, 16 MHz, bootloader Optiboot em 0x7E00).

## 1. A descoberta mais importante: existem DOIS programas diferentes

| | **A) Hex que você colou na conversa** | **B) Arquivo `Copia.ino.hex` da pasta do AVRDUDESS (hoje)** |
|---|---|---|
| O que é | Teste de um sensor inercial **MPU9250** (exemplo da biblioteca Bolder Flight Systems) | Firmware com **DFPlayer Mini + 4 fitas NeoPixel + 4 sensores** |
| Tem som/LEDs? | **Não** | **Sim** |
| Mensagens no binário | "IMU initialization unsuccessful", "Check IMU wiring or try cycling power", "Status: " | "DFPlayer Mini online.", "Fim da funcao setup", "x: ", "y: " |
| Estado da flash | Os primeiros 1 KB (vetores + início) foram **regravados por um sketch Blink**; o resto (lógica do sketch inclusive) sobreviveu | Programa inteiro até 0x3F7F; **o fim da flash guarda restos de 2 versões mais antigas e maiores** (com "USB Inserted!/Removed!") |

O arquivo da pasta foi **regravado duas vezes** durante o trabalho (17:25 → 17:44), então ele **não é** o mesmo
conteúdo que foi colado na conversa (nenhuma linha coincide). Provavelmente a placa foi lida de novo (talvez outra placa).

> **Pergunta em aberto (precisa de você):** qual dessas duas leituras é da placa da Flauta Mágica?
> Pela descrição (caixa com alto-falantes e LEDs, flauta com sensores), o programa **B** é o que combina.
> O **A** é só um teste de IMU.

## 2. Entregas

| Pasta | O que é |
|---|---|
| `FlautaMagica_reconstruido/FlautaMagica_reconstruido.ino` | Programa **B** reescrito em C++ para Arduino |
| `FlautaMagicaJava/FlautaMagicaJava.pde` | Programa **B** em **Java (Processing 4)**: simula as 4 fitas de LED, os 4 sensores e o DFPlayer (toca os `.wav` da pasta `data`) |
| `Mpu9250Java/Mpu9250Java.pde` | Programa **A** (o hex colado) em **Java (Processing 4)**, com o sensor simulado |
| `originais/` | Cópias dos dumps (o do hex colado está **parcial**: falta `0x3720–0x69BF`, que é código de biblioteca) |
| `analise/` | Desmontagens e listas de funções |

Os dois Java foram **compilados e executados** com o Processing 4.5.7 desta máquina (sem erros). O `.ino` **não foi compilado**
(não há compilador AVR aqui) — ver "Próximos passos".

## 3. Programa B (DFPlayer + LEDs) — o que o firmware faz

**Hardware (lido do binário):**
- 4 fitas NeoPixel de 40 LEDs, GRB/800 kHz: pinos **13, 12, 11, 10**
- DFPlayer Mini por SoftwareSerial **RX=2, TX=3**, 9600 baud; `begin(..., isACK=false)`; `volume(15)`
- 4 entradas digitais (INPUT, sem pull-up): pinos **9, 8, A0, A4**
- Serial USB a 9600 baud (mensagens de depuração)

**Combinações dos sensores (S1=pino 9, S2=pino 8, S3=A0, S4=A4):**

| S1 S2 S3 S4 | Ação |
|---|---|
| 1 0 0 0 | família **melódica**: toca faixa e faz a animação 3 vezes |
| 0 1 0 0 | família **harmônica** |
| 0 0 1 0 | família **rítmica** |
| 1 0 0 1 | **parar** o som e apagar as luzes |
| 1 1 1 1 | próximo **banco** de sons (0→5→0) |
| 0 1 1 1 | "volume +" (só altera uma variável; **não** chega ao DFPlayer nesta versão) |
| qualquer outra | nada |

**Faixas do cartão SD** (`trilha[família][banco]`): melódica `1,2,3,4,5,0` · harmônica `6,7,8,9,10,0` · rítmica `12,13,14,15,16,0`.

**Grade de LEDs:** cada fita (40 LEDs) = 5 colunas × 2 blocos de 4 LEDs. Juntando as 4 fitas dá uma grade 5×8; a tabela `mapa` diz
qual fita e quais LEDs correspondem a cada célula. As animações são sequências de "acender célula (coluna, linha) com a cor X" + `delay`.

## 4. Programa A (o hex colado) — o que ele faz
`Serial.begin(115200)` → inicializa o MPU9250 (WHO_AM_I 0x71/0x73 e magnetômetro 0x48; se falhar imprime as 3 mensagens e trava) →
`ConfigSrd(19)` (50 Hz) → calibra o giroscópio com 100 amostras (`delay(20)`) → no `loop`: lê o sensor e imprime 10 floats com 6 casas
(`TAB`), em 3 linhas, e espera 1000 ms.

## 5. O que é exato e o que é suposição
**Exato (vem do binário):** pinos, tabelas, cores, faixas, tempos, ordem das chamadas, combinações dos sensores, mensagens.
**Reescrito por mim:** nomes de variáveis/funções, comentários, e o uso de laços onde o binário tinha sequências idênticas
(verificado por script: as 3 cópias da animação melódica são idênticas, 67 eventos cada; os 4 compassos × 8 tempos da rítmica reproduzem
exatamente os 159 eventos do firmware).
**Suposição:** a correspondência faixa→arquivo `.wav` no Java (o binário só tem o número da faixa; usei os mesmos arquivos do
`FlautaVirtual.pde`). A chamada `led(9,0,...)` do original (índice fora da tabela, que "apaga tudo") virou `apagarTudo()`.
**Perdido para sempre:** comentários, nomes originais, e o código das duas versões antigas (só restaram strings).

## 6. Avisos importantes
1. **Não grave nenhum sketch nessa placa** (nem Blink, nem exemplo). Cada upload sobrescreve páginas da flash e destrói o que resta.
   Foi assim que o início do programa A se perdeu.
2. Guarde `originais/` em outro lugar. O `Copia.ino.hex` da pasta do AVRDUDESS é sobrescrito a cada leitura.
3. Se for ler a placa de novo, use um **nome de arquivo diferente** a cada leitura.

## 7. Próximos passos sugeridos
- Confirmar qual leitura é da flauta (seção 1).
- Compilar o `.ino` no Arduino IDE (bibliotecas: Adafruit NeoPixel, DFRobotDFPlayerMini) e comparar o tamanho com o dump
  (~16 KB). Posso instalar o `arduino-cli` e fazer essa comparação automaticamente, se você autorizar.
