import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/core/constants.dart';

class ServicesCarouselComponent extends StatelessWidget {
  const ServicesCarouselComponent({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();

    return SizedBox(
      height: 130,
      child: ListView(
        controller: controller,
        padding: const EdgeInsets.all(padding - 5),
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: const [
          ServiceComponent(
            path: '/',
            label: 'Área Pix',
            icon: FontAwesomeIcons.pix,
          ),
          ServiceComponent(
            path: '/',
            label: 'Pagar',
            icon: FontAwesomeIcons.barcode,
          ),
          ServiceComponent(
            path: '/',
            label: 'Pegar emprestado',
            icon: FontAwesomeIcons.handHoldingDollar,
          ),
          ServiceComponent(
            path: '/',
            label: 'Transferir',
            icon: FontAwesomeIcons.moneyBillTransfer,
          ),
          ServiceComponent(
            path: '/',
            label: 'Transferir',
            icon: FontAwesomeIcons.moneyBill,
          ),
          ServiceComponent(
            path: '/',
            label: 'Recarga de celular',
            icon: FontAwesomeIcons.mobile,
          ),
        ],
      ),
    );
  }
}

class ServiceComponent extends StatelessWidget {
  const ServiceComponent({
    Key? key,
    required this.icon,
    required this.label,
    required this.path,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final String path;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              color: contrastColor,
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: Icon(
              icon,
              color: textColor,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
