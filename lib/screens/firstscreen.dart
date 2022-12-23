import 'package:firstui/screens/fillscreen.dart';
import 'package:firstui/screens/loginscreen.dart';
import 'package:firstui/screens/secondscreen.dart';
import 'package:firstui/utils/allcolors.dart';
import 'package:firstui/utils/alltext.dart';
import 'package:flutter/material.dart';

class HomescreenFirst extends StatelessWidget {
  const HomescreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: allcolors.whitecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          // scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    text.loc,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: allcolors.customcolor3,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    text.losm,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: allcolors.customcolor3),
                  ),
                ),
                trailing: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/page2profile.jpg'),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    text.discover,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: allcolors.customcolor3),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    text.suitable,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: allcolors.customcolor3),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 42,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: allcolors.customcolor3),
                        child: Center(
                          child: Text(
                            text.house,
                            style: TextStyle(
                                color: allcolors.whitecolor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 42,
                        width: 135,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: allcolors.containercolor),
                        child: Center(
                          child: Text(
                            text.apa,
                            style: TextStyle(
                                color: allcolors.textcolor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 42,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: allcolors.containercolor,
                        ),
                        child: Center(
                          child: Text(
                            text.flat,
                            style: TextStyle(
                                color: allcolors.textcolor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 42,
                        width: 135,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: allcolors.containercolor),
                        child: Center(
                          child: Text(
                            text.apa,
                            style: TextStyle(
                              color: allcolors.textcolor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox()
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  text.best,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: allcolors.textcolor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 7),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 300,
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: allcolors.callcolor,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 200,
                              child: Container(
                                height: 100,
                                width: 320,
                                decoration: BoxDecoration(
                                  color: allcolors.blackcolor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 20),
                                      child: Text(
                                        text.craftmanhouse,
                                        style: TextStyle(
                                            color: allcolors.whitecolor),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        text.losangelis,
                                        style: TextStyle(
                                            color: allcolors.whitecolor),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Icon(
                                            Icons.king_bed_sharp,
                                            color: allcolors.iconcolor,
                                            size: 30,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: Text(
                                            text.beds,
                                            style: TextStyle(
                                                color: allcolors.whitecolor),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Icon(
                                            Icons.bathtub_rounded,
                                            color: allcolors.iconcolor,
                                            size: 30,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: Text(
                                            text.baths,
                                            style: TextStyle(
                                                color: allcolors.whitecolor),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 0),
                                          child: Icon(
                                            Icons.garage,
                                            color: allcolors.iconcolor,
                                            size: 30,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: Text(
                                            text.garage,
                                            style: TextStyle(
                                                color: allcolors.whitecolor),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  text.nearby,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: allcolors.customcolor3,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homescreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Container(
                    height: 120,
                    width: 320,
                    decoration: BoxDecoration(
                      color: allcolors.containercolor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/orignalImage2.png'),
                          ),
                        ),
                        Positioned(
                          left: 120,
                          child: Container(
                            height: 120,
                            width: 200,
                            decoration: BoxDecoration(
                              color: allcolors.containercolor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    text.ranch,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: allcolors.customcolor3,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    text.losangelis,
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: allcolors.customcolor3,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.king_bed_sharp,
                                        color: allcolors.iconcolor,
                                        size: 10,
                                      ),
                                      Text(
                                        text.beds,
                                        style: TextStyle(
                                            color: allcolors.blackcolor),
                                      ),
                                      Icon(
                                        Icons.bathtub_rounded,
                                        color: allcolors.iconcolor,
                                        size: 10,
                                      ),
                                      Text(
                                        text.baths,
                                        style: TextStyle(
                                            color: allcolors.blackcolor),
                                      ),
                                      Icon(
                                        Icons.garage,
                                        color: allcolors.iconcolor,
                                        size: 10,
                                      ),
                                      Text(
                                        text.garage,
                                        style: TextStyle(
                                          color: allcolors.blackcolor,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 500,
                color: allcolors.whitecolor,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        // shape: .,
        // BottomNavigationBar(items: [])
        color: allcolors.customcolor3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home_filled,
              color: allcolors.whitecolor,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Loginscreen(),
                  ),
                );
              },
              child: Icon(
                Icons.logout,
                color: allcolors.whitecolor,
              ),
            ),
            Icon(
              Icons.bookmark_border,
              color: allcolors.whitecolor,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  //ok
                  context,
                  MaterialPageRoute(
                    builder: (context) => FillprofileScreen(),
                  ),
                );
              },
              child: Icon(
                Icons.person_outline,
                color: allcolors.whitecolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
