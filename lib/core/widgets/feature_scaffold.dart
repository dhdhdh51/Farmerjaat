import 'dart:ui';
import 'package:flutter/material.dart';

class FeatureScaffold extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const FeatureScaffold({super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xFFDCFCE7), Color(0xFFBBF7D0)], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.white.withValues(alpha: .35),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: children),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
