# Gradle
- Sistema de automação de builds de código aberto amplamente utilizado no desenvolvimento de software.
- O que ele faz?
  - Gerenciamento de dependências: Baixa e organiza automaticamente as bibliotecas e pacotes que o seu projeto precisa.
  - Compilação e empacotamento: Transforma o código-fonte em arquivos executáveis ou pacotes finais (como arquivos .apk no Android ou .jar/.war no Java).
  - Automação de tarefas: Executa testes automatizados, gera relatórios e faz o deployment (publicação) do software.

## Principais Características
- Flexibilidade: Diferente de ferramentas mais antigas como o Maven (que usa arquivos XML rígidos), o Gradle utiliza uma linguagem de domínio específico (DSL) baseada em Groovy ou Kotlin. Isso permite que os desenvolvedores escrevam scripts e lógicas de programação personalizadas no próprio arquivo de build (build.gradle ou build.gradle.kts).
- Compilação incremental: Ele é inteligente o suficiente para identificar quais partes do código foram alteradas e recompilar apenas o necessário, o que acelera bastante o tempo de execução.
- Ecossistema: É a ferramenta de build padrão oficial para o desenvolvimento de aplicativos Android no Android Studio, além de ser muito popular em projetos Java e Kotlin.
