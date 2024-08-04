import 'package:flutter/material.dart';
import 'package:pizzahut_app/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}
int selectedIndex = -1; 
class _HomeScreenState extends State<HomePage> {
  final List<String> names = ["Delivery", "Curbside", "Self-Pickup", "Dine-In"];
  final List<String> avatars = [
    "assets/png-transparent-doorstep-delivery-computer-icons-others-miscellaneous-silhouette-area.png", 
    "assets/drinks-and-food-curbside-pickup-black-glyph-icon-vector-37562413.jpg",
    "assets/kisspng-computer-icons-pickup-truck-car-pickup-truck-5ad67055146779.2768157815240029010836.jpg",
    "assets/png-transparent-computer-icons-dinner-lunch-food-dining-room-dinner-miscellaneous-text-plate-thumbnail.png",
  ];
  
  List<String> images = [
    "assets/Best-Pizza-Hut-Offers-Coupons-on-online-Order-Grab-Unlimited-or-Buy-1-Get-1-and-much-more-2021.webp",
    "assets/Board-Exams-950x446-1-08-04-24-12-02-14.jpg",
    "assets/Screenshot_2023-03-28-19-04-06-68.webp",
    "assets/950_446_Home_Page_Banner_png.png",
  ];
  final List<Map<String, String>> items = [
    {'image': 'assets/c73ecc27d2a9eaa735b1ee95304ba588.jpeg','text': 'exclusive deal'},
    {'image': 'assets/cover_image_1698157014.jpg.760x400_q85_crop_upscale.jpg','text': 'New'},
    {'image': 'assets/nine-cheese-pizza-small.jpg', 'text': 'For me'},
    {'image': 'assets/pizza-hut-solo-meal-jpg.webp', 'text': 'Pizza'},
    {'image': 'assets/Pizza_Hut_MHB_WIRE.webp', 'text': 'Starters'},
    {'image': 'assets/IPD23175_PastaPR_4Pastas_lockup_Branded-1024x576.jpg','text': 'Pasta'},
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 229, 229, 229),
        body: ListView(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Card(
                  
                  color: const Color.fromARGB(255, 229, 229, 229),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 60,
                    width: 300,
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Icon(Icons.menu, size: 24),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('SELECTLOCATION',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                            Text('Al Mashtal', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red),
                            child: Icon(Icons.keyboard_arrow_down_outlined,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(68, 255, 254, 254)),
                  child: Icon(Icons.notifications),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(avatars.length, (index) {
                    return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: selectedIndex == index ? Colors.red : Colors.white,
                      width: 2.0,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 33.0,
                    backgroundImage:AssetImage(avatars[index]),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  names[index],
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: selectedIndex == index ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
                  )
                  );
                  }
                  )
                  ),
          ),
          Divider(),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 170.0, // Set the height of the container
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 250, // Set the width of each container
                        margin: EdgeInsets.all(10), // Space between containers
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                                images[index]), // Load the image from the list
                            fit: BoxFit
                                .cover, // Make the image cover the container
                          ),
                        ),
                      );
                    }),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Explore menu",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(color: Color.fromARGB(255, 229, 229, 229),
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/pngtree-pizza-slice-illustration-vector-on-white-background-png-image_5295928.jpg"),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 195),
                  child: Text(
                    "View All",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.skip_next),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), // Disable scrolling
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3 items per row
                crossAxisSpacing: 10, // Spacing between columns
                mainAxisSpacing: 8,
                childAspectRatio: 0.58,
                // Spacing between rows
              ),
              itemCount: items.length, // Number of items
              itemBuilder: (context, index) {
                return InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MenuPage()));
                  } ,
                  child: Container(
                    width: 100, // Set the width of each container
                    height: 100, // Set the height of each container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(items[index]['image']!),
                          ),
                        ),
                        if (index == 0)
                          Image.asset(
                            'assets/Exclusive-Deals.webp',
                            width: 100,
                            height: 28,
                            fit: BoxFit.cover,
                          )
                        else
                          Text(
                            items[index]['text']!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ]));
  }
}
