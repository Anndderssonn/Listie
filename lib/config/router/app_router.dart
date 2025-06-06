import 'package:go_router/go_router.dart';
import 'package:listie/presentation/views/views.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: HomeView.name,
      builder: (context, state) => const HomeView(),
    ),
  ],
);
