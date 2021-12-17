import 'package:flutter/material.dart';
import 'package:netflix/constants/constants.dart';
import 'package:netflix/screen/screen_popular_movies.dart';
import 'package:netflix/screen/screen_search.dart';
import 'package:netflix/screen/screen_top_rated_movies.dart';
import 'package:netflix/screen/screen_top_tvshows.dart';
import 'package:netflix/widgets/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: bottomNavBar(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              floating: true,
              expandedHeight: 450,
              toolbarHeight: 80,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/kurup2.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              title: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/netFlixLogo.png",
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchContent()));
                            },
                            icon: const Icon(
                              Icons.search_sharp,
                              size: 28,
                            ),
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "assets/images/netFlix_smiley.jpg",
                                height: 30,
                                width: 30,
                                fit: BoxFit.cover,
                              )),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      commonText(
                          text: "TV Shows",
                          color: Colors.white,
                          weight: FontWeight.w400),
                      commonText(
                          text: "Movies",
                          color: Colors.white,
                          weight: FontWeight.w400),
                      Row(
                        children: [
                          commonText(
                              text: "Categories",
                              color: Colors.white,
                              weight: FontWeight.w400),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedh2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      sizedw1,
                      commonText(text: "\tSlick", weight: FontWeight.w400),
                      commonText(
                        text: "•",
                        color: Colors.white38,
                      ),
                      commonText(text: "\tDrama\t", weight: FontWeight.w400),
                      commonText(
                        text: "•",
                        color: Colors.white38,
                      ),
                      commonText(
                          text: "\tCon Game\t", weight: FontWeight.w400),
                      commonText(
                        text: "•",
                        color: Colors.white38,
                      ),
                      commonText(
                          text: "\tVintage Crime\t", weight: FontWeight.w400),
                      commonText(
                        text: "•",
                        color: Colors.white38,
                      ),
                      commonText(
                          text: "\tOn The Run\t", weight: FontWeight.w400),
                      sizedw1
                    ],
                  ),
                  sizedh2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      bannerOptions(icon: Icons.add, text: "My List"),
                      Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.play_arrow, color: Colors.black),
                            commonText(text: "Play", color: Colors.black),
                          ],
                        ),
                      ),
                      // bannerOptions(icon: Icons.play_arrow,text: "Play",),),
                      bannerOptions(icon: Icons.info_outline, text: "Info"),
                    ],
                  ),
                  sizedh2,
                  commonText(text: "\t\t\t\tPopular Movies"),
                  sizedh2,
                  const PopularMovies(),
                  sizedh2,
                  commonText(text: "\t\t\t\tTop Rated Films"),
                  sizedh2,
                  const TopRatedMovies(),
                  sizedh2,
                  commonText(text: "\t\t\t\tTV Shows"),
                  sizedh2,
                  const TopTvShows(),

                  const SizedBox(
                    height: 40,
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
