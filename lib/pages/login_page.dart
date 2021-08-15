import 'package:catalog_app/Routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
          color: Colors.indigo[50],
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    "https://cdn.joomdev.com/images/logo-login-register.png",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome $name",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cant be empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cant be empty";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  Material(
                    borderRadius:
                        BorderRadius.circular(changeButton ? 50 : 8.0),
                    color: Colors.deepPurple,
                    child: InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        alignment: Alignment.center,
                        width: changeButton ? 60 : 120,
                        height: 40,
                        duration: Duration(seconds: 1),
                        child: changeButton
                            ? Icon(Icons.done)
                            : Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
