import 'package:package_info_plus/package_info_plus.dart';

class FlavorConfig {
  static Flavor flavor = Flavor.development;
  static String versionName = '';
  static String versionCode = '';
  static String applicationId = '';

  static Future<String> getVersionName() async {
    if (versionName.isNotEmpty) return versionName;
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    versionName = packageInfo.version;
    return packageInfo.version;
  }

  static Future<String> getVersionCode() async {
    if (versionCode.isNotEmpty) return versionCode;
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    versionCode = packageInfo.buildNumber;
    return packageInfo.buildNumber;
  }

  static Future<String> getPackageName() async {
    if (applicationId.isNotEmpty) return applicationId;
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    applicationId = packageInfo.packageName;
    return packageInfo.packageName;
  }
}

enum Flavor { development, uat, production }

extension FlavorExtension on Flavor {

  String get name {
    switch (this) {
      case Flavor.development:
        return 'Development';
      case Flavor.uat:
        return 'Uat';
      default:
        return 'Production';
    }
  }
}