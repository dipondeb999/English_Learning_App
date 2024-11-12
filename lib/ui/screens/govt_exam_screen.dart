import 'package:english_learning_app/ui/widgets/daily_updates_item.dart';
import 'package:english_learning_app/ui/widgets/govt_must_study_item.dart';
import 'package:english_learning_app/ui/widgets/govt_other_study_item.dart';
import 'package:flutter/material.dart';

class GovtExamScreen extends StatelessWidget {
  const GovtExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _buildDailyUpdatesSection(),
            const SizedBox(height: 20),
            _buildMustStudySection(),
            const SizedBox(height: 20),
            _buildOtherStudy(),
            const SizedBox(height: 20),
          ],
        ),
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

  Widget _buildMustStudySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Must Study',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'WrightFunk',
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(height: 12),
        _buildMustStudyItems(),
      ],
    );
  }

  Widget _buildMustStudyItems() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            GovtMustStudyItem(
              title: 'NOTES HINDI',
              icon: Icons.event_note_sharp,
              color: LinearGradient(
                colors: [
                  Colors.blueAccent,
                  Colors.blue,
                ],
              ),
            ),
            SizedBox(width: 10),
            GovtMustStudyItem(
              title: 'NOTES ENGLISH',
              icon: Icons.note_add_sharp,
              color: LinearGradient(
                end: Alignment(1, 3),
                colors: [
                  Colors.amberAccent,
                  Colors.red,
                ],
              ),
            ),
            SizedBox(width: 10),
            GovtMustStudyItem(
              title: 'MCQ TEST',
              icon: Icons.note_alt_sharp,
              color: LinearGradient(
                end: Alignment(2, 0),
                colors: [
                  Colors.greenAccent,
                  Colors.green,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOtherStudy() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Other Study',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'WrightFunk',
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(height: 12),
        _buildOtherStudyItems(),
      ],
    );
  }

  Widget _buildOtherStudyItems() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          GovtOtherStudyItem(
            icon: Icons.picture_as_pdf_rounded,
            title: 'PDF Books & Writers',
          ),
        ],
      ),
    );
  }
}
