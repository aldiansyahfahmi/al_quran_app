import 'package:al_quran_app/features/quran/data/datasources/local/quran_local_datasource.dart';
import 'package:al_quran_app/features/quran/data/datasources/remote/quran_remote_datasource.dart';
import 'package:al_quran_app/features/quran/data/mapper/quran_mapper.dart';
import 'package:al_quran_app/features/quran/domain/entities/response/surah_response_entity.dart';
import 'package:al_quran_app/features/quran/domain/repositories/quran_repository.dart';
import 'package:al_quran_app/shared_libraries/utils/constants/app_constants.dart';
import 'package:al_quran_app/shared_libraries/utils/error/failure_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class QuranRepositoryImpl implements QuranRepository {
  final QuranMapper quranMapper = QuranMapper();
  final QuranRemoteDataSource quranRemoteDataSource =
      QuranRemoteDataSourceImpl();
  final QuranLocalDataSource quranLocalDataSource = QuranLocalDataSourceImpl();
  @override
  Future<Either<FailureResponse, List<SurahDataEntity>>> getSurah() async {
    try {
      final response = await quranRemoteDataSource.getSurah();
      return Right(quranMapper.mapSurahDataDtoToEntity(response.data!));
    } on DioException catch (error) {
      return Left(
        FailureResponse(
          errorMessage:
              error.response?.data[AppConstants.errorKey.message]?.toString() ??
                  error.response.toString(),
          statusCode: error.response?.statusCode ?? 500,
        ),
      );
    }
  }

  @override
  Future<Either<FailureResponse, SurahDataEntity>> getSurahDetail(
      {required int surahNumber}) async {
    try {
      final response =
          await quranRemoteDataSource.getSurahDetails(surahNumber: surahNumber);
      return Right(
        quranMapper.mapSurahDataDtoToSurahDataEntity(response.data!),
      );
    } on DioException catch (error) {
      return Left(
        FailureResponse(
          errorMessage:
              error.response?.data[AppConstants.errorKey.message]?.toString() ??
                  error.response.toString(),
          statusCode: error.response?.statusCode ?? 500,
        ),
      );
    }
  }

  @override
  Future<Either<FailureResponse, List<SurahDataEntity>>>
      getSurahFromJson() async {
    try {
      final response = await quranLocalDataSource.getSurahFromJson();
      return Right(quranMapper.mapSurahDataDtoToEntity(response.data!));
    } on DioException catch (error) {
      return Left(
        FailureResponse(
          errorMessage:
              error.response?.data[AppConstants.errorKey.message]?.toString() ??
                  error.response.toString(),
          statusCode: error.response?.statusCode ?? 500,
        ),
      );
    }
  }
}
