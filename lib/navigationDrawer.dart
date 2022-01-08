import 'package:assignment/routes/pageRoute.dart';
import 'package:assignment/screens/NewDiseasTakeImage.dart';
import 'package:assignment/screens/fragments/home.dart';
import 'package:assignment/screens/questionList.dart';
// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

Widget createDrawerBodyItem(
    {IconData? icon, String? text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text!),
        )
      ],
    ),
    onTap: onTap,
  );
}

Widget createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('images/bg_header.jpg'))),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Ceylon - eAgro",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

class navigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: Icons.home,
            text: 'Home',
            onTap: () {
              //   Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => homePage(),
              // ));
            },
          ),
          createDrawerBodyItem(
              icon: Icons.question_answer,
              text: 'Find Solution',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewDiseasTakeImage(),
                  ),
                );
              }),
          createDrawerBodyItem(
              icon: Icons.list,
              text: 'My Diseas List',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => QuestionList()));
                // Navigator.pop(context);
              }),
          createDrawerBodyItem(
              icon: Icons.star_half_rounded,
              text: 'Offers',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => QuestionList()));
                // Navigator.pop(context);
              }),
          Center(
            child: Text(
              "Version 1.0.0",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ],
      ),
    );
  }
}
