import 'package:template/src/config/routes/routes.dart';
import 'package:template/src/modules/settings_screem/view/settings_view.dart';
export 'package:template/src/modules/settings_screem/view/settings_view.dart';

class SettingsRouteHelper extends ParameterlessRouteHelper {
  static const path = '/settings/:title';
  static const widget = SettingsView;

  const SettingsRouteHelper() : super(path: path);
}
