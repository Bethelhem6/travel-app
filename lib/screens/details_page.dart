import 'package:flutter/material.dart';
import 'package:travel_app/models/places.dart';

import 'package:travel_app/widgets/button.dart';

class DetailsPage extends StatefulWidget {
  final Places placesDetail;

  const DetailsPage({Key? key, required this.placesDetail}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/" + widget.placesDetail.img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 270,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.deepPurple[50],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(
                    30,
                  ),
                  topRight: Radius.circular(
                    30,
                  ),
                ),
              ),
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      // top: 20.0,
                      left: 20,
                    ),
                    child: Text(
                      widget.placesDetail.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 5),
                    child: Wrap(
                      children: List.generate(
                        5,
                        (index) {
                          return Icon(
                            Icons.star,
                            color: Colors.orange,
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 10.0, left: 20, bottom: 10),
                    child: Row(children: const [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      ),
                      Text(
                        "Ethiopia",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                    ]),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(
                      color: Colors.grey,
                      height: 5,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 15.0,
                      left: 20,
                    ),
                    child: Text(
                      "People",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 15.0,
                      left: 20,
                    ),
                    child: Text(
                      "Number of people in your  group",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Wrap(
                    children: List.generate(
                      5,
                      (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: ButtonWidget(
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                            bgColor: selectedIndex == index
                                ? Colors.black
                                : const Color.fromARGB(255, 208, 190, 240),
                            size: 50,
                            borderColor: selectedIndex == index
                                ? Colors.black
                                : const Color.fromARGB(255, 209, 185, 249),
                            text: (index + 1).toString(),
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                      left: 20,
                    ),
                    child: Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 400,
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 20,
                      right: 20,
                      bottom: 10,
                    ),
                    child: Text(
                      widget.placesDetail.description,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 0.0,
              left: 20,
              bottom: 10,
            ),
            child: SizedBox(
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Birr 280",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "/person",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 40),
            height: 55,
            width: 200,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: Colors.deepPurple,
            ),
            child: const Text(
              "Book Now",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
