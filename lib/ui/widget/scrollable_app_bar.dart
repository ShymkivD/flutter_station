import 'package:flutter/material.dart';
import 'package:flutterstation/ui/widget/sliver_app_bar_component.dart';

class ScrollableAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
                  child: Icon(Icons.favorite_border, color: Colors.white)),
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
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: SliverAppBarComponent(
          expandedChild: Container(
            height: 10,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
            ),
          ),
          hiddenChild: SizedBox(),
        ),
      ),
    );
  }
}
