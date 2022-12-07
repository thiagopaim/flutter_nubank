import 'package:flutter/material.dart';
import '../core/transformers.dart';

class MoneyComponent extends StatelessWidget {
  const MoneyComponent({super.key, this.amount = 0.00});

  final double amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Text(
          Format.money(amount),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
