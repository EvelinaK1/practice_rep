import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_project/screens/authorization_screen.dart';

class NavigationButtonWidget extends StatelessWidget {
  const NavigationButtonWidget({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      height: 56,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const AuthorizationScreen(),
            ),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                image,
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
