import 'package:flutter/material.dart';

import '../index.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: AppConstant.materialAppTitle,
      color: AppConstant.materialAppColor,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        AppColor.of(context);

        return child ?? const SizedBox.shrink();
      },
    );
  }
}
