import 'dart:io';

import 'package:assignment/model/DiseaseResult.dart';
import 'package:assignment/screens/Treatments.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class QuestionView extends StatefulWidget {
  final File image;
  const QuestionView({Key? key, required this.image}) : super(key: key);

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  DiseaseResult? _diseaseResult;

  @override
  void initState() {
    getDiseaseResult();
    super.initState();
  }

  getDiseaseResult() async {
    FormData formData = new FormData.fromMap({"file": widget.image});
    Response response = await Dio().post(
        "https://ceylon-e-agro.herokuapp.com/ceylon-e-agro/api/v1/disease-solutions?page=1&limit=5",
        data: formData);
    DiseaseResult res = DiseaseResult.fromJson(response.data);
    setState(() {
      _diseaseResult = res;
    });
    return res;
  }

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
                    _diseaseResult?.responseBody?.disease ?? "",
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
                child: Image.file(widget.image),
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Treatments(
                            diseaseResult:
                                _diseaseResult == null ? null : _diseaseResult,
                          )))
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
