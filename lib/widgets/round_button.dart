import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final Color textColor;

  final Color color;

  RoundButton({
    this.image,
    this.text1,
    this.text2,
    this.color,
    this.textColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 80,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 0.6,
            offset: Offset(0, 1),
          ),
        ],
        color: color,
        borderRadius: BorderRadius.circular(33),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffcadefe),
                  blurRadius: 1.3,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                text1,
                style: TextStyle(
                  color: textColor,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                  color: textColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
