import 'package:template/src/config/routes/routes.dart';
import 'package:template/src/modules/account_screen/view/account_view.dart';
export 'package:template/src/modules/account_screen/view/account_view.dart';

class AccountRouteHelper extends ParameterlessRouteHelper {
  static const path = '/account';
  static const widget = AccountView;

  const AccountRouteHelper() : super(path: path);
}
