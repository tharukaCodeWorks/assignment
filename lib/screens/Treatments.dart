import 'package:assignment/screens/NewDiseasTakeImage.dart';
import 'package:assignment/screens/ViewSolution.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget ListItem(context) {
  return GestureDetector(
    onTap: () => {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ViewSolution()))
    },
    child: Card(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Solution 1",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black87)),
            Spacer(),
            RatingBar.builder(
              ignoreGestures: true,
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 25,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            )
          ],
        ),
      ),
    ),
  );
}

class Treatments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Find Treatments'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Container(
                height: 20,
              ),
              Expanded(
                  child: SizedBox(
                height: 100,
                child: ListView(
                  children: [
                    ListItem(context),
                    ListItem(context),
                    ListItem(context),
                    ListItem(context)
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
