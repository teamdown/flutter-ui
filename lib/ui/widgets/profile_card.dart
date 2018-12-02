import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  IconData icon;
  String title;
  String subtitle;

  CardItem({
    Key key,
    this.icon,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          Icon(this.icon),
          SizedBox(
            width: 15.0,
          ),
          Text(
            this.title,
          )
        ],
      ),
    );
  }
}
