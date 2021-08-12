import 'dart:ui';

class Language {
  final String tittle;
  final String description;
  final String linkImage;
  final Locale locale;

  Language(this.tittle, this.description, this.linkImage, this.locale);
  static List<Language> languageList(){
    return <Language>[
      Language("VN","vi_VN","assets/images/flag_vi.png",Locale('vi', 'VN')),
      Language("EN","en_EN","assets/images/flag_en.png",Locale('en', 'EN'))
    ];
  }
}