import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  int page = 0;
  final items = const ['Track fields & crops', 'Manage expenses & stock', 'Get analytics & reminders'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(child: PageView.builder(controller: controller, itemCount: items.length, onPageChanged: (i)=>setState(()=>page=i), itemBuilder: (_,i)=>Center(child: Text(items[i], style: const TextStyle(fontSize: 28), textAlign: TextAlign.center)))),
        Padding(
          padding: const EdgeInsets.all(16),
          child: FilledButton(onPressed: () => page==2 ? context.go('/dashboard') : controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut), child: Text(page==2 ? 'Start' : 'Next')),
        )
      ]),
    );
  }
}
