import 'package:template/src/config/routes/routes.dart';
import 'package:template/src/modules/main_screen/widgets/pages/visit_page.dart';
export 'package:template/src/modules/main_screen/widgets/pages/visit_page.dart';

class VisitPageHelper extends ParameterlessRouteHelper {
  static const path = 'visit-page';
  static const widget = VisitPage;
  const VisitPageHelper() : super(parent: '/main', path: path);
}
