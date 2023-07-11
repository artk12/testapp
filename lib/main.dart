
import 'package:banktestapp/AppTheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_strategy/url_strategy.dart';
import 'app_router.dart';
import 'futures/hello_future/presentation/bloc/car_bloc/car_bloc.dart';
import 'futures/hello_future/screens/input_screen.dart';
import 'locator.dart';

void main() async{
  await setup();
  setPathUrlStrategy();
  // if(kIsWeb){
  runApp(const MyApp());
  // }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => locator<CarBloc>()),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        builder: (context,child){
          return Directionality(textDirection: TextDirection.rtl, child: child!);
        },
        theme: AppTheme.lightTheme,
        routerConfig: BaseAppRouter.router,
        // home: const MyHomePage(),
      ),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const InputScreen();
  }
}

