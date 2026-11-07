# AOA (Android Open Accessory)
- Protocolo criado pelo Google que permite que acessórios de hardware USB externos (como som automotivo, placas de desenvolvimento ou periféricos) se comuniquem diretamente com dispositivos Android via cabo USB.
- No modo AOA, a lógica tradicional de conexão USB é invertida:
  - O acessório USB externo atua como o host (alimenta a energia do barramento, fornecendo tipicamente 500 mA a 5 V, e gerencia a enumeração do dispositivo).
  - O smartphone ou tablet Android funciona como o acessório (dispositivo conectado).
  - Isso permite a conexão mesmo em aparelhos Android que não possuem capacidade nativa de atuar como host USB (OTG).

## Principais Características e Versões
- AOA 1.0: Estabelece a comunicação básica de dados e reconhecimento entre o hardware externo e o Android.
- AOA 2.0: Introduziu o suporte para que o acessório funcione como dispositivos de interface humana (HID), como mouses, teclados ou controles externos conectados ao Android.
- Casos de uso comuns: Reprodução e controle de áudio diretamente por centrais multimídias de carros (som automotivo via USB), interação com kits de desenvolvimento (como o ADK) e integração com equipamentos industriais ou de impressão.
- Compatibilidade: É suportado nativamente a partir do Android 3.1 (API nível 12), mas o suporte em alguns sistemas de áudio automotivo pode apresentar limitações ou deixar de funcionar em versões mais recentes do Android (como o Android 8.0 ou superior, dependendo do fabricante).
