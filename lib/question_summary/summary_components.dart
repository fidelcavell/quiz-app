import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/question_summary/questions_identifier.dart';

class SummaryComponents extends StatelessWidget {
  const SummaryComponents({required this.itemData, super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionsIdentifier(
              questionIndex: itemData['question_index'] as int,
              isCorrectAnswer: isCorrectAnswer),
          const SizedBox(width: 10),
          Expanded(
            // to fix width overflow
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  itemData['user_answer'] as String,
                  style: GoogleFonts.lato(
                      color: const Color.fromARGB(200, 255, 255, 255),
                      fontSize: 14),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: GoogleFonts.lato(
                      color: const Color.fromARGB(200, 88, 244, 255),
                      fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
