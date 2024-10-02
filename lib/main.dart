import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/router/router.dart';

void main() {
  final GoRouter goRouter = getRouter();

  runApp(MaterialApp.router(
    routerDelegate: goRouter.routerDelegate,
    routeInformationParser: goRouter.routeInformationParser,
    routeInformationProvider: goRouter.routeInformationProvider,
  ));
}
