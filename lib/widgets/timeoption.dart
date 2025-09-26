import 'package:flutter/material.dart';
import 'package:contadorxd/utils/utils.dart';

class Timeoption extends StatelessWidget {
  double selectedTime = 300;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: selectableTimes.map((time) {
          return Container(
            margin: EdgeInsets.only(left: 15),
            width: 70,
            height: 50,
            decoration: int.parse(time) == selectedTime
                ? BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white30),
                    borderRadius: BorderRadius.circular(5),
                  )
                : BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white30),
                    borderRadius: BorderRadius.circular(5),
                  ),
            child: Center(
              child: Text(
                (int.parse(time) ~/ 60).toString(),
                style: textStyle(
                  25,
                  Colors.deepPurpleAccent[100],
                  FontWeight.w800,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
