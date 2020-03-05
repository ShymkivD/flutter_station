import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  final String firstStr;
  final String secondStr;
  final Function clickable;
  final IconData icon;

  CustomListTile(this.icon, this.firstStr, {this.secondStr, this.clickable});

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  Color color = Colors.blue;
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
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      color = widget.clickable();
                    });
                  },
                  child: Text(
                    widget.secondStr,
                    style: TextStyle(color: color),
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
