import 'package:al_quran_app/shared_libraries/component/custom_button.dart';
import 'package:al_quran_app/shared_libraries/utils/resources/assets.gen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.icons.quran.svg(),
              const SizedBox(
                height: 48.0,
              ),
              const CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
