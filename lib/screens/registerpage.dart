import 'package:flutter/material.dart';
import 'package:online_shopping_app/screens/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 233, 233),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Here's\nyour first\nstep with\nus!",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Image.asset(
                  "assets/auth.png",
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.width * .4,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Name",
                        focusColor: Color.fromARGB(255, 41, 233, 233)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
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
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        focusColor: Color.fromARGB(255, 41, 233, 233)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogIn()));
                    },
                    child: Text("REGISTER"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 41, 233, 233),
                        minimumSize:
                            Size(MediaQuery.of(context).size.width * .45, 45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.5))),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogIn()));
                    },
                    child: Text(
                      "Already have an account?",
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
