import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MyDrawer());
}
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl="https://www.w3schools.com/images/w3schools_green.jpg";
    return Drawer(
      backgroundColor: Colors.teal,
      child: ListView(
            padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding:EdgeInsets.zero,
              child:UserAccountsDrawerHeader(
                  accountName:const Text("Akash Singh"),
                  accountEmail:const Text("akashgurjar@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
              ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.home,
            color: Colors.white,
            ),
            title: Text("Home",
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text("Profile",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.phone,
              color: Colors.white,
            ),
            title: Text("Contact",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text("E-Mail",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
