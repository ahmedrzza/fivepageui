
import 'package:firstui/utils/allcolors.dart';
import 'package:firstui/utils/alltext.dart';
import 'package:flutter/material.dart';

class FillprofileScreen extends StatefulWidget {
  const FillprofileScreen({super.key});

  @override
  State<FillprofileScreen> createState() => _FillprofileScreenState();
}

class _FillprofileScreenState extends State<FillprofileScreen> {
  TextEditingController fullname = TextEditingController();
  TextEditingController nickname = TextEditingController();
  TextEditingController dateofbirth = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController gender = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          text.fill,
          style: TextStyle(color: allcolors.blackcolor),
        ),
        backgroundColor: allcolors.whitecolor,
      ),
      backgroundColor: allcolors.whitecolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: allcolors.greycolor,
                    radius: 80,
                    child: Icon(
                      Icons.person,
                      color: allcolors.greyscolor,
                      size: 90,
                    ),
                  ),
                  Positioned(
                    top: 125,
                    left: 120,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: allcolors.customcolor),
                      child: Icon(
                        Icons.edit_outlined,
                        color: allcolors.whitecolor,
                      ),
                    ),
                  )
                ],
              ),
            ),
           const SizedBox(
              height: 10,
            ),
            withouticon(fullname, text.full),
           const SizedBox(
              height: 10,
            ),
            withouticon(nickname, text.nick),
           const SizedBox(
              height: 10,
            ),
            withiconfunction(
                dateofbirth,
                Icon(
                  Icons.calendar_month_outlined,
                  color: allcolors.greyscolor,
                ),
                text.date),
           const SizedBox(
              height: 10,
            ),
            withiconfunction(
                email,
                Icon(
                  Icons.email_rounded,
                  color: allcolors.greyscolor,
                ),
                text.emailhinttext),
           const SizedBox(
              height: 10,
            ),
            withiconfunction(
                gender, const Icon(Icons.arrow_drop_down_rounded), text.gender),
           const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: allcolors.customcolor,
                    foregroundColor: allcolors.whitecolor,
                    shape: const StadiumBorder(),
                    minimumSize: const Size(300, 50)),
                child: Text(text.continueonly))
          ],
        ),
      ),
    );
  }
}

withiconfunction(controller, iconname, textrequired) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextField(
      obscureText: false,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: iconname,
        fillColor: allcolors.grey100color,
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: allcolors.greycolor),
            borderRadius: BorderRadius.circular(20)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: allcolors.greycolor)),
        hintText: textrequired,
      ),
    ),
  );
}

withouticon(controller, textrequired) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextField(
      obscureText: false,
      controller: controller,
      decoration: InputDecoration(
        fillColor: allcolors.grey100color,
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: allcolors.greycolor),
            borderRadius: BorderRadius.circular(20)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: allcolors.greycolor)),
        hintText: textrequired,
      ),
    ),
  );
}
