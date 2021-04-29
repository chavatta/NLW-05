import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widgets/scoreCard/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidgets extends PreferredSize {
  AppBarWidgets()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 161,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.maxFinite,
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "Olá, ",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                              text: "Chavatta!",
                              style: AppTextStyles.titleBold,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://scontent.fcgh9-1.fna.fbcdn.net/v/t1.6435-9/48343412_2388283224519958_3454102137842171904_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=yyk9i9AVTNgAX8c7sW9&_nc_ht=scontent.fcgh9-1.fna&oh=ffea3cc95fb54f953dbd29317c320fab&oe=60ADB419"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(alignment: Alignment(0.0, 1.0), child: ScoreCardWidget())
              ],
            ),
          ),
        );
}
