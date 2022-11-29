// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  final items = ['Horse', 'Cow', 'Camel', 'Sheep', 'Goat'];
  // List<String> shirts = [
  //     'tshirt1.png',
  //     'tshirt2.png',
  //     'tshirt3.png',
  //     'tshirt4.png',
  //     'tshirt5.png',
  //     'tshirt6.png',
  //     'tshirt7.png',
  //     'tshirt8.png',
  //     'tshirt9.jpg',
  //     'tshirt10.jpg',
  //   ];

  //   List<String> shirts_name = [
  //     'GUCCI Black T-shirt',
  //     'Black Polo T-shirt',
  //     'Tom\'s Green T-shirt',
  //     'MARVEL Red T-shirt',
  //     'Beach Peach T-shirt',
  //     'Pine Green Stripped T-shirt',
  //     'White Plain T-shirt',
  //     'White Marshmellow T-shirt',
  //     'Power OverSized T-shirt',
  //     'Black Human Being T-shirt'
  //   ];

  //   List<String> sweatshirts = [
  //     'sweatshirt1.png',
  //     'sweatshirt2.png',
  //     'sweatshirt3.png',
  //     'sweatshirt4.png',
  //     'sweatshirt5.png',
  //     'sweatshirt6.png',
  //     'sweatshirt7.png',
  //     'sweatshirt8.png',
  //     'sweatshirt9.png',
  //     'sweatshirt10.png',
  //   ];

  //   List<String> sweatshirts_name = [
  //     'Green Printed SweatShirt',
  //     'PUMA SweatShirt Grey',
  //     'MARVEL Green SweatShirt',
  //     'Blue SweatShirt',
  //     'Graffiti Printed SweatShirt',
  //     'White Plain SweatShirt',
  //     'Red Printed Hoodie',
  //     'Blue-white Hip-hop Hoodie',
  //     'White Printed SweatShirt',
  //     'Pink Hip-hop Hoodie',
  //   ];

  //   List<String> pants = [
  //     'pants1.png',
  //     'pants2.png',
  //     'pants3.png',
  //     'pants4.png',
  //   ];

  //   List<String> pants_name = [
  //     'Purple Trackpants',
  //     'Men\'s Casuals',
  //     'Blue Shorts',
  //     'Grey Cargo Pants',
  //   ];

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
                "My Wishlist",
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
                      hintText: "Search in Your Wishlist",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                SizedBox(
                  height: 10,
                ),
                DefaultTabController(
                    length: 5,
                    child: Container(
                      height: 34,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                      child: TabBar(
                        isScrollable: true,
                        indicator: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        labelColor: Colors.white,
                        tabs: [
                          Tab(
                            child: Text(
                              textAlign: TextAlign.center,
                              "All Items",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Shirts",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Pants",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Watches",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Caps",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/wishlists/wishlist1.png')
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 198,
                                  child: Text(
                                    "Bewakoof Brown Cargo Joggers",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Archivo',
                                      fontSize: 18,
                                    ),
                                    softWrap: true,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Item ID: 10972345",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Pants",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 48,
                                ),
                                Text(
                                  "\$15.6",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 120,
                                ),
                                Image.asset('assets/logos/addtocart.png')
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/wishlists/wishlist2.png')
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 198,
                                  child: Text(
                                    "Bewakoof Brown Cargo Joggers",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Archivo',
                                      fontSize: 18,
                                    ),
                                    softWrap: true,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Item ID: 10972345",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Pants",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 48,
                                ),
                                Text(
                                  "\$15.6",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 120,
                                ),
                                Image.asset('assets/logos/addtocart.png')
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/wishlists/wishlist3.png')
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 198,
                                  child: Text(
                                    "Bewakoof Brown Cargo Joggers",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Archivo',
                                      fontSize: 18,
                                    ),
                                    softWrap: true,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Item ID: 10972345",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Pants",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 48,
                                ),
                                Text(
                                  "\$15.6",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 120,
                                ),
                                Image.asset('assets/logos/addtocart.png')
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 86,
                          height: 158,
                          child: Image.asset(
                            'assets/images/newests/newest1.png',
                            fit: BoxFit.fitWidth,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 198,
                                  child: Text(
                                    "Bewakoof Brown Cargo Joggers",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Archivo',
                                      fontSize: 18,
                                    ),
                                    softWrap: true,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Item ID: 10972345",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Pants",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 48,
                                ),
                                Text(
                                  "\$15.6",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 120,
                                ),
                                Image.asset('assets/logos/addtocart.png')
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
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
