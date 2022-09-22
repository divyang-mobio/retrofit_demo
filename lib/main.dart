import 'package:flutter/material.dart';
import 'package:retrofit_demo/model/model.dart';
import 'package:retrofit_demo/screens/comment_screen.dart';
import 'package:retrofit_demo/screens/detail_screen.dart';
import 'screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(
                  builder: (context) => const MyHomePage());
            case '/detail':
              final args = settings.arguments as DataModel;
              return MaterialPageRoute(
                  builder: (context) => DetailScreen(data: args));
            case '/comment':
              return MaterialPageRoute(
                  builder: (context) => const CommentScreen());
            default:
              return MaterialPageRoute(
                  builder: (context) => const MyHomePage());
          }
        },
        theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: const AppBarTheme(centerTitle: true)),
        initialRoute: '/');
  }
}
