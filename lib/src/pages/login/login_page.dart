import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  static const azul = Color.fromARGB(255, 38, 96, 164);
  static const claro = Color.fromARGB(255, 237, 247, 246);
  static const azulClaro = Color.fromARGB(255, 15, 163, 177);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundCover(),
          SingleChildScrollView(
              child: Column(
            children: [_imageCover(), _title(), _boxForm(context)],
          ))
        ],
      ),
    );
  }

  Widget _title() {
    return const Text(
      "AVI JOBS",
      style: TextStyle(color: azul, fontWeight: FontWeight.bold, fontSize: 30),
    );
  }

  Widget _boxForm(BuildContext context) {
    return Container(
        height: 600,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        margin: const EdgeInsets.only(top: 20),
        decoration:
            BoxDecoration(color: azul, borderRadius: BorderRadius.circular(30)),
        child: Column(children: [
          _signIn(),
          _textFieldEmail(),
          _textFieldPassword(),
          _buttonLogin(),
          _textDontHaveAccount()
        ]));
  }

  Widget _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Correo electrónico',
          prefixIcon: Icon(Icons.email),
          fillColor: Colors.white,
        ),
      ),
    );
  }

  Widget _signIn() {
    return const Text(
      '---------- Sign In ----------',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: const TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Contraseña', prefixIcon: Icon(Icons.lock)),
      ),
    );
  }

  Widget _imageCover() {
    return SafeArea(
        child: Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/img/logo.png',
        width: 130,
        height: 130,
      ),
    ));
  }

  Widget _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => {},
          child: const Text(
            'Create Account',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        )
      ],
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: ElevatedButton(
        onPressed: () => {},
        child: const Text('LOG IN',
            style: TextStyle(color: Colors.white, fontSize: 18)),
        style: ElevatedButton.styleFrom(
          primary: azulClaro,
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: const StadiumBorder(),
        ),
      ),
    );
  }

  Widget _backgroundCover() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: claro,
    );
  }
}
