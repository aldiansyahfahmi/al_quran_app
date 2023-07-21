import 'package:al_quran_app/features/quran/data/repositories/quran_repository_impl.dart';
import 'package:al_quran_app/features/quran/domain/entities/response/surah_response_entity.dart';
import 'package:al_quran_app/features/quran/domain/repositories/quran_repository.dart';
import 'package:al_quran_app/shared_libraries/utils/error/failure_response.dart';
import 'package:al_quran_app/shared_libraries/utils/usecase/usecase.dart';
import 'package:dartz/dartz.dart';

class GetSurahFromJsonUseCase extends UseCase<List<SurahDataEntity>, NoParams> {
  final QuranRepository quranRepository = QuranRepositoryImpl();
  @override
  Future<Either<FailureResponse, List<SurahDataEntity>>> call(
          NoParams params) async =>
      await quranRepository.getSurahFromJson();
}
