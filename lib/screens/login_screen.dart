import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_screen_jk/widgets/logo_container.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = true;
  bool _emailIconVisible = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String passwordValidateInput(String value) {
    if (value.isEmpty) {
      return "enter something";
    }
  }

  String emailValidateInput(String value) {
    if (value.isEmpty) {
      return "enter something";
    } else if (!value.contains("@gmail.com")) {
      print("${!value.contains("@gmail.com")}");
      setState(() {
        _emailIconVisible = true;
      });
      return "enter valid format";
    } else {
      setState(() {
        _emailIconVisible = false;
      });
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: height,
            color: HexColor("#00011f"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LogoContainer(200,200,"LIFEPOINTS"),
                SizedBox(
                  height: height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            onChanged: (value) {
                              _formKey.currentState.validate();
                            },
                            validator: emailValidateInput,
                            controller: _emailController,
                            cursorColor: Colors.white,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusColor: Colors.white,
                                labelText: "EMAIL",
                                labelStyle: TextStyle(color: Colors.white),
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Colors.white,
                                ),
                                suffixIcon: Icon(
                                  _emailIconVisible
                                      ? Icons.cancel
                                      : Icons.check,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          TextFormField(
                            onChanged: (value) {
                              _formKey.currentState.validate();
                            },
                            validator: passwordValidateInput,
                            controller: _passwordController,
                            cursorColor: Colors.white,
                            obscureText: !_passwordVisible,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              labelText: "PASSWORD",
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "Forgot password?",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                )
                              ]),
                        ],
                      )),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        // HexColor(""),
                        // HexColor("#0584d5")
                        Colors.lightBlueAccent,
                        Colors.blue
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: width,
                  height: 50,
                  // Ignore: deprecate member use.
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      onPressed: () {
                       // if( _formKey.currentState.validate()){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                       // }
                      },
                      child: Text(
                        "LOG IN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      )),
                  margin: EdgeInsets.only(
                      left: height * 0.05,
                      right: height * 0.05,
                      top: height * 0.03,
                      bottom: height * 0.02),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextButton(
                  child: Text(
                    "Don't have an account? Create one",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: (){},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
