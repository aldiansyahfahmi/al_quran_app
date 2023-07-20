class SurahDataEntity {
  final int number;
  final int sequence;
  final int numberOfVerses;
  final SurahNameEntity name;
  final RevelationEntity revelation;
  final TafsirEntity tafsir;
  final dynamic preBismillah;
  final List<VerseEntity> verses;

  SurahDataEntity({
    required this.number,
    required this.sequence,
    required this.numberOfVerses,
    required this.name,
    required this.revelation,
    required this.tafsir,
    required this.preBismillah,
    required this.verses,
  });
}

class SurahNameEntity {
  final String short;
  final String long;
  final TranslationEntity transliteration;
  final TranslationEntity translation;

  SurahNameEntity({
    required this.short,
    required this.long,
    required this.transliteration,
    required this.translation,
  });
}

class TranslationEntity {
  final String en;
  final String id;

  TranslationEntity({
    required this.en,
    required this.id,
  });
}

class RevelationEntity {
  final String arab;
  final String en;
  final String id;

  RevelationEntity({
    required this.arab,
    required this.en,
    required this.id,
  });
}

class TafsirEntity {
  final String id;

  TafsirEntity({
    required this.id,
  });
}

class VerseEntity {
  final NumberEntity number;
  final MetaEntity meta;
  final TextEntity text;
  final TranslationEntity translation;
  final AudioEntity audio;
  final VerseTafsirEntity tafsir;

  VerseEntity({
    required this.number,
    required this.meta,
    required this.text,
    required this.translation,
    required this.audio,
    required this.tafsir,
  });
}

class AudioEntity {
  final String primary;
  final List<String> secondary;

  AudioEntity({
    required this.primary,
    required this.secondary,
  });
}

class MetaEntity {
  final int juz;
  final int page;
  final int manzil;
  final int ruku;
  final int hizbQuarter;
  final SajdaEntity sajda;

  MetaEntity({
    required this.juz,
    required this.page,
    required this.manzil,
    required this.ruku,
    required this.hizbQuarter,
    required this.sajda,
  });
}

class SajdaEntity {
  final bool recommended;
  final bool obligatory;

  SajdaEntity({
    required this.recommended,
    required this.obligatory,
  });
}

class NumberEntity {
  final int inQuran;
  final int inSurah;

  NumberEntity({
    required this.inQuran,
    required this.inSurah,
  });
}

class VerseTafsirEntity {
  final IdEntity id;

  VerseTafsirEntity({
    required this.id,
  });
}

class IdEntity {
  final String short;
  final String long;

  IdEntity({
    required this.short,
    required this.long,
  });
}

class TextEntity {
  final String arab;
  final TransliterationEntity transliteration;

  TextEntity({
    required this.arab,
    required this.transliteration,
  });
}

class TransliterationEntity {
  final String en;

  TransliterationEntity({
    required this.en,
  });
}
