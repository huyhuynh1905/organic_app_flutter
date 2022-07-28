import 'package:organic_bloc/core/providers/locale_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class Providers {
  static List<SingleChildWidget> get providers => [
    Provider<LocaleProvider>(create: (_) => LocaleProvider()),
  ];
}