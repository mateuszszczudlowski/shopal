import 'package:template/src/config/routes/routes.dart';
import 'package:template/src/modules/language_screen/view/language_view.dart';
export 'package:template/src/modules/language_screen/view/language_view.dart';

class LanguageRouteHelper extends ParameterlessRouteHelper {
  static const path = '/language';
  static const widget = LanguageView;

  const LanguageRouteHelper() : super(path: path);
}
