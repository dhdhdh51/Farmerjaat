import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../features/splash/presentation/splash_screen.dart';
import '../../features/onboarding/presentation/onboarding_screen.dart';
import '../../features/dashboard/presentation/dashboard_screen.dart';
import '../../features/fields/presentation/fields_screen.dart';
import '../../features/crops/presentation/crops_screen.dart';
import '../../features/activities/presentation/activities_screen.dart';
import '../../features/expenses/presentation/expenses_screen.dart';
import '../../features/stock/presentation/stock_screen.dart';
import '../../features/finance/presentation/finance_screen.dart';
import '../../features/analytics/presentation/analytics_screen.dart';
import '../../features/notifications/presentation/notifications_screen.dart';
import '../../features/settings/presentation/settings_screen.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (_, __) => const SplashScreen()),
      GoRoute(path: '/onboarding', builder: (_, __) => const OnboardingScreen()),
      GoRoute(path: '/dashboard', builder: (_, __) => const DashboardScreen()),
      ..._r('/fields', const FieldsScreen()),
      ..._r('/crops', const CropsScreen()),
      ..._r('/activities', const ActivitiesScreen()),
      ..._r('/expenses', const ExpensesScreen()),
      ..._r('/stock', const StockScreen()),
      ..._r('/finance', const FinanceScreen()),
      ..._r('/analytics', const AnalyticsScreen()),
      ..._r('/notifications', const NotificationsScreen()),
      ..._r('/settings', const SettingsScreen()),
    ],
  );
});

List<GoRoute> _r(String path, Widget child) => [GoRoute(path: path, builder: (_, __) => child)];
