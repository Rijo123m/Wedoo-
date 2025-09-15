import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/constants/app_constants.dart';
import '../screens/home/home_screen.dart';

// Locale Provider
final localeProvider = StateProvider<Locale>((ref) {
  return const Locale('ar'); // Default to Arabic
});

// Theme Mode Provider
final themeModeProvider = StateProvider<ThemeMode>((ref) {
  return ThemeMode.light; // Default to light theme
});

// Router Provider
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutes.home,
    routes: [
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => const HomeScreen(),
      ),
      // Add more routes here
    ],
  );
});

// Auth State Provider
final authStateProvider = StateProvider<bool>((ref) {
  return false; // Default to not authenticated
});

// User Provider
final userProvider = StateProvider<Map<String, dynamic>?>((ref) {
  return null; // Default to no user
});

