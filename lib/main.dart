import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/bloc/playlists/playlists_bloc.dart';
import 'package:musicplayer_project/model/playlist_model/my_playlist_model.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';

void main() async {
  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(2)) {
    Hive.registerAdapter(MySongModelAdapter());
  }

  if (!Hive.isAdapterRegistered(1)) {
    Hive.registerAdapter(MyPlaylistModelAdapter());
  }

  var box = Hive.openBox("MySongBox");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PlayerBloc>(create: (context) => PlayerBloc()),
        BlocProvider<PlaylistsBloc>(create: (context) => PlaylistsBloc()),
      ],
      child: GetMaterialApp(
        title: 'Xusic',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.black,
            textTheme: TextTheme(titleLarge: myfontBold(size: 25.0)),
            appBarTheme: AppBarTheme(color: Color.fromARGB(255, 26, 26, 26))),
        themeMode: ThemeMode.dark,
        home: const SplashScreen(),
      ),
    );
  }
}
