# Registro das leituras

Como e quando cada fonte foi lida, e em que estado. Os arquivos brutos que contêm senha ou dados pessoais **não** estão no
repositório; ficam guardados fora dele e aqui consta só o SHA-256.

| Fonte | Arquivo | Tamanho | SHA-256 | Estado | No repositório |
|---|---|---|---|---|---|
| Arduino Uno (flauta) | `Copia.ino.hex` | 78.861 bytes (Intel HEX) | `2F5EBFDD4D107DF75A0093644A626C1EEDBDCC003E9FE325B9BC473475E9C6DB` | Programa até `0x3F7F`; o fim da flash guarda restos de 2 versões antigas | Sim |
| Arduino (teste de IMU) | `hex_parcial.hex` | 34.124 bytes (Intel HEX) | `FD24E6727CA6A09F6339AAD38C28669391C6267C58F94EAEA2D434566093A259` | Parcial: faltam `0x3720–0x69BF`; início regravado por um Blink | Sim |
| NodeMCU (ESP8266) | `nodemcu_leitura1.bin` | 4.194.304 bytes | `4E57169217B70B83BD8D500D931274844BC751061D2B4BDA79ECFB495EC45FE8` | Flash de 4 MB lida e verificada contra o chip (28/10/2026) | **Não** (senha de Wi-Fi e endereço de túnel antigo) |
| ESP32 | `esp32_leitura1.bin` | 4.194.304 bytes | `B2B34473624EA96BB82798B9625399971E8A0F300C00B8F23F652502FB7292C4` | Flash de 4 MB (28/10/2026) | **Não** (senha de Wi-Fi e caminho com nome de usuário) |
| Cartão SD do Raspberry Pi | `pi_sdcard_leitura1.img` | 2.000.683.008 bytes | não calculado (cópia incompleta) | **Incompleta**: 12,6% de 15.854.469.120 bytes (28/10/2026) | **Não** (2 GB, dados pessoais) |

## Código do servidor (texto legível)

| Arquivo | SHA-256 |
|---|---|
| `raspberry-pi/servidor-websocket/versao-cartao-sd/index.js` | `4D7F079715969D93E55BB334EE8E2DBF0C409E1A458A5853474AC8302A90A98F` |
| `raspberry-pi/servidor-websocket/versao-cartao-sd/package.json` | `E992457122462B9385457C06167DDA5695287CE3EF9B2422384CB7F0F0304D1B` |
| `raspberry-pi/servidor-websocket/versao-cartao-sd/package-lock.json` | `637079E187F22A753D2B12E174CD299B020F5277BBE16B1CEFCA9B908853EB69` |
| `raspberry-pi/servidor-websocket/versao-somente-websocket/servidorFlautaMagica_websocket.js` | `8F6AD9930E8CA8F587B3215FB5647A50D66186E1DE99F7E553F5947996C192B0` |

## Reconstruções (para conferir que os arquivos não mudaram)

| Arquivo | SHA-256 |
|---|---|
| `arduino-uno/reconstrucao-cpp/FlautaMagica_reconstruido/FlautaMagica_reconstruido.ino` | `65C1BA773BF6251039D3DC3B220EA76040DAF8747905FFA8B580B3BE35651F9D` |
| `arduino-uno/simulacao-javascript/flauta.js` | `EDCC9B313A46F813F26A56B8EA6CAB9EC8E07414C659A575DA269124F813267D` |

## Como cada leitura foi feita

- **Arduino:** leitura da flash com o AVRDUDESS. O arquivo de saída é **sobrescrito a cada leitura** (a primeira versão se perdeu),
  então use um nome diferente em cada leitura.
- **NodeMCU e ESP32:** leitura da flash de 4 MB por USB, verificada contra o chip.
- **Cartão SD do Raspberry Pi:** cópia bruta setor a setor, **somente leitura**, retomando de onde parou se a leitura cair.
  Parou em 12,6%.

## Cuidados

- **Não grave nenhum sketch** nas placas originais: cada upload sobrescreve páginas da flash e destrói o que resta.
- Guarde os dumps brutos em um lugar privado, fora do repositório (ver `.gitignore`).
