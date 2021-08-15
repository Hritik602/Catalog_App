import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Hritik Karn"),
                  accountEmail: Text("******@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://4.bp.blogspot.com/-QMRXW6hCLpM/T7zg6yE-2dI/AAAAAAAAARI/i9ulbzc2CBQ/s1600/stylish+profile+pictures+for+boys+(9).jpg"),
                  ),
                ),
            ),
            ListTile(
              horizontalTitleGap: 1,
              leading: Icon(Icons.home,
              size: 30,
                color: Colors.white,
              ),
              title: Text("Home",
                style: TextStyle(
                fontSize: 20,
                  letterSpacing: 1.2,
                  color: Colors.white
              ),),
            ),
            ListTile(
              horizontalTitleGap: 1,
              leading: Icon(Icons.person,
                size: 30,
                color: Colors.white,
              ),
              title: Text("Profile",
                style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.2,
                    color: Colors.white
                ),),
            ),
            ListTile(
              
              onTap: (){
                print("object");
              },
             // visualDensity: VisualDensity(horizontal: 1.0,vertical: 0.0),
              focusColor: Colors.teal,
              horizontalTitleGap: 1,
              leading: Icon(CupertinoIcons.mail,
                size: 30,
                color: Colors.white,
              ),
              title: Text("Email Me",
                style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.2,
                    color: Colors.white
                ),),
            ),
          ],
        ),
      )
    );
  }
}
