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
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(title: const Text('My AppBar'),centerTitle: true,),
        body: Material(
        child: Center(
          child: Container(
            child: Text('My $days days of code'),
        ),
    ),
      )
    )
);}
}



