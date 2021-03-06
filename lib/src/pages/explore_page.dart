import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_soular_app/src/theme/color/light_color.dart';

<<<<<<< Updated upstream
class ExplorePage extends StatelessWidget {
  ExplorePage({Key key}) : super(key: key);

=======

class ExplorePage extends StatefulWidget {

  
   ExplorePage(this.jwt, this.payload);
  // ExplorePage({Key key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();

   final String jwt;
  final Map<String, dynamic> payload;

    factory ExplorePage.fromBase64(String jwt) =>
    ExplorePage(
      jwt,
      json.decode(
        ascii.decode(
          // get the username ?
          base64.decode(base64.normalize(jwt.split(".")[1]))
        )
      )
    );
}

class _ExplorePageState extends State<ExplorePage>{
>>>>>>> Stashed changes
  double width;

  Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          height: 120,
          width: width,
          decoration: BoxDecoration(
            color: LightColor.yellow,
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 10,
                  right: -120,
                  child: _circularContainer(300, LightColor.yellow)),
              Positioned(
                  top: -60,
                  left: -65,
                  child: _circularContainer(width * .5, LightColor.yellow)),
              Positioned(
                  top: -230,
                  right: -30,
                  child: _circularContainer(width * .7, Colors.transparent,
                      borderColor: Colors.white38)),
              Positioned(
                  top: 50,
                  left: 0,
                  child: Container(
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        children: <Widget>[
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Explore",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              ))
                        ],
                      ))),
            ],
          )),
    );
  }

<<<<<<< Updated upstream
=======
  Widget _grid(String jwt, Map<String, dynamic> payload) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 17),
      height: 1000.0,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                flex: 2,
                child: GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(30),
                        child: InkWell(
                            onTap: () {
                              
                            },
                            child: Column(children: <Widget>[
                              Icon(MdiIcons.help, color: Colors.grey),
                              Spacer(),
                              Text(
                                "Help Me",
                              )
                            ])),
                      ),
                      Container(
                        padding: EdgeInsets.all(30),
                        child: InkWell(
                            onTap: () {
                                Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => MarketPlace(this.jwt, this.payload)));

                            },
                            child: Column(children: <Widget>[
                          
                              Icon(MdiIcons.store, color: Colors.grey),
                              Spacer(),
                              
                              Text(
                                "Energy Store",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.center
                              )
                            ])),
                      )
                    ])),
          ],
        ),
      ),
    );
  }

>>>>>>> Stashed changes
  Widget _circularContainer(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
    );
  }



  BottomNavigationBarItem _bottomIcons(IconData icon) {
    return BottomNavigationBarItem(
        //  backgroundColor: Colors.blue,
        icon: Icon(icon),
        title: Text(""));
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
       
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: <Widget>[
              _header(context),
              SizedBox(height: 20),
            ],
          ),
        )));
  }
}
