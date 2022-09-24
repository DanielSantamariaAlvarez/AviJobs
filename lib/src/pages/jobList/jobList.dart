import 'dart:ui';
import 'package:flutter/material.dart';

class JobList extends StatelessWidget {
  const JobList({Key? key}) : super(key: key);

  static const azul = Color.fromARGB(255, 38, 96, 164);
  static const claro = Color.fromARGB(255, 237, 247, 246);
  static const azulClaro = Color.fromARGB(255, 15, 163, 177);
  static const verde = Color.fromARGB(255, 27, 81, 45);
  static const negro = Color.fromARGB(255, 0, 5, 5);

  Widget _job(pImagen) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerRight,
            //decoration: BoxDecoration(
            //color: azulClaro, borderRadius: BorderRadius.circular(25)),
            child: Image.asset(
              pImagen,
              height: 120,
            ),
          ),
          Container(
            height: 120,
            width: 300,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            color: verde,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Name Job',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        'Job type',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        'Working Hours',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Place',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        'Salary',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        'See more ->',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  )
                ]),
          )
        ],
      ),
    ]);
  }

  Widget _backgroundCover() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: claro,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _backgroundCover(),
        Column(children: [
          const SizedBox(height: 30),
          _job('assets/img/image11.png'),
          const SizedBox(height: 10),
          _job('assets/img/image3.png'),
          const SizedBox(height: 10),
          _job('assets/img/image12.png'),
          const SizedBox(height: 10),
          _job('assets/img/image13.png'),
        ])
      ],
    );
  }
}
