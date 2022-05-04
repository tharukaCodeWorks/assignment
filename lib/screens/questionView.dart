import 'dart:io';

import 'package:assignment/screens/Treatments.dart';
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

class QuestionView extends StatelessWidget {
  final File image;
  final String title;
  const QuestionView({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Disease View'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                height: 20,
              ),
              Center(
                  child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black87),
                  )
                ],
              )),
              Container(
                height: 20,
              ),
              Container(
                width: 300,
                height: 300,
                child: Image.file(image),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black45,
                    )),
              ),
              Container(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(15.0),

                // width: 300,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black45,
                    )),
                child: Center(
                  child: Text('Disease Description'),
                ),
              ),
              Container(
                height: 20,
              ),
              new FlatButton(
                height: 70,
                onPressed: () => {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Treatments()))
                },
                color: Colors.lightGreenAccent,
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.checklist),
                    Container(
                      width: 20,
                    ),
                    Text("Find Treatments")
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
