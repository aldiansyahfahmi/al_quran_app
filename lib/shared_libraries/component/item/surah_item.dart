import 'package:al_quran_app/features/quran/domain/entities/response/surah_response_entity.dart';
import 'package:al_quran_app/shared_libraries/component/divider/custom_divider.dart';
import 'package:al_quran_app/shared_libraries/utils/resources/colors.dart';
import 'package:al_quran_app/shared_libraries/utils/resources/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SurahItem extends StatelessWidget {
  const SurahItem({
    super.key,
    required this.surah,
    required this.divider,
    required this.onTap,
  });

  final SurahDataEntity surah;
  final bool divider;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            color: ColorName.white,
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Container(
                        height: 35.h,
                        width: 35.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorName.white,
                          border: Border.all(
                            color: ColorName.purple,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            surah.number.toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: ColorName.purple,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              surah.name.transliteration.id,
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              '${surah.revelation.id.toUpperCase()} • ${surah.numberOfVerses} AYAT',
                              style: TextStyle(
                                color: ColorName.gray,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        surah.name.short,
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: ColorName.purple,
                          fontFamily: FontFamily.noorEHidayat,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorName.purple.withOpacity(0.12),
                        ),
                        child: const Icon(
                          Icons.volume_up,
                          color: ColorName.purple,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        if (divider == true) const CustomDivider(),
      ],
    );
  }
}
