import 'dart:io';

import 'package:assignment/screens/questionView.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';

List<CameraDescription> cameras = [];

class NewDiseasTakeImage extends StatefulWidget {
  @override
  State<NewDiseasTakeImage> createState() => _NewDiseasTakeImageState();
}

class _NewDiseasTakeImageState extends State<NewDiseasTakeImage> {
  File? _image;

  Future getImage() async {
    final image =
        await ImagePicker.platform.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

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
              GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    width: 300,
                    height: 300,
                    child: Center(
                      child: _image != null
                          ? Image.file(_image!)
                          : Icon(
                              Icons.add_a_photo,
                              color: Colors.grey,
                              size: 70.0,
                            ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.black45,
                        )),
                  ),
                  onTap: () {
                    getImage();
                  }),
              Padding(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(
                        40), // fromHeight use double.infinity as width and 40 is the height
                  ),
                  onPressed: _image != null
                      ? () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => QuestionView(
                                    image: _image!,
                                  )));
                        }
                      : null,
                  child: Text('Continue'),
                ),
              )
            ],
          ),
        ));
  }
}
