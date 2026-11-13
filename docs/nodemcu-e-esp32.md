# NodeMCU (ESP8266) e ESP32

As duas placas guardam programas Arduino **já compilados**. Não há código-fonte legível, e ele não pode ser recuperado das placas.
Este documento registra o que se consegue ver dentro dos binários.

> **Os dumps (`.bin`) não estão no repositório.** Têm a senha da rede Wi-Fi do kit gravada dentro, e o do ESP32 tem ainda
> caminhos de compilação com nome de usuário. O do NodeMCU tem o endereço de um túnel antigo.

| Placa | Arquivo (guardado fora do repositório) | Tamanho | SHA-256 |
|---|---|---|---|
| NodeMCU (ESP8266) | `nodemcu_leitura1.bin` | 4.194.304 bytes | `4E57169217B70B83BD8D500D931274844BC751061D2B4BDA79ECFB495EC45FE8` |
| ESP32 | `esp32_leitura1.bin` | 4.194.304 bytes | `B2B34473624EA96BB82798B9625399971E8A0F300C00B8F23F652502FB7292C4` |

As duas leituras são de 28/10/2026 (flash de 4 MB). A do NodeMCU foi verificada contra o chip.

## NodeMCU (ESP8266)

**O que o firmware faz** (confirmado em teste):
1. Entra na rede Wi-Fi do kit (`Team`).
2. Abre uma conexão **WebSocket** com o servidor do Raspberry Pi (`10.0.0.118`, porta `8080`).
3. Envia **4 a 5 vezes por segundo** o estado de **7 sensores** (`off`/`on`).
4. Recebe do servidor o estado de volta, no formato `b1:off,b2:off,...,b7:off`.
5. Tem um **DFPlayer Mini** com cartão SD ligado, para tocar sons.

**O que se vê no binário:**
- Biblioteca de WebSocket **TinyWebsockets** (`gilmaimon/TinyWebsockets`, de terceiros) e biblioteca do DFPlayer.
- SDK da Espressif compilada em 3 de julho de 2019.
- Mensagens de depuração: `connecting to wifi`, `Connnection Opened`, `Connnection Closed` (com três "n"), `Got a Ping!`,
  `Got a Pong!`, `Got Message:`, `pin1:`, `Hello Server, i am esp8266.`, `Fim da funcao setup`, `update`,
  `DFPlayer Mini online.`, `2.Please insert the SD card!`.
- `Hello Server…` e as mensagens de conexão parecem vir do exemplo da biblioteca TinyWebsockets.
- `Fim da funcao setup` e `DFPlayer Mini online.` também aparecem no firmware do Arduino Uno, o que sugere a mesma origem.

**Duas imagens de firmware no mesmo flash.** A que está em uso conecta ao Raspberry Pi local. A outra é, provavelmente, uma versão
anterior, que se conectava a um servidor por um túnel ngrok. Só a primeira corresponde ao que roda hoje.

## ESP32

**O que se vê no binário:**
- Compilado com **PlatformIO** e o framework Arduino para ESP32.
- Cliente **WebSocket** com a biblioteca TinyWebsockets (de terceiros), apontado para o Raspberry Pi (`10.0.0.118`).
- Mensagens: `Hello Server, i am esp32.`, `Connnection Opened`, `Connnection Closed`, `Got Message:`, `update`.
- Wi-Fi em modo estação, com a senha da rede do kit gravada no binário.
- **Não aparecem** strings de DFPlayer, NeoPixel ou MPU9250.
- O flash também guarda restos de um firmware de fábrica **ESP-AT** (comandos AT), a partir do endereço `0x100000`.

**Em aberto:** o papel deste ESP32 no kit (se é uma versão alternativa do NodeMCU ou outro nó) ainda precisa ser confirmado.
O que se sabe vem só dos textos dentro do binário.

## Relação com o resto do sistema

O servidor que recebe esses dados está em [`../raspberry-pi/`](../raspberry-pi/); o fluxo completo está em
[`arquitetura.md`](arquitetura.md). Os 7 sensores do NodeMCU provavelmente correspondem aos 7 botões do programa
Flauta Virtual, que fica em outro repositório (hipótese: ambos têm 7 itens, `b1`…`b7`; a ligação ainda não foi confirmada).

## Cuidados

- **Não grave nenhum sketch** nas placas originais: cada upload sobrescreve páginas da flash e destrói o que resta.
- Guarde os dumps brutos em um lugar privado, fora do repositório.
