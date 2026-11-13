# Raspberry Pi: servidor WebSocket

O Raspberry Pi do kit fica em `10.0.0.118` (roteador `10.0.0.1`, rede `Team`, **sem internet**), com SSH (porta 22) e um
servidor **WebSocket** em Node.js na porta `8080`. Diferente dos firmwares das placas, este código está em **texto legível**.

## Pastas

| Pasta | Conteúdo |
|---|---|
| `servidor-websocket/versao-cartao-sd/` | `index.js`, `package.json` e `package-lock.json` da pasta `ServidorFlauta` encontrada no cartão SD |
| `servidor-websocket/versao-somente-websocket/` | Versão só com WebSocket, sem o relay `socket.io` (`servidorFlautaMagica_websocket.js`). Obtida do GitHub de Christy386 (repositório exato a confirmar) |

As duas têm a mesma lógica de WebSocket. A diferença é que a versão do cartão SD também abre uma conexão `socket.io` para um
servidor externo hospedado no Replit. Numa rede sem internet, essa conexão não funciona.

## Protocolo

- O servidor **espera** receber texto com 7 pares `bN:valor` separados por vírgula (`b1`…`b7`, valores `on`/`off`): ele separa
  por `,` e por `:` e guarda o estado. **O texto exato que o NodeMCU envia ainda não foi confirmado.** Se ele mandasse só
  `off,off,…`, sem o prefixo `bN:`, o servidor guardaria `undefined`.
- O servidor responde com o estado atual: `b1:off,b2:off,b3:off,b4:off,b5:off,b6:off,b7:off.` (termina com ponto).

## Observações sobre o código

1. A linha `if(message.utf8Data = 'update')` usa `=` (atribuição), e não `==`. A condição é sempre verdadeira, então o servidor
   responde **a qualquer mensagem**, não só a `update`. O código foi mantido como estava.
2. O servidor guarda o estado, mas **não o repassa a outros clientes** WebSocket. Foi por isso que um cliente de escuta
   conectado ao Pi não recebeu os dados da flauta.
3. O trecho que enviaria o estado a cada 200 ms está comentado.

## Como rodar

```
cd servidor-websocket/versao-cartao-sd
npm install
node index.js
```

A versão só com WebSocket precisa apenas do pacote `websocket` (`npm install websocket`).

## Cartão SD do Raspberry Pi

Foi feita uma cópia bruta do cartão (somente leitura), mas ela está **incompleta**: 2,0 GB dos 15,85 GB (12,6%). Da cópia
foram extraídas as pastas do usuário: `ServidorFlauta`, `Bookshelf`, `Downloads`, `Documentos`, `Desktop` e `.config`.

**Não estão neste repositório:** a imagem do cartão, o perfil do navegador e do editor de código (`.config`), os
`node_modules`, um instalador do VS Code (`.deb`) e um PDF de guia do Raspberry Pi.

Dentro de `ServidorFlauta` há ainda a pasta `musicasFlautaMagica`, que é um **clone de um repositório público de terceiros**
(`https://github.com/Christy386/musicasFlautaMagica`), com os sons. Ela não foi copiada para cá.
