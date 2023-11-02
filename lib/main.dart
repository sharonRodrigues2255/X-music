import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/bloc/playlists/playlists_bloc.dart';
import 'package:musicplayer_project/bloc/your_top_ten/your_top_ten_bloc.dart';
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

  var box3 = Hive.openBox("MostlyAndRecently");
  var box2 = Hive.openBox("Favorites");
  var box = Hive.openBox("MySongBox");

  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );

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
        BlocProvider<YourTopTenBloc>(create: (context) => YourTopTenBloc())
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Xusic',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.black,
            textTheme: TextTheme(titleMedium: myfontBold()),
            appBarTheme:
                const AppBarTheme(color: Color.fromARGB(255, 26, 26, 26))),
        themeMode: ThemeMode.dark,
        home: const SplashScreen(),
      ),
    );
  }
}
