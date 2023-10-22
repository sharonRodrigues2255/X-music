// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_played.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecentlyPlayedAdapter extends TypeAdapter<RecentlyPlayed> {
  @override
  final int typeId = 3;

  @override
  RecentlyPlayed read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecentlyPlayed(
      index: fields[0] as int,
      song: fields[1] as MySongModel,
    );
  }

  @override
  void write(BinaryWriter writer, RecentlyPlayed obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.index)
      ..writeByte(1)
      ..write(obj.song);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecentlyPlayedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
