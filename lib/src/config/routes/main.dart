import 'package:template/src/config/routes/main_page.dart';
import 'package:template/src/config/routes/messages_page.dart';
import 'package:template/src/config/routes/routes.dart';
import 'package:template/src/config/routes/search_page.dart';
import 'package:template/src/config/routes/visit_page.dart';
import 'package:template/src/modules/main_screen/view/main_view.dart';
export 'package:template/src/modules/main_screen/view/main_view.dart';

class MainRouteHelper extends ParameterlessRouteHelper {
  static const path = '/main';
  static const widget = MainView;

  const MainRouteHelper() : super(path: path);

  final mainPage = const MainPageHelper();
  final searchPage = const SearchPageHelper();
  final visitPage = const VisitPageHelper();
  final messagesPage = const MessagesPageHelper();
}
