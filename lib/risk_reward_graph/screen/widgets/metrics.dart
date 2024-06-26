import 'package:flutter/material.dart';
import 'package:flutter_challenge/constants/strings.dart';

class Metrics extends StatelessWidget {
  final String maxProfit;
  final String maxLoss;
  final String breakEvenPoints;
  const Metrics(
      {super.key,
      required this.maxProfit,
      required this.maxLoss,
      required this.breakEvenPoints});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringValues.metricsTitle,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 10),
        _MetricTile(
            StringValues.maxLoss, maxProfit, Icons.arrow_upward, Colors.green),
        _MetricTile(
            StringValues.maxLoss, maxLoss, Icons.arrow_downward, Colors.red),
        _MetricTile(
          StringValues.breakEvenPoints,
          breakEvenPoints,
          Icons.breakfast_dining,
          Colors.orange,
        ),
      ],
    );
  }
}

class _MetricTile extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color iconColor;

  const _MetricTile(
    this.title,
    this.value,
    this.icon,
    this.iconColor,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(value, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
