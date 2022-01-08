import 'package:assignment/screens/questionView.dart';
import 'package:flutter/material.dart';

Widget ListItem(context, image, title, numberOfSolution) {
  return GestureDetector(
    onTap: () => {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => QuestionView(
                image: image,
                title: title,
              )))
    },
    child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Image(
              width: 70,
              height: 70,
              fit: BoxFit.fill,
              image: AssetImage('images/$image'),
            ),
            title: Text(title),
            subtitle: Text('$numberOfSolution Solutions'),
          ),
        ],
      ),
    ),
  );
}

class QuestionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Diseas List'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListItem(
              context, "disaster1.jpeg", "Symptoms of bacterial diseases", 4),
          ListItem(context, "disease2.jpeg", "Symptoms of Viral diseases", 2),
          ListItem(context, 'disease3.jpeg', "Physiological disorders", 1),
          ListItem(context, "disease4.jpeg", "Symptoms of Fungal diseases", 6),
        ],
      ),
    );
  }
}
