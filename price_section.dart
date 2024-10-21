import 'package:flutter/material.dart';
import '../colors.dart';

class PriceSection extends StatelessWidget {
  final String price;

  const PriceSection({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '₹',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.primary50,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              price,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        const Text(
          'Bottle (750ml)',
          style: TextStyle(
            color: AppColors.primary50,
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
