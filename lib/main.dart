import 'package:catalog_app/Routes/routes.dart';
import 'package:catalog_app/pages/home_page.dart';
import 'package:catalog_app/pages/login_page.dart';
import 'package:catalog_app/widget/themes.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context)  ,
      darkTheme: MyTheme.darkTheme(context),
      // home: HomePage(),
      initialRoute:MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context)=>HomePage(),
        MyRoutes.loginRoute:(context)=>LoginPage(),
      },
    );

  }
}
