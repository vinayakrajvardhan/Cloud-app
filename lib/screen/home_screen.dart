
import 'package:cloudy_app/widgets/circle_round.dart';
import 'package:cloudy_app/widgets/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(color: Color(0xff80affb)),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    size: 24,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                "Next 7 Days",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage("assets/m.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(20, -90, 0),
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RoundButton(
                                color: Color(0xff7faefd),
                                text1: "27",
                                text2: "SUN",
                                image: "assets/c2.jpg",
                                textColor: Colors.white,
                              ),
                              RoundButton(
                                color: Colors.white,
                                text1: "28",
                                text2: "MON",
                                image: "assets/m1.jpg",
                                textColor: Color(0xff8e85ee),
                              ),
                              RoundButton(
                                color: Color(0xff7faefd),
                                text1: "29",
                                text2: "TUE",
                                image: "assets/c4.jpg",
                                textColor: Colors.white,
                              ),
                              RoundButton(
                                color: Color(0xff7faefd),
                                text1: "30",
                                text2: "WED",
                                image: "assets/m3.jpg",
                                textColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height - 470,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(48.0),
                        topRight: Radius.circular(48.0),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 120,
                  left: 20,
                  right: 20,
                  child: Container(
                    transform: Matrix4.translationValues(0, 50, 0),
                    height: 350,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color(0xff98bdf7),
                      borderRadius: BorderRadius.circular(23),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffcadefe),
                          blurRadius: 1.3,
                          offset: Offset(9, 22),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          transform: Matrix4.translationValues(-10, -37, 0),
                          height: 140,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image.asset(
                                  "assets/sc.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                transform: Matrix4.translationValues(0, 36, 0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "28 ",
                                          style: TextStyle(
                                            fontSize: 70,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "o",
                                          style: TextStyle(
                                            fontSize: 40,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Feels like 32.",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                              transform: Matrix4.translationValues(12, -30, 0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Heavy Rain",
                                        style: TextStyle(
                                          fontSize: 33,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Tonight",
                                        style: TextStyle(
                                          fontSize: 23,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                        Container(
                          height: 140,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleRound(
                                image: "assets/c2.jpg",
                                text: "20%",
                              ),
                              CircleRound(
                                image: "assets/c1.jpg",
                                text: "28%",
                              ),
                              CircleRound(
                                image: "assets/c5.jpg",
                                text: "14%",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(23),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xfff6f5f7),
                        blurRadius: 3.0,
                        offset: Offset(0, 15),
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "29 Sep,Monday",
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "17/22",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              "assets/c2.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Cloudy",
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(23),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xfff6f5f7),
                        blurRadius: 3.0,
                        offset: Offset(0, 15),
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "30 Sep,Tuesday",
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "26/32",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              "assets/c1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Sunny",
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
