# Bitola

Aplicativo Flutter para cálculo de bitola de fios elétricos, desenvolvido para auxiliar no dimensionamento da seção do condutor com base na corrente elétrica em ampères e na distância em metros, exibindo o resultado para redes de 110V e 220V.

## Como o projeto funciona

O aplicativo foi desenvolvido em **Flutter** utilizando **Dart**.

Ao iniciar, o app abre uma tela principal com o título **Calculadora de Bitola** e apresenta campos para o usuário informar:

- corrente elétrica em ampères;
- distância em metros.

Depois de preencher os campos, o usuário pode clicar no botão **Calcular**. O sistema então realiza o cálculo da bitola do fio usando as fórmulas propostas e exibe:

- a **bitola para 110V**;
- a **bitola para 220V**.

Além disso, o resultado também aparece em uma janela de alerta (`AlertDialog`).

## Fórmulas utilizadas

O cálculo da bitola é feito com base nas seguintes fórmulas:

```dart
bitola110 = (2 * corrente * distancia) / 294.64;
bitola220 = (2 * corrente * distancia) / 510.4;
```

Onde:

- `corrente` = corrente elétrica em ampères;
- `distancia` = distância em metros;
- `bitola110` = resultado da bitola do fio para tensão de 110V;
- `bitola220` = resultado da bitola do fio para tensão de 220V.

## Estrutura principal do código

- `main()` inicia o aplicativo com `MaterialApp`.
- `App` é o widget principal do tipo `StatefulWidget`.
- `_AppState` controla os valores digitados e executa os cálculos.
- `calcular()` realiza a conta da bitola para 110V e 220V.
- `alert()` mostra o resultado em uma caixa de diálogo.
- `build()` monta a interface com campos, botão e textos de resultado.

## Recursos visuais

O projeto utiliza uma imagem de fundo localizada em:

- `assets/background.jpg`

Essa imagem é aplicada no fundo da tela com transparência para melhorar a aparência da interface.

## Tecnologias usadas

- **VS Code**: editor utilizado para programar o projeto.
- **Flutter**: framework usado para criar a interface e a lógica do aplicativo.
- **Extensão Flutter**: extensão do VS Code para executar e depurar projetos Flutter.
- **Extensão Dart**: extensão do VS Code para suporte à linguagem Dart.

## Como executar o projeto

1. Instale o **Flutter SDK**.
2. Abra o projeto no **VS Code**.
3. Instale as extensões **Flutter** e **Dart**.
4. No terminal, execute (se a imagem não aparecer):

```bash
flutter pub get
```

5. Depois, rode o projeto com:

```bash
flutter run
```

## Objetivo

Este projeto tem como objetivo auxiliar no cálculo da bitola adequada de fios elétricos de forma simples, ajudando estudantes a visualizar rapidamente o resultado para instalações em 110V e 220V com base nos dados informados pelo usuário.
