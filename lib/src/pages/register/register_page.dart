import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  static const azul = Color.fromARGB(255, 38, 96, 164);
  static const claro = Color.fromARGB(255, 237, 247, 246);
  static const azulClaro = Color.fromARGB(255, 15, 163, 177);
  static const verde = Color.fromARGB(255, 27, 81, 45);
  static const negro = Color.fromARGB(255, 0, 5, 5);

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
      '---------- Register ----------',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
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
          _filaWorkerEmployer(),
          _textFieldEmail(),
          _textFieldPassword(),
          _textFieldPasswordRepeat(),
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

  Widget _textFieldPasswordRepeat() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: const TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Repetir Contraseña', prefixIcon: Icon(Icons.lock)),
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
        width: 100,
        height: 100,
        color: Colors.white,
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
            '<- Go back',
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
        child: const Text('REGISTER',
            style: TextStyle(color: Colors.white, fontSize: 18)),
        style: ElevatedButton.styleFrom(
          primary: azulClaro,
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: const StadiumBorder(),
        ),
      ),
    );
  }

  Widget _filaWorkerEmployer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _registerButton('assets/img/worker-icon-bg.png', 'Worker'),
        _registerButton('assets/img/list-icon-bg.png', 'Employer')
      ],
    );
  }

  Widget _registerButton(pImagen, pDescription) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: azulClaro, borderRadius: BorderRadius.circular(25)),
          child: Image.asset(
            pImagen,
            width: 100,
            height: 100,
            color: azul,
          ),
        ),
        Text(pDescription)
      ],
    );
  }

  Widget _backgroundCover() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: azul,
    );
  }
}
