import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final void Function()? onTap;
  final String image;
  const SquareTile({
    required this.onTap,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsetsDirectional.symmetric(horizontal: 5.0),
        padding: const EdgeInsetsDirectional.all(16.0),
        child: Image.asset(
          image,
          height: 70.0,
        ),
      ),
    );
  }
}
