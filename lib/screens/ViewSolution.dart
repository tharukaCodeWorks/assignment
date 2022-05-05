import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ViewSolution extends StatelessWidget {
  final String solution;
  final double rate;
  const ViewSolution({Key? key, required this.solution, required this.rate})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Solution'),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15.0),

                    // width: 300,
                    height: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black45,
                        )),
                    child: Center(
                      child: Text(solution),
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        "Rate Me",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Container(
                        width: 10,
                      ),
                      RatingBar.builder(
                        initialRating: rate,
                        minRating: 0,
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
                      ),
                      Spacer(),
                    ],
                  )
                ],
              ),
            )));
  }
}
