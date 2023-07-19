import 'package:al_quran_app/shared_libraries/utils/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorName.purple,
          title: Text(
            "BACA QUR'AN",
            style: TextStyle(
              color: ColorName.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          bottom: const TabBar(
            indicatorColor: ColorName.white,
            tabs: <Widget>[
              Tab(
                text: 'SURAH',
              ),
              Tab(
                text: 'JUZ',
              ),
              Tab(
                text: 'PENANDA',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("SURAH"),
            ),
            Center(
              child: Text("JUZ"),
            ),
            Center(
              child: Text("PENANDA"),
            ),
          ],
        ),
      ),
    );
  }
}
