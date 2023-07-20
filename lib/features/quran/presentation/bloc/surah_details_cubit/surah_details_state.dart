import 'package:al_quran_app/features/quran/domain/entities/response/surah_response_entity.dart';
import 'package:al_quran_app/shared_libraries/utils/state/view_data_state.dart';
import 'package:equatable/equatable.dart';

class SurahDetailsState extends Equatable {
  final ViewData<SurahDataEntity> surahDetailsState;

  const SurahDetailsState({required this.surahDetailsState});

  @override
  List<Object?> get props => [surahDetailsState];
}
