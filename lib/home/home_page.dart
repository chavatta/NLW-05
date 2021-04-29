import 'package:DevQuiz/home/widgets/appBar/app_bar_widgets.dart';
import 'package:DevQuiz/home/widgets/levelButton/level_button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgets(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Container(
          child: Column(
            children: [
              LevelButtonWidget(
                label: "Perito",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
