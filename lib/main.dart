import 'package:avijobs/src/pages/createJob/createJob.dart';
import 'package:avijobs/src/pages/jobDescription/jobDescription_page.dart';
import 'package:avijobs/src/pages/jobList/jobList.dart';
import 'package:avijobs/src/pages/login/login_page.dart';
import 'package:avijobs/src/pages/viewProfile/viewProfile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/pages/register/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Moviles',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage()),
        GetPage(name: '/joblist', page: () => const JobList()),
        GetPage(name: '/create-job', page: () => const CreateJob()),
        GetPage(name: '/job-detail', page: () => const JobDescriptionPage()),
        GetPage(name: '/view-profile', page: () => const ViewProfilePage()),
      ],
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 38, 96, 164),
        colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Color.fromARGB(255, 38, 96, 164),
            secondary: Color.fromARGB(255, 133, 108, 195),
            onBackground: Colors.white,
            onPrimary: Colors.white,
            surface: Colors.white,
            onSurface: Colors.white,
            error: Colors.white,
            onError: Colors.white,
            onSecondary: Colors.white,
            background: Colors.white),
      ),
      navigatorKey: Get.key,
    );
  }
}
