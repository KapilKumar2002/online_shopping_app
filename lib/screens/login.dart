import 'package:flutter/material.dart';
import 'package:online_shopping_app/screens/homepage.dart';
import 'package:online_shopping_app/screens/registerpage.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Already\nhave an\nAccount?",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Image.asset(
                  "assets/auth.png",
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.width * .4,
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.black,
                        hintText: "Email",
                        focusColor: Color.fromARGB(255, 41, 233, 233)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        focusColor: Color.fromARGB(255, 41, 233, 233)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("LOGIN"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 41, 233, 233),
                        minimumSize:
                            Size(MediaQuery.of(context).size.width * .4, 45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.5))),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      "New user? Register Now",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 41, 233, 233)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
