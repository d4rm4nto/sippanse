import 'package:flutter/material.dart';
import 'package:sippanse/ui/login_page.dart';
import 'package:sippanse/ui/registrasi_page.dart';
import 'package:sippanse/ui/siswa_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SIPPANSE',
      debugShowCheckedModeBanner: false,
      home: SiswaPage(),
    );
  }
}
