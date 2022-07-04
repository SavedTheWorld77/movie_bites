import 'package:flutter/material.dart';
import 'package:movie_bites/features/homepage/presentation/widgets/bottom_nav_bar.dart';
import 'package:movie_bites/features/homepage/presentation/widgets/featured_show.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/featured_show_buttons.dart';
import '../widgets/popular_on_moviedb.dart';
import '../widgets/preview_show.dart';

class MoviePreviewPage extends StatefulWidget {
  MoviePreviewPage({Key? key}) : super(key: key);

  @override
  State<MoviePreviewPage> createState() => _MoviePreviewPageState();
}

class _MoviePreviewPageState extends State<MoviePreviewPage> {
  ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0.0;
  List<String> movieImages = [
    "https://image.tmdb.org/t/p/w500/AkJQpZp9WoNdj7pLYSj1L0RcMMN.jpg",
    "https://image.tmdb.org/t/p/w500/62HCnUTziyWcpDaBO2i1DX17ljH.jpg",
    "https://image.tmdb.org/t/p/w500/xUuHj3CgmZQ9P2cMaqQs4J0d4Zc.jpg",
    "https://image.tmdb.org/t/p/w500/rLOk4z9zL1tTukIYV56P94aZXKk.jpg",
    "https://image.tmdb.org/t/p/w500/lABvGN7fDk5ifnwZoxij6G96t2w.jpg",
    "https://image.tmdb.org/t/p/w500/4SafxuMKQiw4reBiWKVZJpJn80I.jpg",
    "https://image.tmdb.org/t/p/w500/iR1bVfURbN7r1C46WHFbwCkVve.jpg",
    "https://image.tmdb.org/t/p/w500/xGclxjTTbOdR18zqoldGTjfzSkl.jpg",
    "https://image.tmdb.org/t/p/w500/kf1Jb1c2JAOqjuzA3H4oDM263uB.jpg",
    "https://image.tmdb.org/t/p/w500/qGDhodtpkpxkrFqokenGNJlzt6w.jpg"
  ];

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: const BottomNavBar(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: CustomAppBar(
                  scrollOffset: _scrollOffset,
                ),
              ),
            ];
          },
          body: Builder(
            builder: (BuildContext context) {
              return CustomScrollView(
                controller: _scrollController,
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Stack(
                      clipBehavior: Clip.antiAlias,
                      children: const [
                        FeaturedShow(),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: FeaturedShowButtons(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  PopularOnMovieDB(movieImages: movieImages),
                ],
              );
            },
          ),
        ));
  }
}
