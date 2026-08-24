# 📱 Sistema de Navegação em Flutter

## 📖 Sobre o projeto

Este projeto é um aplicativo desenvolvido em **Flutter** que demonstra a criação de diferentes telas e a navegação entre elas.

O sistema possui:

* 🏠 Tela inicial
* 🔐 Tela de login
* 📋 Tela principal
* 📂 Menu lateral
* 📱 Menu inferior
* 💼 Tela de trabalho
* ✅ Tela de tarefas
* 👤 Tela de perfil
* 🚪 Opção de sair do sistema

---

## 🛠️ Tecnologias utilizadas

O projeto foi desenvolvido utilizando:

* **Flutter**
* **Dart**
* **Material Design**

---

## 📂 Estrutura do projeto

Os principais arquivos do projeto são:

```text
lib/
│
├── main.dart
├── home.dart
├── login.dart
└── principal.dart
```

### `main.dart`

É o arquivo principal da aplicação. Nele, o aplicativo é iniciado utilizando:

```dart
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}
```

A propriedade `debugShowCheckedModeBanner: false` remove a faixa de **DEBUG** da aplicação.

---

## 🏠 Tela Home

A tela inicial apresenta:

* Um ícone de escola
* Uma mensagem de boas-vindas
* Um botão **ENTRAR**

Quando o usuário clica no botão, ele é direcionado para a tela de login utilizando o `Navigator.push()`.

Exemplo:

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => Login(),
  ),
);
```

---

## 🔐 Tela de Login

A tela de login possui:

* Campo para digitar o e-mail
* Campo para digitar a senha
* Botão **ENTRAR**

A senha é ocultada através da propriedade:

```dart
obscureText: true
```

Após clicar no botão **ENTRAR**, o usuário é direcionado para a tela principal:

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => PrincipalPage(),
  ),
);
```

---

## 📋 Tela Principal

A `PrincipalPage` é uma tela com diferentes conteúdos, controlados pela variável:

```dart
int pagina = 0;
```

Essa variável define qual página está sendo exibida.

As páginas disponíveis são:

| Número | Página   |
| ------ | -------- |
| 0      | Início   |
| 1      | Trabalho |
| 2      | Tarefas  |
| 3      | Perfil   |

---

## ☰ Menu Lateral

Na tela inicial da página principal, existe um **Drawer**, também conhecido como menu lateral.

Ele permite acessar:

* 🏠 Início
* 💼 Trabalho
* 🚪 Sair

A mudança de página é feita utilizando `setState()`:

```dart
setState(() {
  pagina = 1;
});
```

Depois, o menu é fechado com:

```dart
Navigator.pop(context);
```

---

## 📱 Menu Inferior

Quando o usuário acessa uma página diferente da tela inicial, é exibido um `BottomNavigationBar`.

O menu inferior possui três opções:

* 💼 Trabalho
* ✅ Tarefas
* 👤 Perfil

A navegação é controlada pelo índice selecionado:

```dart
onTap: (index) {
  setState(() {
    pagina = index + 1;
  });
}
```

---

## 🚪 Função Sair

Ao clicar em **Sair**, o usuário retorna para a tela inicial.

O código utilizado é:

```dart
Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context) => Home(),
  ),
  (route) => false,
);
```

Esse método remove as telas anteriores da navegação, impedindo que o usuário volte para o sistema apenas utilizando o botão de voltar.

---

## 🎨 Cores utilizadas

O projeto utiliza principalmente tons escuros, como:

```dart
Color(0xFF333333)
```

```dart
Color(0xFF1D1D1D)
```

Além da cor branca:

```dart
Colors.white
```

Essas cores são utilizadas para criar uma interface simples e moderna.

---

## ▶️ Como executar o projeto

### 1. Instale o Flutter

É necessário ter o **Flutter SDK** instalado e configurado no computador.

### 2. Abra o projeto

Abra a pasta do projeto em um editor como o **Visual Studio Code**.

### 3. Instale as dependências

Execute:

```bash
flutter pub get
```

### 4. Execute o aplicativo

Utilize o comando:

```bash
flutter run
```

Também é possível executar o projeto diretamente pelo VS Code com um emulador ou dispositivo conectado.

---

## 🎯 Objetivo do projeto

O principal objetivo deste projeto é praticar conceitos importantes do Flutter, como:

* Criação de interfaces com Widgets
* `StatelessWidget`
* `StatefulWidget`
* Navegação entre telas
* `Navigator.push()`
* `Navigator.pushAndRemoveUntil()`
* `Drawer`
* `BottomNavigationBar`
* `setState()`
* Organização de telas em diferentes arquivos

---

## 👨‍💻 Autor

Projeto desenvolvido por **Samuel Ferreira** para fins de aprendizado e prática em **Programação Mobile com Flutter**.
