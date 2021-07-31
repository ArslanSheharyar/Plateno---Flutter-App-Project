import 'package:flutter/material.dart';
import 'package:flutter_liquid_swipe_project/my_home_page.dart';
import 'Methods.dart';
import 'CreateAccount.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      //backgroundColor: Color(0xFFBCB2A3),
      body: isLoading
          ? Center(
              child: Container(
                height: size.height / 20,
                width: size.height / 20,
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 60.0,
                    ),
                    Container(
                      width: size.width / 1.1,
                      child: Text(
                        "Welcome To Plateno",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width / 1.1,
                      child: Text(
                        "Sign In to Contiue!",
                        style: TextStyle(
                          //color: Colors.grey[700],
                          color: Color(0xFF7F7689),
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    // Image.asset(
                    //   'assets/logo.png',
                    //   width: 300,
                    // ),
                    CircleAvatar(
                      radius: 90,
                      backgroundImage: AssetImage('assets/logo.png'),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        controller: _email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          //fillColor: Colors.transparent,
                          fillColor: Color(0xFF7F7689),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            color: Color(0xFF7F7689),
                          ),
                          suffixIcon: Icon(
                            Icons.mail,
                            color: Color(0xFF7F7689),
                          ),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                          FormBuilderValidators.email(context),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        controller: _password,
                        decoration: InputDecoration(
                          fillColor: Color(0xFF7F7689),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Color(0xFF7F7689),
                          ),
                          suffixIcon: Icon(
                            Icons.lock,
                            color: Color(0xFF7F7689),
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                          FormBuilderValidators.minLength(context, 6),
                        ]),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(
                      height: size.height / 10,
                    ),
                    customButton(size),
                    SizedBox(
                      height: size.height / 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            color: Colors.black,
                            letterSpacing: 0.2,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => CreateAccount())),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Color(0xFF7F7689),
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  Widget customButton(Size size) {
    return GestureDetector(
      onTap: () {
        if (_formKey.currentState.validate()) {
          if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
            setState(() {
              isLoading = true;
            });

            logIn(_email.text, _password.text).then((user) {
              if (user != null) {
                print("Login Sucessfull");
                setState(() {
                  isLoading = false;
                });
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MyHomePage()));
              } else {
                print("Login Failed");
                setState(() {
                  isLoading = false;
                });
              }
            });
          } else {
            print("Please fill form correctly");
          }
        }
      },
      child: Container(
          height: size.height / 14,
          width: size.width / 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xFF7F7689),
          ),
          alignment: Alignment.center,
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }

  Widget field(
      Size size, String hintText, IconData icon, TextEditingController cont) {
    return Container(
      height: size.height / 14,
      width: size.width / 1.1,
      child: TextField(
        controller: cont,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
