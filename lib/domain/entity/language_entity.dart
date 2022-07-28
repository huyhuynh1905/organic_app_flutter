import 'dart:ui';

import 'package:organic_bloc/domain/entity/base/base_entity.dart';

class LanguageEntity extends BaseEntity {
  final String tittle;
  final String description;
  final String linkImage;
  final Locale locale;

  LanguageEntity(this.tittle, this.description, this.linkImage, this.locale);
  static List<LanguageEntity> languageList(){
    return <LanguageEntity>[
      LanguageEntity("VN","vi_VN","assets/images/flag_vi.png",Locale('vi', 'VN')),
      LanguageEntity("EN","en_EN","assets/images/flag_en.png",Locale('en', 'EN'))
    ];
  }

  @override
  List<Object?> get props => [tittle,description];
}