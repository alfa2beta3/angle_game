import 'package:flutter/material.dart';
import 'pages/greetingpage.dart' as greetingpage;
import 'pages/mainpage.dart' as mainpage;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: greetingpage.GreetingPage(),
      routes: <String, WidgetBuilder>{
        '/GreetingPage': (context) => greetingpage.GreetingPage(),
        '/MainPage': (context) => mainpage.MainPage(),
      },
      initialRoute: '/MainPage', // for testing purposes
    );
  }
}
