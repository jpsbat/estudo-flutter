# Flutter
- Desenvolvimento de aplicativos open source (https://github.com/flutter/flutter)
- Framework (conjunto de ferramentas de UI) do Google
- C, C++, Dart (padrão) E Skia Graphics Engine
- Dart: linguagem de script pra substituir o JavaScript
- É possível criar aplicações híbridas e manter performance nativa com apenas um código, que pode rodar tanto no Android quando no iPhome

## União de 3 itens
- Criar aplicações de forma rápida
  - Stateful Hot Reload: atualização automática do app ao salvar o projeto, sem perder o status
  - Widgets: já desenvolvidos de forma reativa
- Criar interfaces de usuários bonitas e flexíveis. Controle total de pixels na tela
  - Design flexível e personalizado
- Manter a performance nativa da aplicação
  - São compilados em ARM (Processador) nativo. Usam GPU (processamento gráfico) e podem acessar APIs da plataforma
  - Pode ser integrado a apps já desenvolvidos

# Dart
- Linguagem orientada à objetos multiparadigma do Google
- Apps mobile
- Utiliza mais de uma plataforma

## Exemplo
``` dart
void main() {
  print('Hello World');
}
```

## Exemplo 2
``` dart
void main() {
  String Name = 'Vannesa'; // variável com tipo declarado
  var LastName = 'Weber'; // o tipo string será automaticamente atribuío a variável

  print(Name);
  print(LastName);

}
```

## Exemplo 3
``` dart
// 1. A CLASSE (O Molde/Projeto)
class Pessoa {
  // ATRIBUTOS (As características que toda Pessoa terá)
  String name;
  String lastName;

  // CONSTRUTOR (A regra para criar uma nova pessoa)
  Pessoa(this.name, this.lastName);
}

void main() {
  // 2. O OBJETO (A "coisa" real e concreta criada a partir do molde)
  var cliente = Pessoa('Vanessa', 'Weber');

  // Acessando os atributos do objeto para exibir na tela
  print(cliente.name);     // Saída: Vanessa
  print(cliente.lastName); // Saída: Weber
}
```
