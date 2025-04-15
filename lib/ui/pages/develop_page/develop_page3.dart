import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DevelopPage extends StatefulWidget {
  const DevelopPage({super.key});
  @override
  State<DevelopPage> createState() => _DevelopPageState();
}

class _DevelopPageState extends State<DevelopPage>
    with TickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController _tabController;

  final List<String> tabs = ['Posts', 'Media', 'Likes'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  Widget _buildTabContent(String label) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
      ),
      itemCount: 30,
      itemBuilder: (_, index) {
        return Container(
          color: Colors.blueGrey.shade200,
          child: Center(child: Text('$label $index')),
        );
      },
    );
  }

  Widget _buildNestedScrollView() {
    return DefaultTabController(
      length: tabs.length,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerScrolled) => [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('User Name'),
              background: Image.network(
                'https://picsum.photos/800/400',
                fit: BoxFit.cover,
              ),
            ),
            bottom: TabBar(
              controller: _tabController,
              tabs: tabs.map((e) => Tab(text: e)).toList(),
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: tabs.map(_buildTabContent).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      _buildNestedScrollView(),
      const Center(child: Text('Search')),
      const Center(child: Text('Favorites')),
      const Center(child: Text('Account')),
    ];

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) => setState(() => _currentIndex = value),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Likes'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
