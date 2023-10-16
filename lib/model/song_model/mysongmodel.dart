class MySongModel {
  int id;
  String title;
  String displayName;
  String artist;
  String? url;
  int? duration;
  MySongModel(
      {required this.id,
      required this.title,
      required this.displayName,
      required this.artist,
      required this.duration,
      required this.url});
}
