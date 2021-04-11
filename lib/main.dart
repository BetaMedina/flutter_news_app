import 'package:flutter/material.dart';
import 'package:news_tech_app/pages/home_page.dart';
import 'package:news_tech_app/pages/notice_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/':(context)=>HomePage(title: 'News Tech'),
        '/news':(context)=>NoticePage(title:'Notice Page',)
      },
    );
  }
}
