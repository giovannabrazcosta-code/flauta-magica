# Arduino Uno: firmware da flauta

Placa Arduino Uno/Nano (ATmega328P, 16 MHz, bootloader Optiboot), lida com o AVRDUDESS.

## Pastas

| Pasta | Conteúdo | Fidelidade |
|---|---|---|
| `firmware-original/Copia.ino.hex` | Leitura bruta da flash da placa (Intel HEX) | **Exato** |
| `firmware-original/analise/` | Desmontagem (`.asm`), lista de funções e sequências de LEDs, geradas a partir do hex | Derivado do binário |
| `reconstrucao-cpp/` | Lógica reescrita em C++ para o Arduino IDE | **Reconstrução** (ainda não compilado) |
| `simulacao-java/` | Mesma lógica em Java (Processing 4), simulando LEDs, sensores e som | **Reconstrução** |
| `simulacao-javascript/` | Mesma lógica em JavaScript, para abrir `index.html` no navegador | **Reconstrução** |
| `data/` | Onde colocar os `.wav` (não incluídos; ver `data/LEIA-ME.md`) | |

SHA-256 do firmware exato:
`2F5EBFDD4D107DF75A0093644A626C1EEDBDCC003E9FE325B9BC473475E9C6DB  firmware-original/Copia.ino.hex`

## O que o firmware faz

- 4 fitas NeoPixel de 40 LEDs (pinos 13, 12, 11, 10), formando uma grade de 5 colunas × 8 linhas.
- DFPlayer Mini (RX = pino 2, TX = pino 3, 9600 baud, volume 15).
- 4 sensores digitais (pinos 9, 8, A0, A4). A combinação lida escolhe a ação:

| S1 S2 S3 S4 | Ação |
|---|---|
| 1 0 0 0 | família melódica |
| 0 1 0 0 | família harmônica |
| 0 0 1 0 | família rítmica |
| 1 0 0 1 | parar o som e apagar as luzes |
| 1 1 1 1 | próximo banco de sons (0 a 5) |
| 0 1 1 1 | "volume +" (só altera uma variável; não chega ao DFPlayer) |

Faixas do cartão SD (`trilha[família][banco]`): melódica `1,2,3,4,5,0` · harmônica `6,7,8,9,10,0` · rítmica `12,13,14,15,16,0`.

## O que é exato e o que é suposição

- **Vem do binário:** pinos, tabela de LEDs, cores, tempos, ordem das animações, combinações de sensores e números das faixas.
- **Escrito na reconstrução:** nomes de variáveis e funções, comentários.
- **Suposição:** qual `.wav` corresponde a cada número de faixa (nas simulações). A faixa 16 não tem `.wav` e fica sem som.
- A versão JavaScript foi testada no navegador sem janela: a sequência de LEDs e esperas de cada animação é idêntica à do `.ino`.
  O som e o uso por clique/teclado não foram testados nesse ambiente.

## Como usar

- **C++:** abrir o `.ino` no Arduino IDE. Bibliotecas: Adafruit NeoPixel e DFRobotDFPlayerMini.
- **Java:** abrir o `.pde` no Processing 4 (biblioteca Sound). Os `.wav` são procurados em `data/`.
- **JavaScript:** abrir `simulacao-javascript/index.html` no Chrome ou no Edge e clicar em "Iniciar". Os `.wav` são lidos de `data/`.

> **Aviso:** não grave nenhum sketch na placa original. Cada upload sobrescreve a flash e destrói o que ela guarda.
