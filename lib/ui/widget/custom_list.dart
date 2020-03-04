import 'package:flutter/material.dart';

class CustomList extends StatefulWidget {
  final String firstStr;
  final String secondStr;
  final Function clickable;
  final IconData icon;

  CustomList(this.icon, this.firstStr, {this.secondStr, this.clickable});

  @override
  _CustomListState createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        widget.icon,
        color: Theme.of(context).primaryColor,
      ),
      title: Row(
        children: <Widget>[
          Text(
            widget.firstStr,
            style: TextStyle(fontSize: 15),
          ),
          widget.secondStr != null
              ? Text(
                  widget.secondStr,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
