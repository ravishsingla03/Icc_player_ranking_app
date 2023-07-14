import 'package:cricket_app/homepage.dart';
import 'package:cricket_app/screens/news.dart';
import 'package:flutter/material.dart';
import 'screens/teamranking.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: AppBarTheme(
            color: Colors.grey[900],
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/news': (context) => cricNews(),

        });
  }
}
