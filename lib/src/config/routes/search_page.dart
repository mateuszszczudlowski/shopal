import 'package:template/src/config/routes/routes.dart';
import 'package:template/src/modules/main_screen/widgets/pages/search_page.dart';
export 'package:template/src/modules/main_screen/widgets/pages/search_page.dart';

class SearchPageHelper extends ParameterlessRouteHelper {
  static const path = 'search-page';
  static const widget = SearchPage;
  const SearchPageHelper() : super(parent: '/main', path: path);
}
