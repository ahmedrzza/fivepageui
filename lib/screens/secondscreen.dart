import 'package:firstui/utils/allcolors.dart';
import 'package:firstui/utils/alltext.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Text(
                        text.detail,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            color: allcolors.customcolor3),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, top: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: allcolors.containercolor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: allcolors.customcolor3,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 311,
                  width: 320,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Image.asset('assets/orignalImage.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text(
                    text.craftmanhouse,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: allcolors.customcolor3),
                  ),
                  subtitle: Text(
                    text.losangelis,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: allcolors.customcolor3),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: allcolors.containercolor),
                      child: const Icon(
                        Icons.bookmark_border,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Icon(
                      Icons.king_bed_sharp,
                      color: allcolors.iconcolor,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(text.beds),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.bathtub_rounded,
                      color: allcolors.iconcolor,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(text.baths),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.garage,
                      color: allcolors.iconcolor,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(text.garage),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 1, top: 10),
                child: ListTile(
                  title: Text(text.ownername),
                  leading: const Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/page1profile.png',
                        ),
                        radius: 20),
                  ),
                  subtitle: Text(text.ownerdetail),
                  trailing: Container(
                    height: 35,
                    width: 84,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: allcolors.callcolor),
                    child: Row(
                      children: [
                      const  SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.call_rounded,
                          color: allcolors.whitecolor,
                        ),
                       const SizedBox(
                          width: 5,
                        ),
                        Text(
                          text.call,
                          style: TextStyle(
                            color: allcolors.whitecolor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 10),
                child: Text(text.decription),
              ),
             const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    text.gallery,
                    style: TextStyle(
                        color: allcolors.customcolor3,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 85,
                        width: 80,
                        decoration: BoxDecoration(
                          // color: allcolors.bluecolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Image(
                          image: AssetImage('assets/page1-1.png'),
                        ),
                      ),
                     const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 85,
                        width: 80,
                        decoration: BoxDecoration(
                          // color: allcolors.bluecolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Image(
                          image: AssetImage('assets/page1-2.png'),
                        ),
                      ),
                    const  SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 85,
                        width: 80,
                        decoration: BoxDecoration(
                          // color: allcolors.bluecolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Image(image: AssetImage('assets/page1-3.png')),
                      ),
                     const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 85,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Stack(
                            children: [
                             const Image(
                                image: AssetImage('assets/page1-3.png'),
                              ),
                              Positioned(
                                top: 20,
                                left: 20,
                                child: Text(
                                  '10 +',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: allcolors.whitecolor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10),
                  child: Text(
                    text.pr,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        text.price,
                        style: TextStyle(
                          fontSize: 24,
                          color: allcolors.customcolor3,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 36,
                        width: 128,
                        decoration: BoxDecoration(
                          color: allcolors.callcolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            text.buy,
                            style: TextStyle(
                              color: allcolors.whitecolor,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
