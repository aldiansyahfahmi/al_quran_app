import 'package:al_quran_app/features/quran/domain/usecases/get_surah_details_usecase.dart';
import 'package:al_quran_app/features/quran/presentation/bloc/surah_details_cubit/surah_details_state.dart';
import 'package:al_quran_app/shared_libraries/utils/state/view_data_state.dart';
import 'package:bloc/bloc.dart';

class SurahDetailsCubit extends Cubit<SurahDetailsState> {
  final GetSurahDetailsUseCase getSurahDetailsUseCase =
      GetSurahDetailsUseCase();
  SurahDetailsCubit()
      : super(SurahDetailsState(surahDetailsState: ViewData.initial()));

  void getSurahDetails({required int surahNumber}) async {
    emit(SurahDetailsState(surahDetailsState: ViewData.loading()));

    final result = await getSurahDetailsUseCase.call(surahNumber);

    result.fold(
      (failure) => emit(
        SurahDetailsState(
          surahDetailsState: ViewData.error(
            message: failure.errorMessage,
            failure: failure,
          ),
        ),
      ),
      (result) => emit(
          SurahDetailsState(surahDetailsState: ViewData.loaded(data: result))),
    );
  }
}
