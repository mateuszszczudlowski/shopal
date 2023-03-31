import 'package:template/src/config/routes/routes.dart';
import 'package:template/src/modules/login_screen/view/login_view.dart';
export 'package:template/src/modules/login_screen/view/login_view.dart';

class LoginRouteHelper extends ParameterlessRouteHelper {
  static const path = '/login';
  static const widget = LoginView;

  const LoginRouteHelper() : super(path: path);
}
