import 'package:al_quran_app/features/quran/presentation/bloc/surah_cubit/surah_cubit.dart';
import 'package:al_quran_app/features/quran/presentation/bloc/surah_cubit/surah_state.dart';
import 'package:al_quran_app/shared_libraries/utils/resources/colors.dart';
import 'package:al_quran_app/shared_libraries/utils/state/view_data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorName.purple,
          title: Text(
            "BACA QUR'AN",
            style: TextStyle(
              color: ColorName.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          bottom: const TabBar(
            indicatorColor: ColorName.white,
            tabs: <Widget>[
              Tab(
                text: 'SURAH',
              ),
              Tab(
                text: 'JUZ',
              ),
              Tab(
                text: 'PENANDA',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            BlocBuilder<SurahCubit, SurahState>(
              builder: (context, state) {
                final status = state.surahState.status;
                if (status.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (status.isHasData) {
                  final data = state.surahState.data;
                  return ListView.builder(
                    itemCount: data!.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Text("SURAH ke-${index + 1}"),
                      );
                    },
                  );
                } else if (status.isError) {
                  return Center(
                    child: Text(state.surahState.message),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
            const Center(
              child: Text("JUZ"),
            ),
            const Center(
              child: Text("PENANDA"),
            ),
          ],
        ),
      ),
    );
  }
}
