import 'package:al_quran_app/features/quran/domain/entities/response/surah_response_entity.dart';
import 'package:equatable/equatable.dart';

class SurahDetailsArgument extends Equatable {
  final SurahDataEntity surahDataEntity;

  const SurahDetailsArgument({required this.surahDataEntity});
  @override
  List<Object?> get props => [surahDataEntity];
}
