import 'package:flutter/material.dart';
import 'package:organic_bloc/l10n/app_localizations.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations? get locale => AppLocalizations.of(this);
}
