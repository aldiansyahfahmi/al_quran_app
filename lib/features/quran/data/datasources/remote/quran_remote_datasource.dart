import 'dart:convert';

import 'package:al_quran_app/di/injections.dart';
import 'package:al_quran_app/features/quran/data/models/response/surah_response_dto.dart';
import 'package:al_quran_app/shared_libraries/core/network/models/api_response.dart';
import 'package:al_quran_app/shared_libraries/utils/constants/app_constants.dart';
import 'package:dio/dio.dart';

abstract class QuranRemoteDataSource {
  Future<ApiResponse<List<SurahDataDto>>> getSurah();
  Future<ApiResponse<SurahDataDto>> getSurahDetails({required int surahNumber});
}

class QuranRemoteDataSourceImpl implements QuranRemoteDataSource {
  final Dio dio = sl();
  @override
  Future<ApiResponse<List<SurahDataDto>>> getSurah() async {
    try {
      final response = await dio.get(AppConstants.appApi.surah);
      return ApiResponse.fromJson(
        jsonDecode(response.data),
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

  @override
  Future<ApiResponse<SurahDataDto>> getSurahDetails(
      {required int surahNumber}) async {
    try {
      final response = await dio.get(
        '${AppConstants.appApi.surah}/$surahNumber',
      );
      return ApiResponse.fromJson(
        jsonDecode(response.data),
        onDataDeserialized: (json) => SurahDataDto.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }
}
