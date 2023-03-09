import 'package:flutter/material.dart';
import 'package:online_shopping_app/screens/homepage.dart';

class AccountInfoScreen extends StatelessWidget {
  const AccountInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    height: 325,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        Colors.orange.shade900,
                        Colors.orange.shade700,
                        Colors.orange.shade400
                      ],
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),
                        Center(
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage("assets/person.png"),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text(
                            "@appsinppuser",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Center(
                          child: Text(
                            "developer@appsinpp.com",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width * .75,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              Colors.pink.shade400,
                              Colors.pink.shade300,
                              Color.fromARGB(255, 185, 129, 238)
                            ],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.pink.shade400,
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                            Text(
                              "Back to\nHome",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Account Info",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.person),
                    title: Text(
                      "Name",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Developer"),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.person),
                    title: Text(
                      "Name",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Developer"),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.person),
                    title: Text(
                      "Name",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Developer"),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.person),
                    title: Text(
                      "Name",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Developer"),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.person),
                    title: Text(
                      "Name",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Developer"),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(2.5)),
                      height: 5,
                      width: MediaQuery.of(context).size.width * .35,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
