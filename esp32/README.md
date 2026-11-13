# ESP32

Flash de 4 MB lida da placa. O programa é um sketch Arduino **já compilado**: não há código-fonte legível, e ele não
pode ser recuperado da placa.

> **O dump (`.bin`) não está neste repositório.** Ele contém a senha da rede Wi-Fi do kit e caminhos do computador onde
> foi compilado (com nome de usuário), gravados dentro do binário.

SHA-256 do dump (guardado fora do repositório): `B2B34473624EA96BB82798B9625399971E8A0F300C00B8F23F652502FB7292C4`
(`esp32_leitura1.bin`, 4.194.304 bytes).

## O que se vê no binário

- Compilado com **PlatformIO** e o framework Arduino para ESP32.
- Cliente **WebSocket** com a biblioteca TinyWebsockets (de terceiros), apontado para o Raspberry Pi (`10.0.0.118`).
- Mensagens: `Hello Server, i am esp32.`, `Connnection Opened`, `Connnection Closed`, `Got Message:`, `update`.
- Wi-Fi em modo estação, com a senha da rede do kit gravada no binário.
- **Não aparecem** strings de DFPlayer, NeoPixel ou MPU9250.
- O flash também guarda restos de um firmware de fábrica **ESP-AT** (comandos AT), a partir do endereço `0x100000`.

## Em aberto

- Qual o papel deste ESP32 no kit (se é uma versão alternativa do NodeMCU ou outro nó) **ainda precisa ser confirmado**.
  O que se sabe vem só dos textos dentro do binário.
