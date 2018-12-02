import 'package:flutter/material.dart';
import 'package:flutter_uikit/utils/uidata.dart';
import 'package:flutter_uikit/ui/widgets/common_scaffold.dart';

class EditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appTitle: UIData.editProfilPageName,
      bodyData: bodyData(context)
    );
  }

  bodyData(BuildContext context) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Title',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0
                ),
              ),
            ),
            Card(
              child: fields(context),
            ),
          ],
        ),
      );

  fields(BuildContext context) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: UIData.phoneHintText,
                  labelText: UIData.phoneLabel,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              child: TextField(
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: UIData.provinceHintText,
                  labelText: UIData.provinceLabel
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              child: TextField(
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: UIData.districtHintText,
                  labelText: UIData.districtLabel,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              child: TextField(
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: UIData.streetHintText,
                  labelText: UIData.streetLabel,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              child: TextField(
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: UIData.postalCodeHintText,
                  labelText: UIData.postalCodeLabel,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            FlatButton(
              child: Text('Enregistrer'),
              onPressed: () {},
            )
          ],
        ),
      );
}
