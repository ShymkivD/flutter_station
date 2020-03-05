import 'package:flutter/material.dart';

class StationTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  StationTile(this.imagePath, this.title, this.subtitle);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Image.asset(
            imagePath,
            width: 36,
            height: 36,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.87))),
          ),
          Text(subtitle)
        ],
      ),
    );
  }
}
