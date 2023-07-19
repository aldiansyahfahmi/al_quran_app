import 'package:al_quran_app/shared_libraries/utils/resources/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: ColorName.purple),
          ),
        ),
        child: const Text(
          "BACA QUR'AN",
          style: TextStyle(color: ColorName.purple),
        ),
      ),
    );
  }
}
