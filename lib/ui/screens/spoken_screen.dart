import 'package:english_learning_app/ui/utils/app_color.dart';
import 'package:english_learning_app/ui/widgets/daily_updated_section.dart';
import 'package:flutter/material.dart';

class SpokenScreen extends StatelessWidget {
  const SpokenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          _buildDailyUpdatedSection(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDailyUpdatedSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Daily Updated',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'WrightFunk',
                  fontSize: 25,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward,
                  color: AppColor.primaryColor,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        _buildDailyUpdatedItems(),
      ],
    );
  }

  Widget _buildDailyUpdatedItems() {
    return const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              DailyUpdatedSection(
                color: LinearGradient(
                    end: Alignment(5, 5),
                    colors: [
                      Colors.lightBlueAccent,
                      Colors.lightBlue,
                    ]
                ),
                icon: Icons.menu_book_rounded,
                title: 'Today Lesson',
              ),
              SizedBox(width: 10),
              DailyUpdatedSection(
                color: LinearGradient(
                  end: Alignment(5, 3),
                    colors: [
                      Colors.blue,
                      Colors.lightBlue,
                    ]
                ),
                icon: Icons.library_books,
                title: 'Learn Form Story',
              ),
              SizedBox(width: 10),
              DailyUpdatedSection(
                color: LinearGradient(
                    end: Alignment(-5, 2),
                    colors: [
                      Colors.amber,
                      Colors.yellowAccent,
                    ]
                ),
                icon: Icons.chat_bubble_outlined,
                title: 'Daily Conversion',
              ),
            ],
          ),
        ),
      );
  }
}
