import 'package:url_launcher/url_launcher_string.dart';

class LauncherHelper {
  static void url(String url) async {
    if (await launchUrlString(url)) {
      await launchUrlString(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}
