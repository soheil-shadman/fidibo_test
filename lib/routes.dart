import 'package:flutter/material.dart';

import 'widgets/pages/home_page.dart';

class Routes {
// In case of MORE ROUTES !!!!
  static const String HOME = '/home';

  static final Map<String, WidgetBuilder> routes = {
    HOME: (context) => HomePage(),
  };
}
