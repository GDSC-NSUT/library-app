import 'package:go_router/go_router.dart';
import 'package:library_app/router/routes.dart';
import 'package:library_app/screens/auth/login_screen.dart';

GoRouter getRouter() {
  return GoRouter(initialLocation: AppRoutes.LOGIN.value, routes: [
    GoRoute(
        path: AppRoutes.LOGIN.value,
        name: AppRoutes.LOGIN.toString(),
        builder: (context, state) => const LoginScreen())
  ]);
}
