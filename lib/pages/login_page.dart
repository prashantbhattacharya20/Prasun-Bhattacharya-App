import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedbutton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()) {
      setState(() {
      changedbutton = true;
    });

    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changedbutton = false;
    });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.canvasColor,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: context.accentColor
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                          cursorColor: context.accentColor,
                          decoration: InputDecoration(
                              hintText: "Enter Username",
                              hintStyle: TextStyle(color: context.accentColor),
                              labelText: "Username",
                              labelStyle: TextStyle(color: context.accentColor),
                              ),
                          validator: (value) {
                            if (value!.isNotEmpty) {
                              return null;
                            }
                            return "Username cannot be Empty";
                          }),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password",
                            hintStyle: TextStyle(color: context.accentColor),
                            labelText: "Password",
                            labelStyle: TextStyle(color: context.accentColor)),
                        validator: (value) {
                          if (value!.isNotEmpty) {
                            if (value.length < 6) {
                              return "Password length should be atleast 6";
                            }
                            return null;
                          }
                          
                          return "Password cannot be empty";
                        },
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Material(
                        color: Vx.gray600,
                        borderRadius:
                            BorderRadius.circular(changedbutton ? 50 : 10),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 40,
                            width: changedbutton ? 50 : 150,
                            color: context.accentColor,
                            alignment: Alignment.center,
                            child: changedbutton
                                ? Icon(
                                    Icons.done,
                                    color: context.canvasColor,
                                  )
                                : Text(
                                    "LOGIN",
                                    style: TextStyle(
                                      color: context.canvasColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
