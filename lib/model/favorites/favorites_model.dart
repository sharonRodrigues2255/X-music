import 'package:hive/hive.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
part 'favorites_model.g.dart';

@HiveType(typeId: 3)
class Favorites extends HiveObject {
  @HiveField(0)
  List<MySongModel> favoriteSongs;

  Favorites({required this.favoriteSongs});
}
