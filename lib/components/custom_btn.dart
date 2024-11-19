import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final VoidCallback onTap;
  final Widget btnWidget;

  const CustomBtn({
    super.key,
    required this.onTap,
    required this.btnWidget,
  });

  @override
  Widget build(BuildContext context) {
    /// media query
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: sizeWidth,
        height: sizeHeight * 0.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFF01C448),
        ),
        child: Center(
          child: btnWidget,
        ),
      ),
    );
  }
}
