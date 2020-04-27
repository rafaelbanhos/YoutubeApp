import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:youtubeapp/api.dart';
import 'package:youtubeapp/blocs/favorite_bloc.dart';
import 'package:youtubeapp/blocs/videos_bloc.dart';
import 'package:youtubeapp/screens/home_screen.dart';

void main() {
  Api api = Api();
  api.search("eletro");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: VideosBloc(),
        child: BlocProvider(
          bloc: FavoriteBloc(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "YouTube App Flutter",
            home: HomeScreen(),
          ),
        ));
  }
}
