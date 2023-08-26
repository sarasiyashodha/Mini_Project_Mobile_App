import 'package:flutter/material.dart';

class CreateAccountButton extends StatelessWidget {
  final Function()? onTap;

  const CreateAccountButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color(0xff305d62),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            "CREATE ACCOUNT",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
