import 'dart:convert';

import 'package:al_quran_app/features/quran/data/models/response/surah_response_dto.dart';
import 'package:al_quran_app/shared_libraries/core/network/models/api_response.dart';
import 'package:al_quran_app/shared_libraries/utils/resources/assets.gen.dart';
import 'package:flutter/services.dart';

abstract class QuranLocalDataSource {
  Future<ApiResponse<List<SurahDataDto>>> getSurahFromJson();
}

class QuranLocalDataSourceImpl implements QuranLocalDataSource {
  @override
  Future<ApiResponse<List<SurahDataDto>>> getSurahFromJson() async {
    try {
      var jsonData = await rootBundle.loadString(Assets.json.surah);
      var data = jsonDecode(jsonData);
      return ApiResponse.fromJson(
        data,
        onDataDeserialized: (json) => List<SurahDataDto>.from(
          json.map(
            (x) => SurahDataDto.fromJson(x),
          ),
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
