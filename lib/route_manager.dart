import 'package:go_router/go_router.dart';
import 'package:alo_moves/features/training_series/presentation/screens/training_series_screen.dart';

class Routes {
  static const String trainingSeries = '/';
}

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      name: Routes.trainingSeries,
      path: Routes.trainingSeries,
      builder: (_, __) => const TrainingSeriesScreen(),
    ),
  ],
);
