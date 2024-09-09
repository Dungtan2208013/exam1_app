import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Món Bánh Pavlova'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/resta.jpg'),
                SizedBox(height: 16.0),
                Text(
                  'Strawberry Pavlova',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova...',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 30,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(width: 8.0),
                    Text('170 Reviews'),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(Icons.timer),
                    Text(' PREP: 25 min'),
                    SizedBox(width: 16.0),
                    Icon(Icons.restaurant),
                    Text(' FEEDS: 4-6'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}