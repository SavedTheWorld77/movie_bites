import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/custom_app_bar.dart';

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
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 9, horizontal: 10),
          color: Color(0xFF0E0E0E),
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 100,
          child: Row(children: [
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.home_outlined,
                      color: Color(0xFF484A4C),
                    ),
                    Spacer(),
                    Text("Home",
                        style:
                            TextStyle(color: Color(0xFF484A4C), fontSize: 12)),
                  ],
                )),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.clapperboard,
                      color: Color(0xFF484A4C),
                    ),
                    Spacer(),
                    Text(
                      "Coming Soon",
                      style: TextStyle(color: Color(0xFF484A4C), fontSize: 12),
                    ),
                  ],
                )),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(FontAwesomeIcons.c, color: Color(0xFF484A4C)),
                    Spacer(),
                    Text(
                      "Randomizer",
                      style: TextStyle(color: Color(0xFF484A4C), fontSize: 12),
                    ),
                  ],
                )),
          ]),
        ),
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
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("go home go bed");
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.85,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        "https://image.tmdb.org/t/p/w500/rbxvGXcD7fixrAsbiAYl9R76uDs.jpg"))),
                            foregroundDecoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.black,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print("my list tapped");
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Icon(FontAwesomeIcons.plus,
                                          color: Colors.white),
                                      SizedBox(height: 10),
                                      Text(
                                        "My List",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 35),
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 41,
                                        width: 90,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.white),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      side: const BorderSide(
                                                          color: Color(
                                                              0xFFBD1421))))),
                                          onPressed: () {
                                            print("play preview");
                                          },
                                          child: Row(
                                            children: const [
                                              Icon(
                                                FontAwesomeIcons.play,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                              Spacer(),
                                              Text(
                                                "Play",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print("info tapped");
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Icon(Icons.info_outline,
                                          color: Colors.white),
                                      SizedBox(height: 10),
                                      Text(
                                        "Info",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      color: Colors.black,
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10, bottom: 10),
                            child: const Text(
                              'Popular on MovieDB',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: movieImages
                                    .map((item) => Container(
                                          height: 146,
                                          width: 110,
                                          margin: const EdgeInsets.only(
                                              left: 10, bottom: 10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              image: DecorationImage(
                                                  image: NetworkImage(item),
                                                  fit: BoxFit.fill),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5))),
                                        ))
                                    .toList()),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      color: Colors.black,
                      height: 200,
                      child: Center(
                        child:
                            Text('Scroll to see the SliverAppBar in effect.'),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      color: Colors.black,
                      height: 200,
                      child: Center(
                        child:
                            Text('Scroll to see the SliverAppBar in effect.'),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      color: Colors.black,
                      height: 200,
                      child: Center(
                        child:
                            Text('Scroll to see the SliverAppBar in effect.'),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      color: Colors.black,
                      height: 200,
                      child: Center(
                        child:
                            Text('Scroll to see the SliverAppBar in effect.'),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ));
  }
}
