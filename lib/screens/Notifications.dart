import 'package:assignment/screens/ViewSolution.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

Widget ListItem(context, notification) {
  final todayDate = DateTime(2022, 5, 5);
  return GestureDetector(
    onTap: () => {},
    child: Card(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(notification,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black87)),
            Container(
              height: 10,
            ),
            Text(timeago.format(todayDate),
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black45))
          ],
        ),
      ),
    ),
  );
}

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
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
                    ListItem(context, "Sample notification 1"),
                    ListItem(context, "Sample notification 2"),
                    ListItem(context, "Sample notification 3"),
                    ListItem(context, "Sample notification 4")
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
