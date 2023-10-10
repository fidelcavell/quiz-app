import 'package:flutter/material.dart';

import 'package:quiz_app/question_summary/summary_components.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({required this.summaryData, super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox( // to fix height overflow
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryComponents(itemData: data);
          }).toList(),
        ),
      ),
    );
  }
}
