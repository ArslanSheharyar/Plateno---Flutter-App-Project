import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PlanetsInfo extends StatelessWidget {
  PlanetsInfo({
    Key key,
    this.imageName,
    this.bgcolor,
    this.planetName,
    this.planetnameColor,
    this.planetDescription,
    this.planetDescriptionColor,
  }) : super(key: key);
  final String imageName;
  final Color bgcolor;
  final String planetName;
  final Color planetnameColor;
  final String planetDescription;
  final Color planetDescriptionColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              imageName,
              width: 300.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Planet",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  planetName,
                  style: TextStyle(
                      fontSize: 50.0,
                      color: planetnameColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Divider(
                  color: Colors.white,
                ),
                Text(
                  planetDescription,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
