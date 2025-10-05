import 'package:pomodoroapp/pages/pomodoroscreen.dart';
import 'package:flutter/material.dart';
import 'package:pomodoroapp/services/timerservice.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider<TimerService>(
    create: (_) => TimerService(),
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PomoDoroScreen(),
    );
  }
}
