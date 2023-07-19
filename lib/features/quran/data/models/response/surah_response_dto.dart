class SurahDataDto {
  final int? number;
  final int? sequence;
  final int? numberOfVerses;
  final SurahNameDto? name;
  final RevelationDto? revelation;
  final TafsirDto? tafsir;

  SurahDataDto({
    this.number,
    this.sequence,
    this.numberOfVerses,
    this.name,
    this.revelation,
    this.tafsir,
  });

  factory SurahDataDto.fromJson(Map<String, dynamic> json) => SurahDataDto(
        number: json["number"],
        sequence: json["sequence"],
        numberOfVerses: json["numberOfVerses"],
        name: json["name"] == null ? null : SurahNameDto.fromJson(json["name"]),
        revelation: json["revelation"] == null
            ? null
            : RevelationDto.fromJson(json["revelation"]),
        tafsir:
            json["tafsir"] == null ? null : TafsirDto.fromJson(json["tafsir"]),
      );
}

class SurahNameDto {
  final String? short;
  final String? long;
  final TranslationDto? transliteration;
  final TranslationDto? translation;

  SurahNameDto({
    this.short,
    this.long,
    this.transliteration,
    this.translation,
  });

  factory SurahNameDto.fromJson(Map<String, dynamic> json) => SurahNameDto(
        short: json["short"],
        long: json["long"],
        transliteration: json["transliteration"] == null
            ? null
            : TranslationDto.fromJson(json["transliteration"]),
        translation: json["translation"] == null
            ? null
            : TranslationDto.fromJson(json["translation"]),
      );
}

class TranslationDto {
  final String? en;
  final String? id;

  TranslationDto({
    this.en,
    this.id,
  });

  factory TranslationDto.fromJson(Map<String, dynamic> json) => TranslationDto(
        en: json["en"],
        id: json["id"],
      );
}

class RevelationDto {
  final String? arab;
  final String? en;
  final String? id;

  RevelationDto({
    this.arab,
    this.en,
    this.id,
  });

  factory RevelationDto.fromJson(Map<String, dynamic> json) => RevelationDto(
        arab: json["arab"]!,
        en: json["en"]!,
        id: json["id"]!,
      );
}

class TafsirDto {
  final String? id;

  TafsirDto({
    this.id,
  });

  factory TafsirDto.fromJson(Map<String, dynamic> json) => TafsirDto(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}
