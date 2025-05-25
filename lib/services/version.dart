import 'package:package_info_plus/package_info_plus.dart';

class AppVersion {
  final PackageInfo packageInfo;

  static late final AppVersion ins;

  factory AppVersion.fromPackageInfo(PackageInfo packageInfo) {
    return AppVersion(packageInfo: packageInfo);
  }

  AppVersion({required this.packageInfo});

  String get version => packageInfo.version;
  String get buildNumber => packageInfo.buildNumber;
}
