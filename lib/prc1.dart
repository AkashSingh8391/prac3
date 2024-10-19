import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prac3/drawer.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int days=30;
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        appBarTheme:const AppBarTheme(color: Colors.white,),
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 10,
          title: const Text(
              'My AppBar'),
          centerTitle: true,),
        body: Material(
        child: Center(
          child: Text('My $days days of code'),
    ),
      )
    )
);}
}



