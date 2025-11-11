import 'package:flutter_modular/flutter_modular.dart';
import 'package:product_manager/modules/list/view/list_page.dart';

class ListModule extends Module {
  @override
  void routes(RouteManager r) {
    super.routes(r);

    r.child('/', child: (_) => ListPage());
  }
}
