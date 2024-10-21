import 'package:flutter/material.dart';
import '../colors.dart';

class SearchBarSection extends StatelessWidget {
  const SearchBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFD0D5DD), width: 1),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.search, color: AppColors.primary50, size: 20),
          ),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Color(0xFF98A2B3)),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: 1,
            height: 15,
            color: const Color(0xFFD0D5DD),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.mic_none, color: AppColors.primary50, size: 20),
          ),
        ],
      ),
    );
  }
}
