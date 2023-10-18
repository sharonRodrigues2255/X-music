// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_playlist_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MyPlaylistModelAdapter extends TypeAdapter<MyPlaylistModel> {
  @override
  final int typeId = 1;

  @override
  MyPlaylistModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MyPlaylistModel(
      id: fields[0] as int,
      name: fields[1] as String,
      playlistSongs: (fields[2] as List).cast<MySongModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, MyPlaylistModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.playlistSongs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyPlaylistModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
