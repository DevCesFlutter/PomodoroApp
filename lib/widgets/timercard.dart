import 'package:contadorxd/utils/utils.dart';
import 'package:flutter/material.dart';

class Timercard extends StatelessWidget {
  const Timercard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Focus", style: textStyle(35, Colors.white, FontWeight.w700)),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "00",
                  style: textStyle(
                    70,
                    Colors.deepPurpleAccent,
                    FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Text(":", style: textStyle(60, Colors.black26, FontWeight.bold)),
            SizedBox(width: 10),
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "12",
                  style: textStyle(
                    70,
                    Colors.deepPurpleAccent,
                    FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
