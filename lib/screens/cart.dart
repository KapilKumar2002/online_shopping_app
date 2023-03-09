import 'package:flutter/material.dart';
import 'package:online_shopping_app/screens/accountinfo.dart';
import 'package:online_shopping_app/screens/homepage.dart';
import 'package:online_shopping_app/screens/login.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 30, 226, 194)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.android,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Grishma Shah",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(.5)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Grishma.mehta@gmail.com",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(.5)),
                      ),
                    ],
                  ),
                )),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              leading: Icon(Icons.home_filled),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AccountInfoScreen()));
              },
              leading: Icon(Icons.person_pin),
              title: Text("Account Information"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              },
              leading: Icon(Icons.shopping_cart),
              title: Text("Cart"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LogIn()));
              },
              leading: Icon(Icons.exit_to_app),
              title: Text("Sign Out"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 15, 212, 226),
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              ListView.builder(
                itemCount: 1,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              "assets/levis.jpeg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "LEVI'S",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                            Text(
                              "Rs. 1050",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Text(
                          "White women t-shirt",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("PLACE ORDER"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: Size(MediaQuery.of(context).size.width * .4, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ],
        ),
      )),
    );
  }
}
