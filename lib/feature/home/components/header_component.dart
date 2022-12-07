import 'package:flutter/material.dart';
import 'package:nubank/core/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Container(
        padding: const EdgeInsets.fromLTRB(
          padding,
          padding * 2,
          padding,
          padding - 5,
        ),
        color: primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Avatar(),
                Row(
                  children: const [
                    ActionIcon(icon: FontAwesomeIcons.eye),
                    ActionIcon(icon: FontAwesomeIcons.circleQuestion),
                    ActionIcon(icon: FontAwesomeIcons.envelope),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Olá, Gabriela dos Santos',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: secondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: const Image(
        width: 45,
        height: 45,
        image: NetworkImage(
          'https://images.unsplash.com/photo-1597223557154-721c1cecc4b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGZhY2V8ZW58MHx8MHx8&w=1000&q=80',
        ),
      ),
    );
  }
}

class ActionIcon extends StatelessWidget {
  const ActionIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon),
      color: secondaryColor,
      iconSize: 18,
    );
  }
}
