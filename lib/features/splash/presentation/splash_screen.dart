import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1200))..forward();
    Future.delayed(const Duration(milliseconds: 1600), () { if (mounted) context.go('/onboarding'); });
  }

  @override
  void dispose() { _controller.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ScaleTransition(scale: CurvedAnimation(parent: _controller, curve: Curves.easeOutBack), child: const Text('🌾 Krishi Ledger', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)))),
    );
  }
}
