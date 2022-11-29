import 'package:flutter/material.dart';

class Looks extends StatefulWidget {
  const Looks({super.key});

  @override
  State<Looks> createState() => _LooksState();
}

class _LooksState extends State<Looks> {
  List<String> occassions = [
    'occassions1.png',
    'occassions2.png',
    'occassions3.png',
  ];

  List<String> occassions_name = [
    'Party Mode',
    'Gym',
    'Night Outs',
  ];

  List<String> customs = [
    'customs1.png',
    'customs2.png',
    'customs3.png',
  ];

  List<String> customs_name = [
    'Sunday Outfit',
    'Happy Day',
    'Winter Morning',
  ];

  List<String> moods = [
    'pants1.png',
    'pants2.png',
    'pants3.png',
    'pants4.png',
  ];

  List<String> moods_name = [
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
          preferredSize: Size.fromHeight(85.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: AppBar(
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black, size: 25),
              backgroundColor: Colors.white,
              title: Text(
                "What\'s Today?",
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
                      hintText: "Occassions, Moods or Customs",
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
                      "Occassions",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Color(0xFF04141E7),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 233,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 233,
                        width: 112,
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
                                  'assets/images/${occassions[index]}',
                                  height: 195,
                                  width: 112,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            occassions_name[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ]),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Customs",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Color(0xFF04141E7),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 233,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 233,
                        width: 112,
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
                                  'assets/images/${customs[index]}',
                                  height: 195,
                                  width: 112,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            customs_name[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ]),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Moods",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Color(0xFF04141E7),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 233,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 233,
                        width: 112,
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
                                  'assets/images/${moods[index]}',
                                  height: 195,
                                  width: 112,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            moods_name[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ]),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            currentIndex: 1,
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
