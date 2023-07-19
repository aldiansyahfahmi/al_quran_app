import 'package:al_quran_app/features/quran/domain/entities/response/surah_response_entity.dart';
import 'package:al_quran_app/shared_libraries/utils/state/view_data_state.dart';
import 'package:equatable/equatable.dart';

class SurahState extends Equatable {
  final ViewData<List<SurahDataEntity>> surahState;

  const SurahState({required this.surahState});

  @override
  List<Object?> get props => [surahState];
}
