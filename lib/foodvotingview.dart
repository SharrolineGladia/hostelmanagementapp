import 'package:flutter/material.dart';




class FoodVotingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffFFD6F7),
              Color(0xffDC98FF),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              FoodCard(
                mealName: "Chapathi",
                rating: 4.5,
                mealType: "Dinner",
                imageAsset: 'images/chapati.jpg',
              ),
              FoodCard(
                mealName: "Idly",
                rating: 4.0, // Replace with the desired rating
                mealType: "Dinner/Breakfast", // Replace with the desired meal type
                imageAsset: 'images/idly.jpg', // Replace with the image asset path
              ),
              FoodCard(
                mealName: "Sambar",
                rating: 3.0, // Replace with the desired rating
                mealType: "Lunch", // Replace with the desired meal type
                imageAsset: 'images/sambar.jpg', // Replace with the image asset path
              ),
              FoodCard(
                mealName: "Pongal",
                rating: 4.0, // Replace with the desired rating
                mealType: "Breakfast", // Replace with the desired meal type
                imageAsset: 'images/pongal.jpg', // Replace with the image asset path
              ),
              FoodCard(
                mealName: "Tea",
                rating: 5.0, // Replace with the desired rating
                mealType: "Snacks", // Replace with the desired meal type
                imageAsset: 'images/tea.jpeg', // Replace with the image asset path
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String mealName;
  final double rating;
  final String mealType;
  final String imageAsset;

  FoodCard({
    required this.mealName,
    required this.rating,
    required this.mealType,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle the tap on the card if needed
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: Row(
          children: <Widget>[
            Container(
              width: 90,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  fit: BoxFit.cover,
                  alignment: Alignment.topRight,
                  image: AssetImage(imageAsset),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  mealName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.orangeAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      rating.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Served as $mealType",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
