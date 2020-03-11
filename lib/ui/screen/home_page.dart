import 'package:flutter/material.dart';
import 'package:flutterstation/ui/widget/bottom_bar.dart';
import 'package:flutterstation/ui/widget/custom_list_tile.dart';
import 'package:flutterstation/ui/widget/scrollable_app_bar.dart';
import 'package:flutterstation/ui/widget/station_header.dart';
import 'package:flutterstation/ui/widget/station_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  static bool _colorChanged = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: NestedScrollView(
        headerSliverBuilder: (_, __) {
          return <Widget>[ScrollableAppBar()];
        },
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              StationHeader('HB0001 – Prince Arthur', 'CP4300'),
              Row(
                children: <Widget>[
                  StationTile(
                      'assets/images/dollarSign.png', '\$1.00', 'price'),
                  StationTile(
                      'assets/images/lightning.png', '7.2 kW', 'max power'),
                  StationTile(
                      'assets/images/socket.png', 'Level 3', 'CCS + CHAdeMO'),
                ],
              ),
              Divider(),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    CustomListTile(
                        Icons.place, '845 Rue Sherbrooke O, Montreal'),
                    CustomListTile(
                        Icons.attach_money, 'Free restricted access'),
                    CustomListTile(Icons.info, 'On the corporate parking'),
                    CustomListTile(Icons.access_time, '4 hours maximum'),
                    CustomListTile(
                        Icons.warning, 'Available to a limited list of users'),
                    CustomListTile(Icons.phone, '1 (800) 636-0986, ',
                        secondStr: 'hello@chargelab.co',
                        clickable: () => (_colorChanged = !_colorChanged)
                            ? Theme.of(context).primaryColor
                            : Colors.green),
                    CustomListTile(Icons.edit, 'Suggest an edit')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(_scaffoldKey),
    );
  }
}
