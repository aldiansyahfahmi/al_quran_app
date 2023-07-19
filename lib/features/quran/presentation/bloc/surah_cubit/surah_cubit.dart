import 'package:al_quran_app/features/quran/domain/usecases/get_surah_usecase.dart';
import 'package:al_quran_app/features/quran/presentation/bloc/surah_cubit/surah_state.dart';
import 'package:al_quran_app/shared_libraries/utils/state/view_data_state.dart';
import 'package:al_quran_app/shared_libraries/utils/usecase/usecase.dart';
import 'package:bloc/bloc.dart';

class SurahCubit extends Cubit<SurahState> {
  final GetSurahUseCase getSurahUseCase = GetSurahUseCase();
  SurahCubit() : super(SurahState(surahState: ViewData.initial()));

  void getSurah() async {
    emit(SurahState(surahState: ViewData.loading()));

    final result = await getSurahUseCase.call(const NoParams());

    result.fold(
      (failure) => emit(
        SurahState(
          surahState: ViewData.error(
            message: failure.errorMessage,
            failure: failure,
          ),
        ),
      ),
      (result) => emit(SurahState(surahState: ViewData.loaded(data: result))),
    );
  }
}
