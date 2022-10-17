import 'package:flutter/material.dart';

import '../../models/places.dart';
import '../../widgets/card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var items = {
    "assets/mountain.jpeg": "Mountains",
    "assets/snorkling.png": "Cities",
    "assets/kayaking.png": "Kayaking",
    "assets/balloning.png": "Parks"
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[50],
        body: Container(
          margin: const EdgeInsets.only(
            top: 50,
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Hi Bethelhem,",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/hik1.jpg"),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(10),
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Text(
                  "Tour with Us. Here are some Best places to visit in Ethiopia!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Explore Places",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                alignment: Alignment.centerLeft,
                child: TabBar(
                    labelPadding: const EdgeInsets.only(left: 0, right: 20),
                    isScrollable: true,
                    labelColor: Colors.deepPurple,
                    unselectedLabelColor: Colors.grey[600],
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                    ),
                    tabs: const [
                      Tab(
                        text: "All",
                      ),
                      Tab(
                        text: "Popular",
                      ),
                      Tab(
                        text: "Recommended",
                      ),
                    ]),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    CardWidget(
                      placesType: Places.allPlaces,
                    ),
                    CardWidget(
                      placesType: Places.popular,
                    ),
                    CardWidget(
                      placesType: Places.recommended,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 0,
                            right: 10,
                            top: 10,
                          ),
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(items.keys.elementAt(index)),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          items.values.elementAt(index),
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
