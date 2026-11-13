# Arduino: teste de IMU (MPU9250)

Segundo firmware lido de uma placa Arduino. **Não tem relação com a flauta**: é um programa de teste do sensor
inercial MPU9250 (exemplo da biblioteca Bolder Flight Systems), sem som nem LEDs.

| Pasta | Conteúdo | Fidelidade |
|---|---|---|
| `firmware-original/hex_parcial.hex` | Hex que foi lido da placa. **Parcial:** faltam os endereços `0x3720–0x69BF` (código de biblioteca) | Exato, mas incompleto |
| `firmware-original/analise/` | Desmontagem do trecho `0x0400–0x2C80` | Derivado do binário |
| `simulacao-java/Mpu9250Java/` | Simulação em Java (Processing 4) com o sensor simulado pelo mouse | **Reconstrução** |

## Estado do binário

Os primeiros 1 KB da flash (vetores de interrupção e início do programa) foram sobrescritos por um sketch Blink. O resto,
incluindo a lógica do sketch, sobreviveu. Por isso este hex não roda como está.

## O que o programa faz

`Serial.begin(115200)`; inicializa o MPU9250 (WHO_AM_I `0x71`/`0x73` e magnetômetro `0x48`; se falhar, imprime
`IMU initialization unsuccessful`, `Check IMU wiring or try cycling power` e `Status: ` e trava); configura 50 Hz;
calibra o giroscópio com 100 amostras; no `loop`, lê o sensor e imprime 10 valores com 6 casas decimais a cada 1 s.

Os nomes dos 10 valores (aceleração x/y/z, giro x/y/z, magnetismo x/y/z, temperatura) são os da biblioteca. O binário só
guarda 10 floats em sequência.
