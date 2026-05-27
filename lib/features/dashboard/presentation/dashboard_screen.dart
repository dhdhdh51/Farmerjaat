import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cards = {
      'Total fields':'12','Active crops':'7','Monthly expenses':'₹48,000','Profit':'₹92,000','Pending tasks':'5','Weather':'29°C'
    };
    return Scaffold(
      appBar: AppBar(title: const Text('Krishi Ledger Dashboard')),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        children: [
          ...cards.entries.map((e)=>Card(child: Center(child: ListTile(title: Text(e.key), subtitle: Text(e.value, style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold)))))),
          ...['fields','crops','activities','expenses','stock','finance','analytics','notifications','settings'].map((e)=>FilledButton(onPressed: ()=>context.go('/$e'), child: Text(e.toUpperCase())))
        ],
      ),
    );
  }
}
