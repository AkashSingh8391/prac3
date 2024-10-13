// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac3/login.dart';
import 'package:prac3/prc1.dart';
import 'package:prac3/routes.dart';


void main(){
  runApp(App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      routes: {
        "/":(context)=>LoginPage(),
        MyRoutes.homeRoutes:(context)=>MyApp(),
      },

    );
  }
}
