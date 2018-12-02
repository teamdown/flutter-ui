import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final child;
  final title;
  final VoidCallback buttonCallback;

  CustomCard({Key key, this.title, this.child, this.buttonCallback});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              this.title,
              style: TextStyle(
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Column(
            children: <Widget>[
              this.child,
              FlatButton(
                child: Text('Modifier'),
                onPressed: this.buttonCallback,
              )
            ],
          )
        ],
      ),
    );
  }
}
