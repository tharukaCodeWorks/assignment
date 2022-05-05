import 'package:assignment/screens/FindTreatments.dart';
import 'package:assignment/screens/Notifications.dart';
import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  MenuList({Key? key}) : super(key: key);

  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ceylon - eAgro"),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
                child: Icon(
                  Icons.notifications,
                  size: 26.0,
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new FlatButton(
              height: 70,
              onPressed: () => {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FindTreatments()))
              },
              color: Colors.lightGreenAccent,
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.cases_sharp),
                  Container(
                    width: 20,
                  ),
                  Text("Find Treatments")
                ],
              ),
            ),
            Container(height: 20.0),
            new FlatButton(
              height: 70,
              onPressed: () => {},
              color: Colors.lightGreenAccent,
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add_chart),
                  Container(
                    width: 20,
                  ),
                  Text("Forecast Maize Market")
                ],
              ),
            ),
            Container(height: 20.0),
            new FlatButton(
              height: 70,
              onPressed: () => {},
              color: Colors.lightGreenAccent,
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.person),
                  Container(
                    width: 20,
                  ),
                  Text("Agri Agent")
                ],
              ),
            ),
            Container(height: 20.0),
            new FlatButton(
              height: 70,
              onPressed: () => {},
              color: Colors.lightGreenAccent,
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.call),
                  Container(
                    width: 20,
                  ),
                  Text("Maintenance Support")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
