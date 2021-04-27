import 'package:DevQuiz/home/widgets/appbar/appbar.widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:DevQuiz/home/widgets/quiz_card/quiz_card_widget.dart';
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
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 32,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  LevelButtonWidget(label: 'Fácil'),
                  SizedBox(width: 10),
                  LevelButtonWidget(label: 'Médio'),
                  SizedBox(width: 10),
                  LevelButtonWidget(label: 'Difícil'),
                  SizedBox(width: 10),
                  LevelButtonWidget(label: 'Perito'),
                ],
              ),
            ),
            QuizCardWidget(),
          ],
        ),
      ),
    );
  }
}
