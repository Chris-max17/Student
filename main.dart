import 'package:flutter/material.dart';
import 'colors.dart';
import 'widgets/location_section.dart';
import 'widgets/search_bar_section.dart';
import 'widgets/wine_filter_section.dart';
import 'widgets/wine_list_with_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wine App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Archivo',
        scaffoldBackgroundColor: AppColors.secondary,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.secondary,
          elevation: 0,
          toolbarHeight: 700,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar to hold the search bar and other sections
          SliverAppBar(
            floating: true,  // Allows the AppBar to appear as you scroll back up
            pinned: false,    // AppBar will hide when scrolling down
            snap: true,       // Snaps the AppBar to its height when scrolling up
            backgroundColor: AppColors.secondary,
            expandedHeight: 200.0,  // Adjust the height as needed
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LocationSection(),
                    const SizedBox(height: 16),
                    const SearchBarSection(),
                    const SizedBox(height: 16),
                    const WineFilterSection(),
                  ],
                ),
              ),
            ),
          ),
          // Scrollable content section
          SliverToBoxAdapter(
            child: Container(
              height: 100000, // Placeholder for the scrollable content
              child: const WineListWithHeader(), // Add your list or content here
            ),
          ),
        ],
      ),
    );
  }
}
