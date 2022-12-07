import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/components/title_arrow_component.dart';

import 'components/header_component.dart';
import 'package:nubank/components/services_carousel_component.dart';
import 'package:nubank/feature/home/components/balance_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          HeaderComponent(),
          BalanceComponent(),
          ServicesCarouselComponent(),
        ],
      ),
    );
  }
}
