import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/api_service/dio_service.dart';
import 'package:netflix/constants/constants.dart';
import 'package:netflix/models/model_popular_movies.dart';
import 'package:netflix/screen/screen_details.dart';

class PopularMovies extends StatelessWidget {
  const PopularMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PopularMovieResult>?>(
      future: DioService().fetchPopularMovies(),
      builder: (context, snapShot) {
        if (!snapShot.hasData) {
          return Column(
            children: [
              const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                  strokeWidth: 3.0,
                ),
              ),
              TextButton(
                onPressed: () {
                  const PopularMovies();
                },
                child: const Text("Refresh",style: TextStyle(color: Colors.red),),
              )
            ],
          );
        } else {
          return SizedBox(
            height: 150,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                primary: true,
                physics: const ScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: snapShot.data!.length,
                itemBuilder: (BuildContext context, index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenDetails(name: snapShot.data![index].title,description: snapShot.data![index].overview,bannerUrl: snapShot.data![index].posterPath,year: snapShot.data![index].releaseDate.toString(),)));
                    },
                    child: GridTile(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          commonImagePath + snapShot.data![index].posterPath,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        }
      },
    );
  }
}
