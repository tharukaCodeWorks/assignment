import 'package:assignment/screens/questionView.dart';
import 'package:flutter/material.dart';

class NewDiseasTakeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Take Image'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black45,
                    )),
                child: Center(
                  child: Text('Camera Preview'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(
                        40), // fromHeight use double.infinity as width and 40 is the height
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => QuestionView(
                              image: "disaster1.jpeg",
                              title: "Symptoms of Fungal diseases",
                            )));
                  },
                  child: Text('Capture'),
                ),
              )
            ],
          ),
        ));
  }
}
