import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/ui/pages/develop_page/develop_page_2.dart';

class DevelopPage extends StatefulWidget {
  const DevelopPage({super.key});

  @override
  State<DevelopPage> createState() => _DevelopPageState();
}

class _DevelopPageState extends State<DevelopPage>
    with TickerProviderStateMixin {
  late final List<String> imageUrls;
  late final TabController _tabController;
  late final ScrollController _innerController;
  late final ScrollController _outerController;
  int _currentIndex = 0;
  bool _showBottomBar = true;

  final List<String> tabs = ['Random', 'Favorites'];

  bool _isSyncingOuter = false;
  bool _isSyncingInner = false;

  double _previousScrollOffset = 0;
  double _appBarVisibleRatio = 1.0;

  @override
  void initState() {
    super.initState();
    imageUrls = generatePokemonImageUrls();
    _tabController = TabController(length: tabs.length, vsync: this);
    _innerController = ScrollController();
    _outerController = ScrollController();

    _innerController.addListener(() {
      _syncInnerToOuter();
      final current = _innerController.position.pixels;
      final delta = current - _previousScrollOffset;

      // AppBarの表示率をスクロール方向と速度に応じて調整
      setState(() {
        if (delta > 5) {
          // 下にスクロール → 隠す
          _appBarVisibleRatio = (_appBarVisibleRatio - 0.1).clamp(0.0, 1.0);
        } else if (delta < -5) {
          // 上にスクロール → 表示
          _appBarVisibleRatio = (_appBarVisibleRatio + 0.1).clamp(0.0, 1.0);
        }
      });

      // BottomNavigationBar 表示制御
      if (delta < -5 && !_showBottomBar) {
        setState(() => _showBottomBar = true);
      } else if (delta > 5 && _showBottomBar) {
        setState(() => _showBottomBar = false);
      }

      _previousScrollOffset = current;
    });

    // _outerController.addListener(_syncOuterToInner);
  }

  void _syncOuterToInner() {
    if (_isSyncingInner) return;

    _isSyncingOuter = true;
    final offset = _outerController.offset;

    // 内部を動かす
    if (_innerController.hasClients) {
      _innerController.jumpTo(offset.clamp(
        _innerController.position.minScrollExtent,
        _innerController.position.maxScrollExtent,
      ));
    }

    _isSyncingOuter = false;
  }

  void _syncInnerToOuter() {
    if (_isSyncingOuter) return;

    _isSyncingInner = true;
    final offset = _innerController.offset;

    if (_outerController.hasClients) {
      _outerController.jumpTo(offset.clamp(
        _outerController.position.minScrollExtent,
        _outerController.position.maxScrollExtent,
      ));
    }

    _isSyncingInner = false;
  }

  List<String> generatePokemonImageUrls({int count = 500, int max = 1000}) {
    final baseUrl =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/';
    final random = Random();
    final Set<int> numbers = {};
    while (numbers.length < count) {
      numbers.add(random.nextInt(max));
    }
    return numbers.map((number) => '$baseUrl${number + 1}.png').toList();
  }

  Widget buildGridTab() {
    return Builder(
      builder: (context) {
        return CustomScrollView(
          controller: _innerController,
          key: const PageStorageKey('GridTab'),
          slivers: [
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final imageUrl = imageUrls[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DevelopPage2(imageUrl: imageUrl),
                          ),
                        );
                      },
                      child: Hero(
                        tag: imageUrl,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.blueGrey, width: 0.5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: CachedNetworkImage(
                              imageUrl: imageUrl,
                              placeholder: (context, url) => const Center(
                                child:
                                    CircularProgressIndicator(strokeWidth: 2),
                              ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  childCount: imageUrls.length,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3,
                  childAspectRatio: 1.0,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget buildFavoritesTab() {
    return const Center(child: Text('Favorites (実装予定)'));
  }

  Widget buildNestedScrollView() {
    return NestedScrollView(
      controller: _outerController,
      headerSliverBuilder: (context, _) => [
        SliverOverlapAbsorber(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          sliver: SliverAppBar(
            expandedHeight: 200,
            pinned: false,
            floating: true,
            snap: true,
            toolbarHeight: 0,
            flexibleSpace: AnimatedOpacity(
              opacity: _appBarVisibleRatio,
              duration: const Duration(milliseconds: 200),
              child: Transform.translate(
                offset: Offset(0, (1 - _appBarVisibleRatio) * -50),
                child: FlexibleSpaceBar(
                  background: Image.network(
                    'https://blog-imgs-57-origin.fc2.com/p/o/k/pokemorning/tumblr_m1w2fdntIM1rt0hdzo1_250.gif',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverPersistentHeader(
          pinned: false,
          delegate: _TabBarDelegate(
            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.deepPurple,
              tabs: tabs.map((t) => Tab(text: t)).toList(),
            ),
          ),
        ),
      ],
      body: TabBarView(
        controller: _tabController,
        children: [
          buildGridTab(),
          buildFavoritesTab(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      buildNestedScrollView(),
      const Center(child: Text('Search')),
      const Center(child: Text('Profile')),
    ];

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: Offstage(
        offstage: !_showBottomBar,
        child: AnimatedSlide(
          offset: _showBottomBar ? Offset.zero : const Offset(0, 1),
          duration: const Duration(milliseconds: 200),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) => setState(() => _currentIndex = index),
            selectedItemColor: Colors.deepPurple,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.grid_on), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  _TabBarDelegate(this.tabBar);

  @override
  double get minExtent => 0;
  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ColoredBox(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
