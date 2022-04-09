import 'package:burc_rehberi/burc/feature/model/burc_model.dart';
import 'package:flutter/material.dart';

import '../feature/view/burc_detail_view.dart';
import '../feature/view/burc_view.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => BurcListesi());
      case '/burcDetay':
        final Burc secilen = settings.arguments as Burc;
        return MaterialPageRoute(
            builder: (context) => BurcDetay(
                  secilenBurc: secilen,
                ));
    }
    return null;
  }
}
