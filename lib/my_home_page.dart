import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_liquid_swipe_project/logout_screen.dart';
import 'package:flutter_liquid_swipe_project/plannet_info.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pages = [
    PlanetsInfo(
      imageName: "assets/mercury.png",
      bgcolor: Color(0xFF7F7689),
      planetName: " Mercury",
      planetnameColor: Color(0xFF3A342D),
      planetDescription: "The smallest and fastest planet,\nMercury is the "
          "closest planet to the Sun \nand whips around it "
          "every \n88 Earth days",
    ),
    PlanetsInfo(
      imageName: "assets/venus.png",
      bgcolor: Color(0xFF34210B),
      planetName: "Venus",
      planetnameColor: Color(0xFFE8BB57),
      planetDescription: "Spinning in the opposite direction \n"
          "to most planets, Venus is the  \n"
          "hottest planet, and one of the"
          "and one of the \n"
          "brightest objects in the sky",
    ),
    PlanetsInfo(
      imageName: "assets/dummy2.png",
      bgcolor: Color(0xFF21323D),
      planetName: "Earth",
      planetnameColor: Color(0xFF888C76),
      planetDescription: "The place we call home, \nEarth is the third rock\n"
          "from the sun and the only planet\n"
          "with known life on it",
    ),
    PlanetsInfo(
      imageName: "assets/dummy1.png",
      bgcolor: Color(0xFF2F1B0A),
      planetName: "Mars",
      planetnameColor: Color(0xFFCC8E57),
      planetDescription: "The red planet is dusty,\n"
          "cold world with a thin\n"
          "atmosphere and is home to four NASA robots",
    ),
    PlanetsInfo(
      imageName: "assets/jupiter.png",
      bgcolor: Color(0xFF5A504B),
      planetName: "Jupiter",
      planetnameColor: Color(0xFFCC8E57),
      planetDescription: "Jupiter is a massive planet, twice the size of\n"
          "all other planets combined and has a\n"
          "centuries-old storm that is bigger than Earth",
    ),
    PlanetsInfo(
      imageName: "assets/saturn.png",
      bgcolor: Color(0xFF717574),
      planetName: "Saturn",
      planetnameColor: Color(0xFFBCB2A3),
      planetDescription: "The most recognizable\n"
          "planet with a system of icy rings, \n"
          "Saturn is a very unique \nand interesting",
    ),
    PlanetsInfo(
      imageName: "assets/uranus.png",
      bgcolor: Color(0xFF5C787C),
      planetName: "Uranus",
      planetnameColor: Color(0xFFD2F3F4),
      planetDescription: "Uranus has a very unique rotation–it\n spins on its"
          "side at an almost \n90-degree angle, unlike\n"
          "other planets.",
    ),
    PlanetsInfo(
      imageName: "assets/neptune.png",
      bgcolor: Color(0xFF1A224D),
      planetName: "Neptune",
      planetnameColor: Color(0xFF5183F7),
      planetDescription: "Neptune is now the most\n "
          "distant planet and is a cold and\n dark world "
          "nearly 3 billion miles\n "
          "from the Sun.",
    ),
    PlanetsInfo(
      imageName: "assets/dummy1.png",
      bgcolor: Color(0xFF8A7F7C),
      planetName: "Pluto",
      planetnameColor: Color(0xFFBCB2A3),
      planetDescription: "Pluto will consistently be the ninth  \nplanet to us!"
          "Smaller than Earth’s moon, \nPluto was a planet"
          "up until 2006 and has \nfive of its own moons!"
          "from the Sun.",
    ),
    LogoutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 600,
        slideIconWidget: Icon(
          Icons.arrow_back,
          size: 30.0,
          //color: Colors.white,
          color: Color(0xfff7f7f7),
        ),
        waveType: WaveType.liquidReveal,
        positionSlideIcon: 0.5,
      ),
    );
  }
}
