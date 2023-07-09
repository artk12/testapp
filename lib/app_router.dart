
import 'package:banktestapp/main.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import 'futures/screens/detailScreen.dart';

class BaseAppRouter{

  static final router = GoRouter(debugLogDiagnostics: kDebugMode,
      initialLocation: '/',routes: [
        GoRoute(path: '/',name:'Input',builder: (context,state)=> const MyHomePage(),routes: [
          GoRoute(path: 'details',name:'Details',builder: (context,state)=> const DetailScreen())
        ])
      ]);
}