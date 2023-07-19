import 'package:al_quran_app/shared_libraries/component/custom_button.dart';
import 'package:al_quran_app/shared_libraries/utils/helpers/url_helper.dart';
import 'package:al_quran_app/shared_libraries/utils/resources/assets.gen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16),
        child: GestureDetector(
          onTap: () => UrlHelper.launch('https://aldev.tempatkoding.com/'),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Create with ❤️ by '),
              Text(
                'Aldi',
                style: TextStyle(
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
            const SizedBox(
              height: 48.0,
            ),
            const CustomButton(
              text: "BACA QUR'AN",
            ),
            const SizedBox(
              height: 8.0,
            ),
            const CustomButton(text: 'TERAKHIR DIBACA'),
            const SizedBox(
              height: 8.0,
            ),
            const CustomButton(text: 'JADWAL SHOLAT'),
            const SizedBox(
              height: 8.0,
            ),
            const CustomButton(text: 'PENGATURAN'),
          ],
        ),
      ),
    );
  }
}
