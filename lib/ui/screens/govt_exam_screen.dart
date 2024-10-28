import 'package:english_learning_app/ui/widgets/daily_updates_item.dart';
import 'package:flutter/material.dart';

class GovtExamScreen extends StatelessWidget {
  const GovtExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          _buildDailyUpdatesSection(),
          const SizedBox(height: 20),
          // _buildMustStudySection(),
          // const SizedBox(height: 20),
          // _buildToolsSection(),
          // const SizedBox(height: 20),
          // _buildOtherStudy(),
          // const SizedBox(height: 20),
        ],
      ),
    );
  }
  Widget _buildDailyUpdatesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Daily Updates',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'WrightFunk',
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(height: 12),
        _buildDailyUpdatedItems(),
      ],
    );
  }

  Widget _buildDailyUpdatedItems() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            DailyUpdatesItem(
              icon: Icons.camera_alt,
              iconColor: Colors.blue,
              title: 'Daily Test',
            ),
            SizedBox(width: 10),
            DailyUpdatesItem(
              icon: Icons.my_library_books_rounded,
              iconColor: Colors.amber,
              title: 'Exam Target Question',
            ),
            SizedBox(width: 10),
            DailyUpdatesItem(
              icon: Icons.question_answer_rounded,
              iconColor: Colors.greenAccent,
              title: 'Previous Asked Question',
            ),
          ],
        ),
      ),
    );
  }
}