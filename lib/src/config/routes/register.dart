import 'package:template/src/config/routes/routes.dart';
import 'package:template/src/modules/register_screen/view/register_view.dart';
export 'package:template/src/modules/register_screen/view/register_view.dart';

class RegisterRouteHelper extends ParameterlessRouteHelper {
  static const path = '/register/';
  static const widget = RegisterView;

  const RegisterRouteHelper() : super(path: path);
}
