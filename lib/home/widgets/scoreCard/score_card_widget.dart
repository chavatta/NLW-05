import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/home/widgets/Chart/chart_widgets.dart';
import 'package:flutter/material.dart';

class ScoreCardWidget extends StatefulWidget {
  ScoreCardWidget({Key? key}) : super(key: key);

  @override
  _ScoreCardWidgetState createState() => _ScoreCardWidgetState();
}

class _ScoreCardWidgetState extends State<ScoreCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Expanded(flex: 1, child: ChartWidgets()),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vamos Começar",
                        style: AppTextStyles.heading,
                      ),
                      Text("Complete os desafios e avançe em conhecimento!",
                          style: AppTextStyles.body),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
