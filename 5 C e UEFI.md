# Linguagem C
- Linguagem de alto nível, mãe das linguagens de alto nível
- Criada e direcionada para criação de compiladores e sistemas operacionais
- Derivado do Algol e B

## Principais Características
- Criação: Desenvolvida em 1972 por Dennis Ritchie nos Bell Labs, originalmente para o Unix.
- Considerada uma linguagem de médio nível, pois combina a legibilidade e a estrutura de linguagens de alto nível com a capacidade de manipulação direta de hardware e memória.
- É uma linguagem compilada (utilizando ferramentas como GCC, Clang ou MSVC), extremamente rápida e capaz de rodar em diferentes arquiteturas com poucas alterações.

## Principais Aplicações
- Sistemas Operacionais: Base do Unix, Linux, Windows e macOS.
- Sistemas Embarcados: Muito usada em microcontroladores, eletrodomésticos, automóveis e dispositivos IoT devido ao baixo consumo de recursos.
- Banco de Dados e Motores: Utilizada na base de sistemas como MySQL, PostgreSQL e em motores de jogos.
- Base para Outras Linguagens: Influenciou diretamente a sintaxe e os conceitos de C++, C#, Java, PHP e JavaScript.

# UEFI
- Unified Extensible Firmware Interface ou Interface de Firmware Extensível Unificada
- É o software moderno da placa-mãe que substituiu a antiga BIOS tradicional.
- Ele é o primeiro programa executado quando você liga o computador, responsável por testar o hardware e iniciar o sistema operacional.

## Principais vantagens do UEFI
- Suporte a discos grandes: Funciona com o padrão de partição GPT, permitindo usar HDs e SSDs com capacidade muito superior a 2 TB (o limite máximo da antiga BIOS com MBR).
- Inicialização mais rápida: Opera de forma nativa em arquiteturas de 32 ou 64 bits, agilizando o processo de boot.
- Interface gráfica moderna: Diferente das telas pretas e exclusivamente textuais da BIOS antiga, o UEFI permite usar o mouse e exibe menus visuais intuitivos.
- Secure Boot (Inicialização Segura): Um recurso de segurança que verifica se o sistema operacional e os drivers possuem assinaturas confiáveis, bloqueando malwares e bootkits antes de inicializar o PC.
- Execução de drivers: Consegue rodar drivers e pequenos aplicativos de diagnóstico diretamente no ambiente de firmware.

# Relação C e UEFI
A relação entre o UEFI e a linguagem C é direta e profunda: a quase totalidade do UEFI é escrita em C.
Diferente da antiga BIOS, que era desenvolvida quase inteiramente em linguagem Assembly (uma linguagem de baixo nível muito complexa e específica para cada tipo de processador), o UEFI trouxe uma mudança radical para o desenvolvimento de firmware.

## Como a linguagem C define o UEFI
- Portabilidade de Hardware: A linguagem C permitiu que o UEFI se tornasse portátil. O mesmo código-fonte base pode ser compilado para diferentes arquiteturas de processador (como x86, x64 e ARM) sem a necessidade de reescrever o software do zero.
- Padronização com o EDK II: O desenvolvimento moderno de UEFI baseia-se no EDK II (EFI Development Kit), um ambiente de desenvolvimento de código aberto mantido pela comunidade TianoCore. Esse kit usa padrões estritos de C (como o padrão C99) para criar drivers e aplicativos de firmware.
- Modelo de Drivers Eficiente: No UEFI, os fabricantes de hardware criam drivers usando C. Esses drivers ajudam a placa-mãe a reconhecer componentes (como placas de vídeo e controladores de armazenamento) logo na inicialização, usando funções e estruturas de dados típicas da linguagem C.
- Camada de Abstração: O UEFI funciona como um "mini sistema operacional". Escrevê-lo em C torna muito mais fácil criar interfaces gráficas, pilhas de rede (para atualizações via internet) e sistemas de arquivos complexos que seriam inviáveis de programar em Assembly.
Em resumo, a escolha da linguagem C foi o fator crucial que permitiu ao UEFI ser modular, moderno e compatível com a enorme variedade de hardwares que utilizamos hoje.