import 'package:firstui/screens/loginscreen.dart';
import 'package:firstui/utils/allcolors.dart';
import 'package:firstui/utils/alltext.dart';
import 'package:flutter/material.dart';

class ConnectScreen extends StatelessWidget {
  const ConnectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Image(
                    image: AssetImage('assets/welcome3.png'),
                  ),
                ),
              ),
              Text(
                text.pagetwoheading,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: allcolors.whitecolor
                    // border: Border(top: BorderSide.)
                    // boxShadow: BoxS

                    ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: allcolors.bluecolor,
                        size: 50,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        text.continuewithfb,
                        style: TextStyle(
                            color: allcolors.blackcolor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: allcolors.whitecolor
                    // border: Border(top: BorderSide.)
                    // boxShadow: BoxS

                    ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage('assets/google.png'),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        text.continuewithgog,
                        style: TextStyle(
                            color: allcolors.blackcolor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: allcolors.whitecolor),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.apple_rounded,
                        color: allcolors.blackcolor,
                        size: 50,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        text.continuewithapp,
                        style: TextStyle(
                            color: allcolors.blackcolor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                text.or,
                style: TextStyle(
                    fontSize: 20,
                    color: allcolors.grey700color,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Loginscreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: allcolors.customcolor,
                    foregroundColor: allcolors.whitecolor,
                    shape: const StadiumBorder(),
                    minimumSize: Size(300, 50)),
                child: Text(text.signwithpassword),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text.donothaveanaccount,
                      style: TextStyle(
                          color: allcolors.grey700color, fontSize: 15)),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    text.signin,
                    style: TextStyle(color: allcolors.customcolor),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
