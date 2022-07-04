import 'package:flutter/material.dart';
import 'package:movie_bites/features/homepage/presentation/widgets/preview_show.dart';

class PopularOnMovieDB extends StatelessWidget {
  const PopularOnMovieDB({
    Key? key,
    required this.movieImages,
  }) : super(key: key);

  final List<String> movieImages;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
                      .map((item) => PreviewShow(image: item))
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
