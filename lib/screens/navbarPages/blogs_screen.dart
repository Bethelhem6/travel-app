import 'package:flutter/material.dart';

import 'package:travel_app/models/places.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Blogs",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple[100],
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.maxFinite,
          child: ListView.builder(
            itemCount: Places.popular.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Card(
                    color: Colors.deepPurple[50],
                    elevation: 15,
                    child: Column(children: [
                      Stack(
                        children: [
                          Container(
                            height: 250,
                            margin: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/${Places.popular[index].img}",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            left: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                Places.popular[index].name,
                                style: TextStyle(
                                    color: Colors.deepPurple[600],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 20,
                          bottom: 10,
                        ),
                        child: Text(
                          Places.popular[index].description,
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
