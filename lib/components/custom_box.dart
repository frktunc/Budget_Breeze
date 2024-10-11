import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String label;
  final double amount;
  final Color color;
  final Color textColor;
  final bool isIncome; // Yeni parametre

  const CustomBox({
    super.key,
    required this.label,
    required this.amount,
    required this.color,
    required this.textColor,
    this.isIncome = false, // Varsayılan olarak false
  });

  @override
  Widget build(BuildContext context) {
    // Miktar için işaret ekle
    String formattedAmount = '${isIncome ? '+' : '-'}${amount.toStringAsFixed(2)} TL';

    return Container(
      padding: const EdgeInsets.all(22.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(
        child: Text(
          '$label: $formattedAmount', // Güncellenmiş metin
          style: TextStyle(color: textColor, fontSize: 18),
        ),
      ),
    );
  }
}
