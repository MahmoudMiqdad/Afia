
import 'package:flutter/material.dart';
import 'package:flutter_application_1/doctor/features/home/Mainscreen.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/doctor/features/auth/pages/sign_up.dart';

import 'package:flutter_application_1/widget/CustomTextField.dart';


class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Afia",
          style: TextStyle(color: Appcolor.whitecolor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                height: 200,
                width: 400,
                child: const Image(
                  image: AssetImage("images/Afia.PNG"),
                ),
              ),
            ),
            Container(
                 padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              child: Text('Log In ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign:TextAlign.start)),
              Column(
                children: [
                   Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: CustomTextField(
                label: 'Phone number',
                prefixIcon: Icons.phone,
                keyboardType: TextInputType.number,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 3),
              child: CustomTextField(
                label: 'Password',
                prefixIcon: Icons.lock,
                obscureText: _obscureText,
                keyboardType: TextInputType.visiblePassword,
                onChanged: (value) {
         
                },
              ),
            ),
            Container(
                 
              width: 170,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Appcolor.maincolor,
              ),
              child: TextButton(
                child: const Text(
                  "Log in",
                  style: TextStyle(color: Appcolor.whitecolor,fontSize: 20),
                ),
                onPressed: () {
                 Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) =>MainScreen()),
);
                },
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Forgot password ?"),
            ),
            Container(
                
              margin: const EdgeInsets.only(top: 20),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInPage(),
                    ),
                  );
                },
                child: const Text(
                  "don't have an account ? sign up",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
                ],
              )
           
          ],
        ),
      ),
    );
  }
}
