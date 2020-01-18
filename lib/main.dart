import 'package:blog_application/views/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const title = '博客应用';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: HomePage() 
    );
  }
}

