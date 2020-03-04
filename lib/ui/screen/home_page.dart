import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterstation/ui/widget/custom_list.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final itemsList = [
    CustomList(Icons.place, '845 Rue Sherbrooke O, Montreal'),
    CustomList(Icons.attach_money, 'Free restricted access'),
    CustomList(Icons.info, 'On the corporate parking'),
    CustomList(Icons.access_time, '4 hours maximum'),
    CustomList(Icons.warning, 'Available to a limited list of users'),
    CustomList(Icons.phone, '1 (800) 636-0986, ',
        secondStr: 'hello@chargelab.co'),
    CustomList(Icons.edit, 'Suggest an edit')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: NestedScrollView(
        headerSliverBuilder: (_, __) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 250.0,
              pinned: true,
              leading: SliverAppBarComponent(
                hiddenChild: IconButton(
                  padding: EdgeInsets.only(left: 6.0),
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
                expandedChild: Container(
                  padding: EdgeInsets.only(left: 6.0),
                  child: RawMaterialButton(
                      fillColor: Colors.black38,
                      shape: CircleBorder(),
                      onPressed: () {},
                      child: Icon(Icons.arrow_back, color: Colors.white)),
                ),
              ),
              actions: <Widget>[
                SliverAppBarComponent(
                    hiddenChild: Container(
                      padding: EdgeInsets.only(right: 6.0),
                      width: 56.0,
                      child: IconButton(
                        icon: Icon(Icons.favorite),
                        onPressed: () {},
                      ),
                    ),
                    expandedChild: Container(
                      padding: EdgeInsets.only(right: 6.0),
                      width: 56.0,
                      child: RawMaterialButton(
                          fillColor: Colors.black38,
                          shape: CircleBorder(),
                          onPressed: () {},
                          child:
                              Icon(Icons.favorite_border, color: Colors.white)),
                    )),
              ],
              title: SliverAppBarComponent(
                hiddenChild: Text('HB0001 – Prince Arthur',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                expandedChild: Text(''),
              ),
              flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  centerTitle: true,
                  background: Image.asset(
                    'assets/images/station.png',
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  'HB0001 – Prince Arthur',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  'CP4300',
                  style: TextStyle(fontSize: 15, color: Color(0xFF9B9B9B)),
                ),
                trailing: Column(
                  children: <Widget>[
                    SizedBox(height: 5.0),
                    Container(
                      height: 22.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: Color(0xFFB0BEC5)),
                      child: Center(
                        child: Text(
                          'Unavailable',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/dollarSign.png',
                          width: 36,
                          height: 36,
                        ),
                        SizedBox(height: 15.0),
                        Text('\$1.00',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black.withOpacity(0.87))),
                        Text('price')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/lightning.png',
                          width: 36,
                          height: 36,
                        ),
                        SizedBox(height: 15.0),
                        Text('7.2 kW',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black.withOpacity(0.87))),
                        Text('max power')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/socket.png',
                          width: 36,
                          height: 36,
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          'Level 3',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.87)),
                        ),
                        Text('CCS + CHAdeMO')
                      ],
                    ),
                  ),
                ],
              ),
              Divider(),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: itemsList,
                ),
              )
//              Expanded(
//                child: ListView.builder(
//                    shrinkWrap: true,
//                    scrollDirection: Axis.vertical,
//                    itemCount: listIcons.length,
//                    itemBuilder: (BuildContext context, int index) {
//                      return ListTile(
//                        leading: Icon(
//                          listIcons[index],
//                          color: Theme.of(context).primaryColor,
//                        ),
//                        title: listStrings[index].contains('@')
//                            ? RichText(
//                                text: TextSpan(
//                                text: listStrings[index].split(', ')[0] + ', ',
//                                children: <TextSpan>[
//                                  TextSpan(
//                                      text: listStrings[index].split(', ')[1],
//                                      style: TextStyle(
//                                          fontWeight: FontWeight.bold,
//                                          color:
//                                              Theme.of(context).primaryColor))
//                                ],
//                                style: TextStyle(
//                                    fontSize: 15, color: Colors.black),
//                              ))
//                            : Text(
//                                listStrings[index],
//                                style: TextStyle(fontSize: 15),
//                              ),
//                      );
//                    }),
//              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
      ),
    );
  }
}

class SliverAppBarComponent extends StatefulWidget {
  final Widget hiddenChild;
  final Widget expandedChild;
  const SliverAppBarComponent({
    Key key,
    @required this.hiddenChild,
    @required this.expandedChild,
  }) : super(key: key);
  @override
  _SliverAppBarComponentState createState() => _SliverAppBarComponentState();
}

class _SliverAppBarComponentState extends State<SliverAppBarComponent> {
  ScrollPosition _position;
  bool _visible;
  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _removeListener();
    _addListener();
  }

  void _addListener() {
    _position = Scrollable.of(context)?.position;
    _position?.addListener(_positionListener);
    _positionListener();
  }

  void _removeListener() {
    _position?.removeListener(_positionListener);
  }

  void _positionListener() {
    final FlexibleSpaceBarSettings settings =
        context.dependOnInheritedWidgetOfExactType();
    bool visible =
        settings == null || settings.currentExtent <= settings.minExtent;
    if (_visible != visible) {
      setState(() {
        _visible = visible;
      });
    }
  }

  @override
  Widget build(BuildContext context) =>
      _visible ? widget.hiddenChild : widget.expandedChild;
}
