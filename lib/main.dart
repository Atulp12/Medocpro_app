import 'package:flutter/material.dart';
import 'package:medocpro_app/common/widgets/bottom_bar.dart';
// import 'package:medocpro_app/common/widgets/bottom_bar.dart';
// import 'package:medocpro_app/features/auth/screen/login_screen.dart';
// import 'package:medocpro_app/features/home/screen/home_screen.dart';
import 'package:medocpro_app/utils/global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedocPro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: GlobalVariables.primaryColor),
        useMaterial3: true,
        fontFamily: 'Inter'

      ),
      home: const BottomBar(),
    );
  }
}

