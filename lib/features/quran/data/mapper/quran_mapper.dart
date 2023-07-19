import 'package:al_quran_app/features/quran/data/models/response/surah_response_dto.dart';
import 'package:al_quran_app/features/quran/domain/entities/response/surah_response_entity.dart';

class QuranMapper {
  List<SurahDataEntity> mapSurahDataDtoToEntity(List<SurahDataDto> data) {
    List<SurahDataEntity> entity = <SurahDataEntity>[];

    for (SurahDataDto element in data) {
      entity.add(
        mapSurahDataDtoToSurahDataEntity(
          element,
        ),
      );
    }

    return entity;
  }
}

SurahDataEntity mapSurahDataDtoToSurahDataEntity(SurahDataDto data) =>
    SurahDataEntity(
      number: data.number ?? 0,
      sequence: data.sequence ?? 0,
      numberOfVerses: data.numberOfVerses ?? 0,
      name: mapSurahNameDtoToSurahNameEntity(data.name ?? SurahNameDto()),
      revelation: mapRevelationDtoToRevelationEntity(
          data.revelation ?? RevelationDto()),
      tafsir: mapTafsirDtoToTafsirEntity(data.tafsir ?? TafsirDto()),
    );

SurahNameEntity mapSurahNameDtoToSurahNameEntity(SurahNameDto data) =>
    SurahNameEntity(
      short: data.short ?? '',
      long: data.long ?? '',
      transliteration: mapTranslationDtoToTranslationEntity(
          data.transliteration ?? TranslationDto()),
      translation: mapTranslationDtoToTranslationEntity(
          data.translation ?? TranslationDto()),
    );

RevelationEntity mapRevelationDtoToRevelationEntity(RevelationDto data) =>
    RevelationEntity(
      arab: data.arab ?? '',
      en: data.en ?? '',
      id: data.id ?? '',
    );

TafsirEntity mapTafsirDtoToTafsirEntity(TafsirDto data) => TafsirEntity(
      id: data.id ?? '',
    );

TranslationEntity mapTranslationDtoToTranslationEntity(TranslationDto data) =>
    TranslationEntity(
      en: data.en ?? '',
      id: data.id ?? '',
    );
