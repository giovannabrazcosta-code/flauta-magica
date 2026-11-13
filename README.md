# Flauta Mágica

Código recuperado e reconstruído do kit **Flauta Mágica**: uma flauta com sensores que dispara sons e luzes.

> **Leia isto primeiro:** os códigos-fonte dos firmwares das placas **não foram obtidos**. O que se tem é o programa já
> compilado, lido das placas. A lógica foi **reconstruída** a partir dele, e os arquivos reconstruídos dizem isso no nome.

## O que há aqui

| Caminho | O que é | Natureza |
|---|---|---|
| `arduino/firmware-original.hex` | Leitura exata da flash da placa Arduino Uno da flauta | **Original** |
| `arduino/FlautaMagica_reconstruido/` | A lógica do firmware reescrita em C++ (ainda não compilado) | Reconstrução |
| `arduino/simulacao-javascript/` e `arduino/simulacao-java/` | A mesma lógica, para rodar no computador | Reconstrução |
| `raspberry-pi/` | Servidor WebSocket em Node.js | Original, de terceiros (ver Créditos) |
| `docs/arquitetura.md` | Como as peças se conectam, com diagramas | |
| `docs/nodemcu-e-esp32.md` | O que se sabe dos firmwares do NodeMCU e do ESP32 (sem código) | |

## O que o firmware do Arduino faz

Lê 4 sensores. A combinação escolhe a família de som (melódica, harmônica ou rítmica), toca a faixa no DFPlayer Mini e anima
4 fitas de LED (grade de 5 × 8). A tabela completa está em [`docs/arquitetura.md`](docs/arquitetura.md).

## Como usar

| Parte | Como |
|---|---|
| C++ do Arduino | Abrir o `.ino` no Arduino IDE (bibliotecas: Adafruit NeoPixel e DFRobotDFPlayerMini) |
| Simulação em Java | Abrir o `.pde` no Processing 4 (biblioteca Sound) |
| Simulação em JavaScript | Abrir `arduino/simulacao-javascript/index.html` no Chrome ou Edge e clicar em "Iniciar" |
| Servidor do Raspberry Pi | `cd raspberry-pi && npm install && node index.js` (ou `node servidor-somente-websocket.js`, que só precisa do pacote `websocket`) |

> **Aviso:** não grave nenhum sketch nas placas originais. Cada upload sobrescreve a flash e destrói o que ela guarda.

## Sons

Os `.wav` **não estão no repositório**. A lista dos 14 arquivos usados está em [`arduino/data/LEIA-ME.md`](arduino/data/LEIA-ME.md).
Para as simulações, coloque-os em `arduino/data/`.

## Exato × suposição

- **Vem do binário:** pinos, tabelas de LEDs, cores, tempos, ordem das animações, combinações de sensores e números das faixas.
- **Escrito na reconstrução:** nomes de variáveis e funções e comentários.
- **Suposição:** qual `.wav` corresponde a cada número de faixa do cartão SD (o firmware só guarda o número).
- O `firmware-original.hex` tem SHA-256 `2F5EBFDD4D107DF75A0093644A626C1EEDBDCC003E9FE325B9BC473475E9C6DB`.
- A simulação em JavaScript foi testada no navegador sem janela: a sequência de LEDs e de esperas de cada animação é idêntica à do `.ino`.
  O som e o uso por clique e teclado não foram testados nesse ambiente.

## O que ficou fora de propósito

Os dumps brutos do NodeMCU e do ESP32, a imagem do cartão SD do Raspberry Pi e os sons. Os dumps têm senha de Wi-Fi e outros
dados pessoais gravados dentro, e ficam guardados fora do repositório (ver `.gitignore`).

## Origem e créditos

- **Servidor do Raspberry Pi** e **sons**: vêm do GitHub de **Christy386**. A versão só com WebSocket
  (`servidor-somente-websocket.js`) foi obtida de lá por quem organizou este repositório, e o cartão SD do Raspberry Pi tinha
  um clone do repositório de sons dessa mesma conta. A autoria original deve ser confirmada; **este repositório não reivindica
  a autoria desse código**.
- **Firmwares das placas:** autoria **não confirmada**.
- **Bibliotecas de terceiros:** TinyWebsockets (`gilmaimon`), Adafruit NeoPixel e DFRobotDFPlayerMini.

## Licença

Este repositório **não define uma licença**, de propósito: ele reúne partes do mesmo projeto Flauta Mágica. Sem licença,
vale o direito autoral padrão: o código pode ser lido, mas não reutilizado nem redistribuído sem autorização dos autores.

O servidor do Raspberry Pi e os sons são de **Christy386**, e são usados aqui com a autorização dele.

## Em aberto

- Compilar o `.ino` reconstruído e comparar o tamanho com o dump original (~16 KB).
- Papel do ESP32 no kit.
- Texto exato que o NodeMCU envia ao servidor (ver `docs/arquitetura.md`).
