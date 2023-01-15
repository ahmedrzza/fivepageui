// import 'dart:html';

import 'package:firstui/screens/firstscreen.dart';
import 'package:firstui/utils/allcolors.dart';
import 'package:firstui/utils/alltext.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // login() {
  // if (email.text == 'ahmed' && password.text == '123') {
  //   print('Login Sucessfull');
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => HomescreenFirst(),
  //     ),
  //   );
  // } else {
  //   print('login failed');

  //   setState(() {

  //     text.loginfailed == 'Login failed';
  //   });
  // }
  // }
  var x = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Image(
                  image: AssetImage('assets/welcome2.png'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  text.pageoneheading,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  obscureText: false,
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_rounded,
                      color: allcolors.blackcolor,
                    ),
                    fillColor: allcolors.grey100color,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: allcolors.greycolor),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: allcolors.greycolor)),
                    hintText: text.emailhinttext,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  obscureText: true,
                  controller: password,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: allcolors.blackcolor,
                    ),
                    fillColor: allcolors.grey100color,
                    filled: true,
                    suffixIcon: const Icon(Icons.visibility_off_outlined),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: allcolors.greycolor),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: allcolors.greycolor)),
                    hintText: text.passwordhinttext,
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: allcolors.customcolor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        // child: Text(),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      text.remeber,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: allcolors.customcolor,
                    foregroundColor: allcolors.whitecolor,
                    shape: const StadiumBorder(),
                    minimumSize: const Size(300, 50)),
                onPressed: () {
                  if (email.text == text.loginname &&
                      password.text == text.lgpas) {
                    print(text.loginsucessful);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomescreenFirst(),
                      ),
                    );
                  } else {
                    print('login failed');

                    setState(() {
                      showMyDialogBox(context);
                    });
                  }
                },
                child: Text(text.signin),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                text.forgotpassword,
                style: TextStyle(
                  fontSize: 15,
                  color: allcolors.customcolor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                text.continuewth,
                style: TextStyle(
                  fontSize: 15,
                  color: allcolors.grey800color,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      color: allcolors.whitecolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.facebook,
                        color: allcolors.bluecolor,
                        size: 50,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      color: allcolors.whitecolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Image(
                      image: AssetImage('assets/google.png'),
                    )),
                  ),
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      color: allcolors.whitecolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.apple_sharp,
                        color: allcolors.blackcolor,
                        size: 50,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text.donothaveanaccount,
                    style:
                        TextStyle(color: allcolors.grey500color, fontSize: 15),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    text.singnup,
                    style:
                        TextStyle(color: allcolors.customcolor, fontSize: 15),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> showMyDialogBox(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(text.loginsfailed),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(text.sorryLoginAgain),
              // Text('Would you like to approve of this message?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(text.ok),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
