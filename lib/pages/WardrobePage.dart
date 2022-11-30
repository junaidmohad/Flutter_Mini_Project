// ignore_for_file: non_constant_identifier_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Wardrobe extends StatefulWidget {
  const Wardrobe({super.key});

  @override
  State<Wardrobe> createState() => _WardrobeState();
}

class _WardrobeState extends State<Wardrobe> {
  List<String> shirts = [
    'tshirt1.png',
    'tshirt2.png',
    'tshirt3.png',
    'tshirt4.png',
    'tshirt5.png',
    'tshirt6.png',
    'tshirt7.png',
    'tshirt8.png',
    'tshirt9.jpg',
    'tshirt10.jpg',
  ];

  List<String> shirts_name = [
    'GUCCI Black T-shirt',
    'Black Polo T-shirt',
    'Tom\'s Green T-shirt',
    'MARVEL Red T-shirt',
    'Beach Peach T-shirt',
    'Pine Green Stripped T-shirt',
    'White Plain T-shirt',
    'White Marshmellow T-shirt',
    'Power OverSized T-shirt',
    'Black Human Being T-shirt'
  ];

  List<String> sweatshirts = [
    'sweatshirt1.png',
    'sweatshirt2.png',
    'sweatshirt3.png',
    'sweatshirt4.png',
    'sweatshirt5.png',
    'sweatshirt6.png',
    'sweatshirt7.png',
    'sweatshirt8.png',
    'sweatshirt9.png',
    'sweatshirt10.png',
  ];

  List<String> sweatshirts_name = [
    'Green Printed SweatShirt',
    'PUMA SweatShirt Grey',
    'MARVEL Green SweatShirt',
    'Blue SweatShirt',
    'Graffiti Printed SweatShirt',
    'White Plain SweatShirt',
    'Red Printed Hoodie',
    'Blue-white Hip-hop Hoodie',
    'White Printed SweatShirt',
    'Pink Hip-hop Hoodie',
  ];

  List<String> pants = [
    'pants1.png',
    'pants2.png',
    'pants3.png',
    'pants4.png',
  ];

  List<String> pants_name = [
    'Purple Trackpants',
    'Men\'s Casuals',
    'Blue Shorts',
    'Grey Cargo Pants',
  ];

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    return SafeArea(
        child: Scaffold(
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 30),
          child: AppBar(
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black, size: 25),
            backgroundColor: Colors.white,
            title: Text(
              "Good morning, Jacob!",
              style: TextStyle(
                  color: Colors.black, fontSize: 25, fontFamily: 'Archivo'),
            ),
          ),
        ),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, bottom: 50),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search Your Wardrobe",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "T-Shirts",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Color(0xFF04141E7),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 158,
                      width: 99,
                      margin: EdgeInsets.only(left: index == 0 ? 0 : 9),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(children: [
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/tshirts/${shirts[index]}',
                                height: 127,
                                width: 99,
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          shirts_name[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        )
                      ]),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sweat Shirts",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Color(0xFF04141E7),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 158,
                      width: 99,
                      margin: EdgeInsets.only(left: index == 0 ? 0 : 9),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(children: [
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/sweatshirts/${sweatshirts[index]}',
                                height: 127,
                                width: 99,
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          sweatshirts_name[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        )
                      ]),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pants",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Color(0xFF04141E7),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 158,
                      width: 99,
                      margin: EdgeInsets.only(left: index == 0 ? 0 : 9),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(children: [
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/${pants[index]}',
                                height: 127,
                                width: 99,
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          pants_name[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        )
                      ]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
