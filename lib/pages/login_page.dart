import 'package:flutter/material.dart';
import 'package:prasun_bhattacharya_app/utils/routes.dart';
import 'package:prasun_bhattacharya_app/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changedButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changedButton = true;
      });

      await Future.delayed(Duration(seconds: 0));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 193, 193, 196),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                Image.asset(
                  "assets/images/login.jpg",
                  height: 380,
                  width: 400,
                  fit: BoxFit.fill,
                ),
                16.heightBox,
                "Hello There!"
                    .text
                    .textStyle(
                        TextStyle(fontFamily: GoogleFonts.bebasNeue().toString()))
                    .xl3
                    .color(Vx.black)
                    .bold
                    .make(),
                5.heightBox,
                "Welcome back, you\'ve been missed!"
                    .text
                    .lg
                    .bold
                    .color(Vx.black)
                    .make(),
                20.heightBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Container(
                                padding: EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                  color: Vx.gray200,
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: TextFormField(
                                decoration: const InputDecoration(
                                  labelText: "Username",
                                  labelStyle: TextStyle(color: Vx.black),
                                  hintText: "Email Required",
                                  hintStyle: TextStyle(color: Vx.black),
                                  border: InputBorder.none,
                                ),
                                validator: ((value) {
                                  if (value!.isNotEmpty) {
                                    return null;
                                  }
                                  return "Username cannot be empty";
                                }),
                                ),
                              ),
                            ),

                          10.heightBox,

                            Container(
                              padding: EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                color: Vx.gray200,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: TextFormField(
                                obscureText: true,
                                obscuringCharacter: '*',
                                decoration: const InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(color: Vx.black),
                                hintText: "Enter Password",
                                hintStyle: TextStyle(color: Vx.black),
                                border: InputBorder.none,
                              ),
                           validator: ((value) {
                              if (value!.isNotEmpty) {
                                if (value.length >= 6) {
                                  return null;
                                }
                                return "Password length should be atleast 6 Characters";
                              }
                              return "Password cannot be Empty";
                          }),
                          ),
                            ),

                          25.heightBox,
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    child: InkWell(
                      onTap: (() => {moveToHome(context)}),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: MyTheme.darkBluishColor,
                              borderRadius: BorderRadius.circular(25),
                          ),
                        child: Text("Sign In",
                          style: TextStyle(
                            color: Vx.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          alignment: Alignment.center, 
                        ),
                      ),
                    ),
                  ),
                ),

                          20.heightBox,

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "Not a member?".text.bold.make(),
                    " Register now"
                        .text
                        .bold
                        .color(Color.fromARGB(255, 0, 96, 169))
                        .make()
                  ],
                ),
                ]),
                      
                ),

           
              ]),
            ),
          ),
        
      ),
    );
  }
}
