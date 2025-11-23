import 'package:flutter/material.dart';
import 'package:home_task/task2/questionnaire/view/questionnaire_page.dart';

import 'pages/new_document_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const QuestionnairePage(questionnaireStateText: "123"),
    );
  }
}