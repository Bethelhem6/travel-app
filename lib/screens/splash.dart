import 'package:flutter/material.dart';
import 'package:travel_app/screens/main_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  List img = [
    "assets/axum.jpeg",
    "assets/dankil.jpg",
    "assets/arbaminch.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: PageView.builder(
          itemCount: img.length,
          itemBuilder: (context, index) {
            return Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(img[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 50,
                  right: 3,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: List.generate(
                          3,
                          (dotIndex) {
                            return Container(
                              margin: const EdgeInsets.only(right: 3),
                              height: 8,
                              width: index == dotIndex ? 50 : 15,
                              decoration: BoxDecoration(
                                color: index == dotIndex
                                    ? Colors.deepPurple
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "It's a Big World",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Out There,",
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Go Explore",
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    index == 2
                        ? GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainPage()));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                // horizontal: 20,
                                vertical: 15,
                              ),
                              margin: const EdgeInsets.only(
                                left: 40,
                                right: 40,
                                top: 380,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Get Started",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.white,
                                    size: 40,
                                  )
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
