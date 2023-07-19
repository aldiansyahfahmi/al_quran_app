import 'package:al_quran_app/shared_libraries/component/button/custom_button.dart';
import 'package:al_quran_app/shared_libraries/utils/helpers/url_helper.dart';
import 'package:al_quran_app/shared_libraries/utils/navigation/router/home_router.dart';
import 'package:al_quran_app/shared_libraries/utils/resources/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeRouer = HomeRouterImpl();
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16),
        child: GestureDetector(
          onTap: () => UrlHelper.launch('https://aldev.tempatkoding.com/'),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Create with ❤️ by '),
              Text(
                'Aldi',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.icons.quran.svg(),
            SizedBox(
              height: 48.h,
            ),
            CustomButton(
              text: "BACA QUR'AN",
              onTap: () => homeRouer.navigateToQuranScreen(),
            ),
            SizedBox(
              height: 8.h,
            ),
            CustomButton(
              text: 'TERAKHIR DIBACA',
              onTap: () => {},
            ),
            SizedBox(
              height: 8.h,
            ),
            CustomButton(
              text: 'JADWAL SHOLAT',
              onTap: () => {},
            ),
            SizedBox(
              height: 8.h,
            ),
            CustomButton(
              text: 'PENGATURAN',
              onTap: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
