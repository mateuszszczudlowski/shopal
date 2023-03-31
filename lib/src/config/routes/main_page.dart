import 'package:template/src/config/routes/routes.dart';
import 'package:template/src/modules/main_screen/widgets/pages/main_page.dart';
export 'package:template/src/modules/main_screen/widgets/pages/main_page.dart';

class MainPageHelper extends ParameterlessRouteHelper {
  static const path = 'main-page';
  static const widget = MainPage;
  const MainPageHelper() : super(parent: '/main', path: path);
}
