import 'package:flutter/material.dart';
import 'filter_button.dart';

class WineFilterSection extends StatefulWidget {
  const WineFilterSection({super.key});

  @override
  _WineFilterSectionState createState() => _WineFilterSectionState();
}

class _WineFilterSectionState extends State<WineFilterSection> {
  // Keep track of the selected filter
  String selectedFilter = 'Type'; // Default selected filter

  @override
  Widget build(BuildContext context) {
    // List of filters
    List<String> filters = ['Type', 'Style', 'Countries', 'Grape', 'Price'];

    return SizedBox(
      height: 38,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          String filter = filters[index];
          return FilterButton(
            text: filter,
            isSelected: selectedFilter == filter,
            onPressed: () {
              setState(() {
                selectedFilter = filter;
              });
            },
          );
        },
      ),
    );
  }
}
