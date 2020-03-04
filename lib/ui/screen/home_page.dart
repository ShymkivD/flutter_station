import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
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
        body: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            color: Colors.amber,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('HB0001 – Prince Arthur'),
                  subtitle: Text('CP4300'),
                ),
                ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.place,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        '845 Rue Sherbrooke O, Montreal',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.place,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        '845 Rue Sherbrooke O, Montreal',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.place,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        '845 Rue Sherbrooke O, Montreal',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.place,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        '845 Rue Sherbrooke O, Montreal',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.place,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        '845 Rue Sherbrooke O, Montreal',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.place,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        '845 Rue Sherbrooke O, Montreal',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.place,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        '845 Rue Sherbrooke O, Montreal',
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
              ],
            ),
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
                child: Text('Reserve'.toUpperCase()),
              ),
              SizedBox(
                width: 15.0,
              ),
              RaisedButton(
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
                child: Text('Start charge'.toUpperCase()),
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

//  @override
//  Widget build(BuildContext context) {
//    return Visibility(
//      visible: _visible,
//      child: widget.child,
//    );
//  }
  @override
  Widget build(BuildContext context) {
    return _visible ? widget.hiddenChild : widget.expandedChild;
  }
}
