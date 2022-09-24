import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateJob extends StatelessWidget {
  const CreateJob({Key? key}) : super(key: key);

  static const azul = Color.fromARGB(255, 38, 96, 164);
  static const claro = Color.fromARGB(255, 237, 247, 246);
  static const azulClaro = Color.fromARGB(255, 15, 163, 177);
  static const verde = Color.fromARGB(255, 27, 81, 45);
  static const negro = Color.fromARGB(255, 0, 5, 5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [_backgroundCover(), _boxForm(context)],
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

  Widget _title() {
    return const Text(
      '---------- Create Job ----------',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }

  Widget _boxForm(BuildContext context) {
    return Container(
        height: 600,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        decoration: BoxDecoration(
            color: verde, borderRadius: BorderRadius.circular(30)),
        child: Column(children: [
          const SizedBox(height: 30),
          _title(),
          _textFieldName(),
          _textFieldType(),
          _textFieldWorkingHours(),
          _textFieldSalary(),
          _textFieldSpecification(),
          _textFieldRequired(),
          _textCreate()
        ]));
  }

  Widget _textFieldName() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      child: const TextField(
        keyboardType: TextInputType.text,
        decoration:
            InputDecoration(hintText: 'Nombre', prefixIcon: Icon(Icons.person)),
      ),
    );
  }

  Widget _textFieldType() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      child: const TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Job Type', prefixIcon: Icon(Icons.type_specimen)),
      ),
    );
  }

  Widget _textFieldWorkingHours() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      child: const TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Working Hours', prefixIcon: Icon(Icons.money)),
      ),
    );
  }

  Widget _textFieldSalary() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      child: const TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Salary', prefixIcon: Icon(Icons.money_sharp)),
      ),
    );
  }

  Widget _textFieldSpecification() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      child: const TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Job Specifications', prefixIcon: Icon(Icons.spa_sharp)),
      ),
    );
  }

  Widget _textFieldRequired() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      child: const TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Talents Required',
            prefixIcon: Icon(Icons.request_quote_sharp)),
      ),
    );
  }

  Widget _buttonCreate() {
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: ElevatedButton(
        onPressed: () => {},
        child: const Text('Create',
            style: TextStyle(color: Colors.white, fontSize: 18)),
        style: ElevatedButton.styleFrom(
          primary: azulClaro,
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: const StadiumBorder(),
        ),
      ),
    );
  }

  Widget _textCreate() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buttonCreate(),
        GestureDetector(
          onTap: () => {},
          child: const Text(
            'Go back >',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        )
      ],
    );
  }
}
