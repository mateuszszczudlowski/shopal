import 'package:template/src/config/routes/routes.dart';
import 'package:template/src/modules/welcome_screen/view/welcome_view.dart';
export 'package:template/src/modules/welcome_screen/view/welcome_view.dart';

class WelcomeRouteHelper extends ParameterlessRouteHelper {
  static const path = '/';
  static const widget = WelcomeView;
  const WelcomeRouteHelper() : super(path: path);
}
