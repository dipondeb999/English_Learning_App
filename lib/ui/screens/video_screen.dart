import 'package:english_learning_app/ui/utils/app_color.dart';
import 'package:english_learning_app/ui/widgets/video_section.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildDailyUpdatedSection(),
            const SizedBox(height: 20),
            _buildMustStudySection(),
            const SizedBox(height: 20),
            _buildOtherStudySection(),
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
        _buildAllVideos(),
      ],
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
        _buildAllVideos(),
      ],
    );
  }

  Widget _buildOtherStudySection() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Other Study',
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
        _buildAllVideos(),
      ],
    );
  }

  Widget _buildAllVideos() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            VideoSection(),
            VideoSection(),
            VideoSection(),
          ],
        ),
      ),
    );
  }
}
