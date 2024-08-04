import 'package:flutter/material.dart';
import 'package:pizzahut_app/detailspage.dart';
import 'package:pizzahut_app/homepage.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int selectedIndex = -1;

  final List<String> names = ["Menu","New","Deals","For Me","Everyday Dish"];
  final List<String> avatars = [
    "",
    "assets/cover_image_1698157014.jpg.760x400_q85_crop_upscale.jpg",
    "assets/c73ecc27d2a9eaa735b1ee95304ba588.jpeg",
    "assets/nine-cheese-pizza-small.jpg",
    "assets/pizza-hut-solo-meal-jpg.webp"
  ];

  final List<String> labels = ["Popular", "Spicy", "Cheesy", "New"];
  final List<IconData> icons = [
    Icons.star_rate_outlined,
    Icons.hot_tub_outlined,
    Icons.food_bank,
    Icons.new_label_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 229, 229),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(50, 50), // Set the width and height
                  padding: EdgeInsets.all(10),
                  shape: CircleBorder(), // Make the button circular
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 24, // Size of the icon
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Explore menu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        Container(
            height: 150.0, // Adjust the height to fit the avatars and text
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: selectedIndex == index
                                      ? Colors.red
                                      : Colors.transparent,
                                  width: 2.0,
                                ),
                              ),
                              child: CircleAvatar(
                                radius:
                                    40.0, // Set the radius for the circular avatar
                                backgroundColor: index == 0
                                    ? Color.fromARGB(255, 214, 1, 72)
                                    : Colors.transparent,
                                child: index == 0
                                    ? Icon(Icons.menu,
                                        color: Colors.white, size: 40.0)
                                    : null,
                                backgroundImage: index != 0
                                    ? AssetImage(avatars[index])
                                    : null,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              names[index],
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: selectedIndex == index
                                    ? Colors.red
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ));
                })),
        Padding(
            padding: const EdgeInsets.all(10),
            child:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(labels.length, (index) {
        return Container(
          width: 80,
          height: 40,
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          padding: EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.black12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icons[index],
                size: 16.0,
                color: Colors.black,
              ),
              SizedBox(width: 1.0),
              Text(
                labels[index],
                style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),
              ),
            ],
          ),
    );}))),
            
        Column(children: [
          Container(
            width: 350,
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: Text(
                    'Chicken Shawerma Melts',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 65, bottom: 10),
                  child: Text(
                    'Grilled Shawerma chicken,pickels,mozzarella \n potato,wedges,garlic,sauce,parsely',
                    style: TextStyle(color: Colors.grey, fontSize: 11.5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 280),
                ),
                SizedBox(height: 10),
                Stack(
                  children: [
                    Image.asset(
                      'assets/95597622_3534844666531401_5004113855958220800_n.jpg',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 275, left: 190),
                      child: Text(
                        "119.00 EGP",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 190),
                  child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsPage()));},
                    child: Container(
                      width: 120,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 201, 0, 0)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 18,
                            ),
                            Text(
                              " Add",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 350,
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 170),
                  child: Text(
                    'Chicken Shawerma',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: Text(
                    'Marinated Chicken,Garlic Sauce,Cucumber, pickels,onion',
                    style: TextStyle(color: Colors.grey, fontSize: 11.5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 280),
                ),
                SizedBox(height: 10),
                Stack(
                  children: [
                    Image.asset(
                      'assets/173510600_10159744572098384_590682119051956507_n.jpg',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 275, left: 190),
                      child: Text(
                        "249.99 EGP",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 190),
                  child: Container(
                    width: 120,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 201, 0, 0)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 18,
                          ),
                          Text(
                            " Add",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ])
      ]),
    );
  }
}
