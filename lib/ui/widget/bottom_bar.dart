import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey;
  BottomBar(this._scaffoldKey);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              child: Text(
                'Reserve'.toUpperCase(),
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: RaisedButton(
                disabledTextColor: Colors.white,
                textColor: Colors.white,
                disabledColor: Color(0x8BC34A).withOpacity(0.38),
                color: Color(0xFF8BC34A),
                onPressed: () {
                  _scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Text("Station under maintenance"),
                    backgroundColor: Color(0xFFE10029),
                    duration: Duration(seconds: 3),
                  ));
                },
                child: Text(
                  'Start charge'.toUpperCase(),
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
