// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({super.key});

  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  List<String> logos = [
    'nikelogo.png',
    'zaralogo.png',
    'filalogo.png',
    'batalogo.png'
  ];

  List<String> logos_name = [
    'Nike',
    'ZARA',
    'FILA',
    'Bata',
  ];

  List<String> newdrops = [
    'newdrop1.png',
    'newdrop2.png',
    'newdrop3.png',
  ];

  List<String> newdrops_name = [
    'ADIDAS Sneakers',
    'Galaxy Watches',
    'H&M Jacket'
  ];

  List<String> newdrops_prices = ['125 US\$', '440 US\$', '73 US\$'];

  List<String> newests = [
    'newest1.png',
    'newest2.png',
    'newest3.png',
  ];

  List<String> newests_name = [
    'SVP Hoodies',
    'Light Blue Men\'s Suit',
    'Sun Glasses',
  ];

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: AppBar(
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black, size: 25),
              backgroundColor: Colors.white,
              title: Text(
                "Let\'s buy something!",
                style: TextStyle(
                    color: Colors.black, fontSize: 25, fontFamily: 'Archivo'),
              ),
            ),
          ),
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Brands, New Drops, Styles, Ocassion..",
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
                      "Brands",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                                  'assets/logos/${logos[index]}',
                                  height: 127,
                                  width: 99,
                                  fit: BoxFit.fitWidth,
                                )),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            logos_name[index],
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
                      "Exclusive Drops",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                  height: 130,
                  child: ListView.builder(
                    itemCount: 3,
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
                                borderRadius: BorderRadius.circular(90),
                                child: Image.asset(
                                  'assets/images/newdrops/${newdrops[index]}',
                                  height: 79,
                                  width: 80,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            newdrops_name[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            newdrops_prices[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
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
                      "Newest",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 190,
                        width: 140,
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
                                  'assets/images/newests/${newests[index]}',
                                  height: 130,
                                  width: 140,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            newests_name[index],
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
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            backgroundColor: Color(0xFFFAFAFB),
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/logos/Vector_wardrobe.png"),
                  // color: Colors.black,
                ),
                label: "Wardrobe",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/logos/Vector_looks.png"),
                  // color: Colors.grey,
                ),
                label: "Looks",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/logos/Market_Stall.png"),
                  // color: Colors.grey,
                ),
                label: "Looks",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.star_border,
                  // color: Colors.grey,
                ),
                label: "Wishlist",
              ),
            ],
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            // onTap: ((index) {
            //   setState(() {
            //     _currentIndex = index;
            //   });
            // }),
          ),
        ),
      ),
    );
  }
}
