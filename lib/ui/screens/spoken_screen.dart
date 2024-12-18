import 'package:english_learning_app/ui/utils/app_color.dart';
import 'package:english_learning_app/ui/widgets/daily_updated_item.dart';
import 'package:english_learning_app/ui/widgets/spoken_must_study_item.dart';
import 'package:english_learning_app/ui/widgets/spoken_other_study_item.dart';
import 'package:english_learning_app/ui/widgets/tools_item.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SpokenScreen extends StatefulWidget {
  const SpokenScreen({super.key});

  @override
  State<SpokenScreen> createState() => _SpokenScreenState();
}

class _SpokenScreenState extends State<SpokenScreen> {
  final int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _buildDailyUpdatedSection(),
            const SizedBox(height: 20),
            _buildMustStudySection(),
            const SizedBox(height: 20),
            _buildToolsSection(),
            const SizedBox(height: 20),
            _buildOtherStudy(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildDailyUpdatedSection() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Daily Updated',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'WrightFunk',
                  fontSize: 25,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: AppColor.primaryColor,
                size: 35,
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        _buildDailyUpdatedItems(),
        const SizedBox(height: 12),
        AnimatedSmoothIndicator(
          activeIndex: _selectIndex,
          count: 3,
          effect: const WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            spacing: 5,
            dotColor: Colors.blueGrey,
            activeDotColor: AppColor.primaryColor,
            paintStyle: PaintingStyle.fill,
          ),
        ),
      ],
    );
  }

  Widget _buildDailyUpdatedItems() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            DailyUpdatedItem(
              color: LinearGradient(end: Alignment(5, 5), colors: [
                Colors.lightBlueAccent,
                Colors.lightBlue,
              ]),
              icon: Icons.menu_book_rounded,
              title: 'Today Lesson',
            ),
            SizedBox(width: 10),
            DailyUpdatedItem(
              color: LinearGradient(end: Alignment(5, 3), colors: [
                Colors.blue,
                Colors.lightBlue,
              ]),
              icon: Icons.library_books,
              title: 'Learn Form Story',
            ),
            SizedBox(width: 10),
            DailyUpdatedItem(
              color: LinearGradient(end: Alignment(-5, 2), colors: [
                Colors.amber,
                Colors.yellowAccent,
              ]),
              icon: Icons.chat_bubble_outlined,
              title: 'Daily Conversion',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMustStudySection() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Must Study',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'WrightFunk',
                  fontSize: 25,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: AppColor.primaryColor,
                size: 35,
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        _buildMustStudyItems(),
        const SizedBox(height: 12),
        AnimatedSmoothIndicator(
          activeIndex: _selectIndex,
          count: 3,
          effect: const WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            spacing: 5,
            dotColor: Colors.grey,
            activeDotColor: AppColor.primaryColor,
            paintStyle: PaintingStyle.fill,
          ),
        ),
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
            SpokenMustStudyItem(
              icon: Icons.picture_as_pdf,
              iconColor: Colors.red,
              title: 'PDF Courses',
            ),
            SizedBox(width: 10),
            SpokenMustStudyItem(
              icon: Icons.description,
              iconColor: Colors.blue,
              title: 'Daily Use Sentence',
            ),
            SizedBox(width: 10),
            SpokenMustStudyItem(
              icon: Icons.book,
              iconColor: Colors.green,
              title: 'Practice Exercise',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToolsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Tools',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'WrightFunk',
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(height: 12),
        _buildToolItems(),
      ],
    );
  }

  Widget _buildToolItems() {
    return const Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              ToolsItem(
                icon: Icons.g_translate_rounded,
                iconColor: Colors.blue,
                title: 'Translator',
              ),
              SizedBox(width: 15),
              ToolsItem(
                icon: Icons.library_books,
                iconColor: Colors.red,
                title: 'Dictionary',
              ),
              SizedBox(width: 15),
              ToolsItem(
                icon: Icons.record_voice_over,
                iconColor: Colors.amber,
                title: 'Pronunciation',
              ),
              SizedBox(width: 15),
              ToolsItem(
                icon: Icons.gamepad,
                iconColor: Colors.green,
                title: 'Game',
              ),
            ],
          ),
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpokenOtherStudyItem(
                icon: Icons.my_library_books_rounded,
                iconColor: Colors.blue,
                title: 'Grammar',
              ),
              SizedBox(width: 10),
              SpokenOtherStudyItem(
                icon: Icons.collections_bookmark_rounded,
                iconColor: Colors.red,
                title: 'Vocabulary',
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpokenOtherStudyItem(
                icon: Icons.bookmarks,
                iconColor: Colors.amber,
                title: 'Phrases',
              ),
              SizedBox(width: 10),
              SpokenOtherStudyItem(
                icon: Icons.settings_voice_rounded,
                iconColor: Colors.green,
                title: 'Conversation',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
