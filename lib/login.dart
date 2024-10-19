import'package:flutter/material.dart';
import 'package:prac3/routes.dart';

void main(){
  runApp(const LoginPage());
}
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
  final _formKey=GlobalKey<FormState>();
  moveToHome(BuildContext context)
    async{
    if(_formKey.currentState!.validate()){
      setState(() {
        changeButton=true;
      });
    }
      setState(() {
        changeButton=true;

      });
      await Future.delayed(const Duration(seconds:6));
      await Navigator.pushNamed(BuildContext as BuildContext,MyRoutes.homeRoutes);
      setState(() {
        changeButton=false;
      });
    }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white10,
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title:const Text('My Profile'),
      ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset('images/IMG-20220909-WA0005.jpg',fit: BoxFit.cover,),
                const SizedBox(
                  height: 20.0,
                ),
                Text('Welcome $name',style: const TextStyle(
                    fontSize: 24,
                fontWeight: FontWeight.w100),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:24.0,vertical: 16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter UserName",
                          labelText: "UserName",
                        ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "UserName can't be empty";
                        }
                        return null;
                      },
                      onChanged:(value){
                          name=value;
                          setState(() {
                            
                          });
          }
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                      ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Password can't be empty";
                          }
                          else if(value.length >6){
                            return "Password length is less than 6";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20.0,),
                    Material(
                        borderRadius: BorderRadius.circular(changeButton?20:8),
                        color: Colors.purple,

                      child: InkWell(
                        splashColor: Colors.blue,

                        onTap: ()=>moveToHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 5),
                          alignment: Alignment.center,
                          height: 40,
                          width: changeButton?40:110,

                          child: changeButton?const Icon(Icons.done,color: Colors.white,):const Text("login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18),),
                        ),
                      ),
                    ),
                    /*  ElevatedButton(
                        onPressed:(){
                        print("jai shri ram");
                        Navigator.pushNamed(context,MyRoutes.homeRoutes);
                      },
                        child: Text("Login",style: TextStyle(color: Colors.purple),),
                        style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      )*/
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
