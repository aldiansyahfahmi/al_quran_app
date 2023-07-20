import 'package:al_quran_app/features/quran/domain/entities/response/surah_response_entity.dart';
import 'package:al_quran_app/shared_libraries/utils/error/failure_response.dart';
import 'package:dartz/dartz.dart';

abstract class QuranRepository {
  Future<Either<FailureResponse, List<SurahDataEntity>>> getSurah();
  Future<Either<FailureResponse, SurahDataEntity>> getSurahDetail(
      {required int surahNumber});
}
