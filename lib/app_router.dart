
import 'package:banktestapp/futures/login/presentation/login_otp_page.dart';
import 'package:banktestapp/futures/login/presentation/login_type_page.dart';
import 'package:banktestapp/futures/login/presentation/login_with_customer_id.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';


class BaseAppRouter{

  static final router = GoRouter(debugLogDiagnostics: kDebugMode,
      initialLocation: '/',routes: [
        GoRoute(path: '/',name:'login_type',builder: (context,state)=> const LoginTypePage(),routes: [
          GoRoute(path: 'input_customer_id',name:'Details',builder: (context,state)=> const LoginWithCustomerId(),routes:[
            GoRoute(path: 'sms_code',name:'SMS Code',builder: (context,state)=> const LoginOtpPage())
          ])
        ])
      ]);
}