import 'dart:ui';

import 'package:organic_bloc/core/providers/locale_provider.dart';
import 'package:organic_bloc/domain/entity/base/base_entity.dart';

class LanguageEntity extends BaseEntity {
  final String tittle;
  final String description;
  final String linkImage;
  final Locale locale;

  LanguageEntity(this.tittle, this.description, this.linkImage, this.locale);
  static List<LanguageEntity> languageList(){
    return <LanguageEntity>[
      LanguageEntity("VN","vi_VN","assets/images/flag_vi.png", LocaleSupport.localeVN),
      LanguageEntity("EN","en_EN","assets/images/flag_en.png", LocaleSupport.localeEN)
    ];
  }

  @override
  List<Object?> get props => [tittle,description];
}