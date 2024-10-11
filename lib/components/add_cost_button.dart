import 'package:budget_breeze/core/utils/colors.dart';
import 'package:flutter/material.dart';

class AddCostButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddCostButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 70.0,
        height: 70.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          // Gradyan rengi
          gradient: const LinearGradient(
            colors: [AppColors.darkGoldColor, AppColors.goldColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(3, 3),
            ),
          ],
        ),
        child: const Center(
          child: Text(
            '+',
            style: TextStyle(
              fontSize: 32.0, // Font boyutunu biraz büyüt
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
