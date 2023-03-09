import 'package:flutter/material.dart';
import 'package:online_shopping_app/screens/accountinfo.dart';
import 'package:online_shopping_app/screens/cart.dart';
import 'package:online_shopping_app/screens/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List image = [
    {
      "image": "assets/levis.jpeg",
      "price": "1500",
      "title": "LEVI'S",
      "desc": "White women t-shirt"
    },
    {
      "image": "assets/bo.jpeg",
      "price": "550",
      "title": "MILTON",
      "desc": "Milton bottle 5 pcs"
    },
    {
      "image": "assets/beard.jpeg",
      "price": "2500",
      "title": "BEARDO",
      "desc": "Trimmer for men"
    },
    {
      "image": "assets/s.jpeg",
      "price": "5000",
      "title": "XX_SPORTS",
      "desc": "Sports and common shoes for men"
    }
  ];
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
                Navigator.pop(context);
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
          "Home",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              ListView.builder(
                itemCount: 4,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              image[index]['image'],
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
                              image[index]['title'],
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                            Text(
                              "Rs. ${image[index]['price']}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              image[index]['desc'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.grey),
                            ),
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.red,
                              size: 50,
                            )
                          ],
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
    );
  }
}
