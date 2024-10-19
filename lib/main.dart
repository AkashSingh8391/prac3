// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac3/login.dart';
import 'package:prac3/prc1.dart';
import 'package:prac3/routes.dart';


void main(){
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      routes: {
        "/":(context)=>const LoginPage(),
        MyRoutes.homeRoutes:(context)=>const MyApp(),
      },

    );
  }
}
