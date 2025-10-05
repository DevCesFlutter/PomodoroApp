import 'package:pomodoroapp/services/timerservice.dart';
import 'package:pomodoroapp/utils/utils.dart';
import 'package:pomodoroapp/widgets/progresswidget.dart';
import 'package:pomodoroapp/widgets/timecontroller.dart';
import 'package:pomodoroapp/widgets/timeoption.dart';
import 'package:pomodoroapp/widgets/timercard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PomoDoroScreen extends StatelessWidget {
  const PomoDoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
        title: Text(
          'PomoApp',
          style: textStyle(25, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh, color: Colors.white),
            iconSize: 40,

            onPressed: () =>
                Provider.of<TimerService>(context, listen: false).reset(),
          ),
        ],
      ),

      //body
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 15),
              Timercard(),
              SizedBox(height: 30),
              Timeoption(),
              SizedBox(height: 30),
              Timecontroller(),
              SizedBox(height: 15),
              Progresswidget(),
            ],
          ),
        ),
      ),
    );
  }
}
