import 'package:flutter/material.dart';
import 'package:travel_app/models/places.dart';
import 'package:travel_app/screens/details_page.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({
    Key? key,
    required this.searchResult,
  }) : super(key: key);

  final List<Places> searchResult;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: ListView.builder(
          itemCount: searchResult.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => DetailsPage(
                                placesDetail: searchResult[index],
                              )),
                        ));
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 270,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/${searchResult[index].img}",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 30,
                        right: 30,
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[100],
                          ),
                          height: 100,
                          child: Column(
                            children: [
                              Text(
                                searchResult[index].name,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20.0, top: 5),
                                child: Wrap(
                                  children: List.generate(
                                    5,
                                    (index) {
                                      return const Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[600],
                )
              ],
            );
          }),
    );
  }
}
