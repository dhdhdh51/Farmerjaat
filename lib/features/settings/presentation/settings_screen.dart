import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/widgets/feature_scaffold.dart';
import '../../../shared/providers/app_providers.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FeatureScaffold(title: 'Settings', children: [
      SwitchListTile(
        title: const Text('Dark mode'),
        value: ref.watch(themeModeProvider) == ThemeMode.dark,
        onChanged: (v) => ref.read(themeModeProvider.notifier).state = v ? ThemeMode.dark : ThemeMode.light,
      ),
      ListTile(title: const Text('Language'), trailing: DropdownButton<String>(
        value: ref.watch(localeProvider).languageCode,
        items: const [DropdownMenuItem(value: 'en', child: Text('English')), DropdownMenuItem(value: 'hi', child: Text('हिन्दी'))],
        onChanged: (v) { if (v != null) ref.read(localeProvider.notifier).state = Locale(v); },
      ))
    ]);
  }
}
