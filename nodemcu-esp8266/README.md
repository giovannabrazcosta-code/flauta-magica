# NodeMCU (ESP8266)

Flash de 4 MB lida da placa e verificada contra o chip. O programa é um sketch Arduino **já compilado**: não há
código-fonte legível, e ele não pode ser recuperado da placa.

> **O dump (`.bin`) não está neste repositório.** Ele contém a senha da rede Wi-Fi do kit e o endereço de um túnel
> antigo, gravados dentro do binário.

SHA-256 do dump (guardado fora do repositório): `4E57169217B70B83BD8D500D931274844BC751061D2B4BDA79ECFB495EC45FE8`
(`nodemcu_leitura1.bin`, 4.194.304 bytes).

## O que o firmware faz (confirmado em teste)

1. Entra na rede Wi-Fi do kit (`Team`).
2. Abre uma conexão **WebSocket** com o servidor do Raspberry Pi (`10.0.0.118`, porta `8080`).
3. Envia **4 a 5 vezes por segundo** o estado de **7 sensores** (`off`/`on`).
4. Recebe do servidor o estado de volta, no formato `b1:off,b2:off,...,b7:off`.
5. Tem um **DFPlayer Mini** com cartão SD ligado, para tocar sons.

## O que se vê no binário

- Biblioteca de WebSocket **TinyWebsockets** (`gilmaimon/TinyWebsockets`, de terceiros) e biblioteca do DFPlayer.
- SDK da Espressif compilada em 3 de julho de 2019.
- Mensagens de depuração: `connecting to wifi`, `Connnection Opened`, `Connnection Closed` (com três "n"), `Got a Ping!`,
  `Got a Pong!`, `Got Message:`, `pin1:`, `Hello Server, i am esp8266.`, `Fim da funcao setup`, `update`,
  `DFPlayer Mini online.`, `2.Please insert the SD card!`.
- O texto `Hello Server, i am esp8266.` e as mensagens de conexão parecem vir do exemplo da biblioteca TinyWebsockets.
- `Fim da funcao setup` e `DFPlayer Mini online.` também aparecem no firmware do Arduino Uno (`../arduino-uno`).

## Duas imagens de firmware no mesmo flash

O flash guarda duas imagens. A que está em uso conecta ao Raspberry Pi local. A outra é, provavelmente, uma versão
anterior, que se conectava a um servidor por um túnel ngrok. Só a primeira corresponde ao que roda hoje.

## Relação com o resto do sistema

O servidor que recebe esses dados está em [`../raspberry-pi/`](../raspberry-pi/). Os 7 sensores provavelmente correspondem
aos 7 botões do programa [`../flauta-virtual-processing/`](../flauta-virtual-processing/) (hipótese: ambos têm 7 itens,
`b1`…`b7`; a ligação ainda não foi confirmada).
