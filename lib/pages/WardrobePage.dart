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
    ];

    List<String> shirts_name = [
      'GUCCI Black T-shirt',
      'Black Polo T-shirt',
      'Tom\'s Green T-shirt',
      'MARVEL Red T-shirt',
    ];

    List<String> sweatshirts = [
      'sweatshirt1.png',
      'sweatshirt2.png',
      'sweatshirt3.png',
      'sweatshirt4.png',
    ];

    List<String> sweatshirts_name = [
      'Green Printed SweatShirt',
      'PUMA SweatShirt Grey',
      'MARVEL Green SweatShirt',
      'Blue SweatShirt',
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
            padding: EdgeInsets.symmetric(horizontal: 15),
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
                  height: 173,
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
                                  'assets/images/${shirts[index]}',
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
                  height: 173,
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
                                  'assets/images/${sweatshirts[index]}',
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
                  height: 173,
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
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
          
            currentIndex: _currentIndex,
            backgroundColor: Color(0xFFFAFAFB),
            items: [
              BottomNavigationBarItem(
                icon: 
                  
                    ImageIcon(
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
