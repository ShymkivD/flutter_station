import 'package:flutter/material.dart';

class StationHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final String status;
  StationHeader(this.title, this.subtitle, {this.status = 'Unavaliable'});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 15, color: Color(0xFF9B9B9B)),
      ),
      trailing: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 22.0,
              width: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: Color(0xFFB0BEC5)),
              child: Center(
                child: Text(
                  status,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
