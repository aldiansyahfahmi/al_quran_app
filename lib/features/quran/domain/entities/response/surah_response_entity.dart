class SurahDataEntity {
  final int number;
  final int sequence;
  final int numberOfVerses;
  final SurahNameEntity name;
  final RevelationEntity revelation;
  final TafsirEntity tafsir;

  SurahDataEntity({
    required this.number,
    required this.sequence,
    required this.numberOfVerses,
    required this.name,
    required this.revelation,
    required this.tafsir,
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
