class SurahDataDto {
  final int? number;
  final int? sequence;
  final int? numberOfVerses;
  final SurahNameDto? name;
  final RevelationDto? revelation;
  final TafsirDto? tafsir;
  final dynamic preBismillah;
  final List<VerseDto>? verses;

  SurahDataDto({
    this.number,
    this.sequence,
    this.numberOfVerses,
    this.name,
    this.revelation,
    this.tafsir,
    this.preBismillah,
    this.verses,
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
        preBismillah: json["preBismillah"],
        verses: json["verses"] == null
            ? []
            : List<VerseDto>.from(
                json["verses"]!.map((x) => VerseDto.fromJson(x))),
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
}

class VerseDto {
  final NumberDto? number;
  final MetaDto? meta;
  final TextDto? text;
  final TranslationDto? translation;
  final AudioDto? audio;
  final VerseTafsirDto? tafsir;

  VerseDto({
    this.number,
    this.meta,
    this.text,
    this.translation,
    this.audio,
    this.tafsir,
  });

  factory VerseDto.fromJson(Map<String, dynamic> json) => VerseDto(
        number:
            json["number"] == null ? null : NumberDto.fromJson(json["number"]),
        meta: json["meta"] == null ? null : MetaDto.fromJson(json["meta"]),
        text: json["text"] == null ? null : TextDto.fromJson(json["text"]),
        translation: json["translation"] == null
            ? null
            : TranslationDto.fromJson(json["translation"]),
        audio: json["audio"] == null ? null : AudioDto.fromJson(json["audio"]),
        tafsir: json["tafsir"] == null
            ? null
            : VerseTafsirDto.fromJson(json["tafsir"]),
      );
}

class AudioDto {
  final String? primary;
  final List<String>? secondary;

  AudioDto({
    this.primary,
    this.secondary,
  });

  factory AudioDto.fromJson(Map<String, dynamic> json) => AudioDto(
        primary: json["primary"],
        secondary: json["secondary"] == null
            ? []
            : List<String>.from(json["secondary"]!.map((x) => x)),
      );
}

class MetaDto {
  final int? juz;
  final int? page;
  final int? manzil;
  final int? ruku;
  final int? hizbQuarter;
  final SajdaDto? sajda;

  MetaDto({
    this.juz,
    this.page,
    this.manzil,
    this.ruku,
    this.hizbQuarter,
    this.sajda,
  });

  factory MetaDto.fromJson(Map<String, dynamic> json) => MetaDto(
        juz: json["juz"],
        page: json["page"],
        manzil: json["manzil"],
        ruku: json["ruku"],
        hizbQuarter: json["hizbQuarter"],
        sajda: json["sajda"] == null ? null : SajdaDto.fromJson(json["sajda"]),
      );
}

class SajdaDto {
  final bool? recommended;
  final bool? obligatory;

  SajdaDto({
    this.recommended,
    this.obligatory,
  });

  factory SajdaDto.fromJson(Map<String, dynamic> json) => SajdaDto(
        recommended: json["recommended"],
        obligatory: json["obligatory"],
      );
}

class NumberDto {
  final int? inQuran;
  final int? inSurah;

  NumberDto({
    this.inQuran,
    this.inSurah,
  });

  factory NumberDto.fromJson(Map<String, dynamic> json) => NumberDto(
        inQuran: json["inQuran"],
        inSurah: json["inSurah"],
      );
}

class VerseTafsirDto {
  final IdDto? id;

  VerseTafsirDto({
    this.id,
  });

  factory VerseTafsirDto.fromJson(Map<String, dynamic> json) => VerseTafsirDto(
        id: json["id"] == null ? null : IdDto.fromJson(json["id"]),
      );
}

class IdDto {
  final String? short;
  final String? long;

  IdDto({
    this.short,
    this.long,
  });

  factory IdDto.fromJson(Map<String, dynamic> json) => IdDto(
        short: json["short"],
        long: json["long"],
      );
}

class TextDto {
  final String? arab;
  final TransliterationDto? transliteration;

  TextDto({
    this.arab,
    this.transliteration,
  });

  factory TextDto.fromJson(Map<String, dynamic> json) => TextDto(
        arab: json["arab"],
        transliteration: json["transliteration"] == null
            ? null
            : TransliterationDto.fromJson(json["transliteration"]),
      );
}

class TransliterationDto {
  final String? en;

  TransliterationDto({
    this.en,
  });

  factory TransliterationDto.fromJson(Map<String, dynamic> json) =>
      TransliterationDto(
        en: json["en"],
      );
}
