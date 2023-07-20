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

  SurahDataEntity mapSurahDataDtoToSurahDataEntity(SurahDataDto data) =>
      SurahDataEntity(
        number: data.number ?? 0,
        sequence: data.sequence ?? 0,
        numberOfVerses: data.numberOfVerses ?? 0,
        name: mapSurahNameDtoToSurahNameEntity(data.name ?? SurahNameDto()),
        revelation: mapRevelationDtoToRevelationEntity(
            data.revelation ?? RevelationDto()),
        tafsir: mapTafsirDtoToTafsirEntity(data.tafsir ?? TafsirDto()),
        preBismillah: data.preBismillah ?? dynamic,
        verses: mapVerseDtoToEntity(
          data.verses ?? [],
        ),
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

  List<VerseEntity> mapVerseDtoToEntity(List<VerseDto> data) {
    List<VerseEntity> entity = <VerseEntity>[];

    for (VerseDto element in data) {
      entity.add(
        mapVerseEntityDtoToVerseEntity(
          element,
        ),
      );
    }

    return entity;
  }

  VerseEntity mapVerseEntityDtoToVerseEntity(VerseDto data) => VerseEntity(
        number: mapNumberDtoToNumberEntity(data.number ?? NumberDto()),
        meta: mapMetaDtoToMetaEntity(data.meta ?? MetaDto()),
        text: mapTextDtoToTextEntity(data.text ?? TextDto()),
        translation: mapTranslationDtoToTranslationEntity(
            data.translation ?? TranslationDto()),
        audio: mapAudioDtoToAudioEntity(data.audio ?? AudioDto()),
        tafsir: mapVerseTafsirDtoToVerseTafsirEntity(
            data.tafsir ?? VerseTafsirDto()),
      );

  NumberEntity mapNumberDtoToNumberEntity(NumberDto data) => NumberEntity(
        inQuran: data.inQuran ?? 0,
        inSurah: data.inSurah ?? 0,
      );

  MetaEntity mapMetaDtoToMetaEntity(MetaDto data) => MetaEntity(
        juz: data.juz ?? 0,
        page: data.page ?? 0,
        manzil: data.manzil ?? 0,
        ruku: data.ruku ?? 0,
        hizbQuarter: data.hizbQuarter ?? 0,
        sajda: mapSajdaDtoToSajdaEntity(data.sajda ?? SajdaDto()),
      );

  SajdaEntity mapSajdaDtoToSajdaEntity(SajdaDto data) => SajdaEntity(
        recommended: data.recommended ?? false,
        obligatory: data.obligatory ?? false,
      );

  TextEntity mapTextDtoToTextEntity(TextDto data) => TextEntity(
        arab: data.arab ?? '',
        transliteration: mapTransliterationDtoToTransliterationEntity(
            data.transliteration ?? TransliterationDto()),
      );

  TransliterationEntity mapTransliterationDtoToTransliterationEntity(
          TransliterationDto data) =>
      TransliterationEntity(
        en: data.en ?? '',
      );

  AudioEntity mapAudioDtoToAudioEntity(AudioDto data) => AudioEntity(
        primary: data.primary ?? '',
        secondary: data.secondary ?? [],
      );

  VerseTafsirEntity mapVerseTafsirDtoToVerseTafsirEntity(VerseTafsirDto data) =>
      VerseTafsirEntity(
        id: mapIdDtoToIdEntity(data.id ?? IdDto()),
      );

  IdEntity mapIdDtoToIdEntity(IdDto data) =>
      IdEntity(short: data.short ?? '', long: data.long ?? '');
}
