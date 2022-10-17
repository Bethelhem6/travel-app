import 'package:flutter/material.dart';
import 'package:travel_app/models/places.dart';

import '../screens/details_page.dart';

class CardWidget extends StatelessWidget {
  final List<Places> placesType;
  const CardWidget({
    Key? key,
    required this.placesType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: placesType.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    DetailsPage(placesDetail: placesType[index]),
              ),
            );
          },
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 0, right: 20),
                width: 200,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/${placesType[index].img}",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
