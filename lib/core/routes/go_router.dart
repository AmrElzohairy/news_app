import 'package:go_router/go_router.dart';
import 'package:news_app/core/routes/app_routes.dart';
import 'package:news_app/feature/home/presentation/ui/home_view.dart';

final GoRouter router = GoRouter(
  initialLocation: AppRoutes.homeView,
  routes: [
    GoRoute(
      path: AppRoutes.homeView,
      name: AppRoutes.homeView,
      builder: (context, state) => const HomeView(),
    ),
  ],
);
