import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/widgets/feature_scaffold.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FeatureScaffold(title: 'Activity', children: [
      Text('Activity management'),
      const SizedBox(height: 12),
      Wrap(spacing: 8, children: [
        FilledButton(onPressed: () => context.go('/dashboard'), child: const Text('Dashboard')),
      ])
    ]);
  }
}
