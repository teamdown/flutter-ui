import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  IconData icon;
  String title;
  String subtitle;

  ProfileCard({
    Key key,
    this.icon,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          Icon(this.icon),
          SizedBox(
            width: 15.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    this.title,
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0),
                  ),
                ),
                Text(
                  this.subtitle,
                  style: TextStyle(fontSize: 12.5),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}