import 'package:flutter/material.dart';
import 'package:nubank/components/title_arrow_component.dart';

class BalanceComponent extends StatelessWidget {
  const BalanceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const TitleArrowComponent(
      title: 'Conta',
      amount: 7480.90,
    );
  }
}
