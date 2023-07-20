import 'package:al_quran_app/features/quran/domain/entities/response/surah_response_entity.dart';
import 'package:al_quran_app/features/quran/presentation/bloc/surah_details_cubit/surah_details_cubit.dart';
import 'package:al_quran_app/features/quran/presentation/bloc/surah_details_cubit/surah_details_state.dart';
import 'package:al_quran_app/shared_libraries/component/app_bar/custom_app_bar.dart';
import 'package:al_quran_app/shared_libraries/utils/navigation/argument/surah_details_argument.dart';
import 'package:al_quran_app/shared_libraries/utils/state/view_data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SurahDetailsScreen extends StatefulWidget {
  final SurahDetailsArgument surahDetailsArgument;
  const SurahDetailsScreen({super.key, required this.surahDetailsArgument});

  @override
  State<SurahDetailsScreen> createState() => _SurahDetailsScreenState();
}

class _SurahDetailsScreenState extends State<SurahDetailsScreen> {
  void getSurahDetails() {
    SurahDataEntity surah = widget.surahDetailsArgument.surahDataEntity;
    context.read<SurahDetailsCubit>().getSurahDetails(
          surahNumber: surah.number,
        );
  }

  @override
  void initState() {
    getSurahDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SurahDataEntity surah = widget.surahDetailsArgument.surahDataEntity;
    return Scaffold(
      appBar: CustomAppBar(
        title: surah.name.transliteration.id,
      ),
      body: BlocBuilder<SurahDetailsCubit, SurahDetailsState>(
        builder: (context, state) {
          final status = state.surahDetailsState.status;
          if (status.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (status.isHasData) {
            return Container();
          } else if (status.isError) {
            return Center(
              child: Text(
                state.surahDetailsState.message,
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
