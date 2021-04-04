import 'package:flutter/material.dart';

class CircleRound extends StatelessWidget {
  final String image;
  final String text;
  CircleRound({this.image, this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(19),
                child: Image.asset(image),
              ),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Color(0xff9abffe),
                  borderRadius: BorderRadius.circular(23.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffcadefe),
                      blurRadius: 1.2,
                      offset: Offset(0, 2),
                    )
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ],
    );
  }
}
