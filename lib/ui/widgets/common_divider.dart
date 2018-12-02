import 'package:flutter/material.dart';

class CommonDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Divider(
        color: Colors.grey.shade300,
        height: 8.0,
      ),
    );
  }
}
