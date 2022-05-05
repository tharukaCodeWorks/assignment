import 'package:assignment/model/DiseaseResult.dart';
import 'package:assignment/screens/NewDiseasTakeImage.dart';
import 'package:assignment/screens/ViewSolution.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget ListItem(context, diseaseName, rating, description) {
  return GestureDetector(
    onTap: () => {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ViewSolution(
                solution: diseaseName,
                rate: rating,
              )))
    },
    child: Card(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                child: Text(diseaseName,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black87))),
            RatingBar.builder(
              ignoreGestures: true,
              initialRating: rating,
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 18,
              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
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

class Treatments extends StatefulWidget {
  final DiseaseResult? diseaseResult;
  const Treatments({Key? key, required this.diseaseResult}) : super(key: key);
  @override
  State<Treatments> createState() => _TreatmentsState();
}

class _TreatmentsState extends State<Treatments> {
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
                child: ListView.builder(
                    itemCount:
                        widget.diseaseResult?.responseBody?.solution?.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return ListItem(
                          context,
                          widget.diseaseResult?.responseBody?.solution?[index]
                              .solution,
                          widget.diseaseResult?.responseBody?.solution?[index]
                              .rateScore
                              ?.toDouble(),
                          widget.diseaseResult?.responseBody?.solution?[index]
                              .solutionDescription);
                    }),
              ))
            ],
          ),
        ));
  }
}
