import 'package:flutter/material.dart';
import 'package:pomodoroapp/services/timerservice.dart';
import 'package:pomodoroapp/utils/utils.dart';
import 'package:provider/provider.dart';

class Progresswidget extends StatelessWidget {
  const Progresswidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${provider.rounds}/4",
              style: textStyle(30, Colors.white, FontWeight.w700),
            ),
            Text(
              "${provider.gool}/12",
              style: textStyle(30, Colors.white, FontWeight.w700),
            ),
          ],
        ),
        SizedBox(height: 10),

        //fila 2
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Round", style: textStyle(24, Colors.white, FontWeight.w700)),
            Text("Gool", style: textStyle(24, Colors.white, FontWeight.w700)),
          ],
        ),
      ],
    );
  }
}
