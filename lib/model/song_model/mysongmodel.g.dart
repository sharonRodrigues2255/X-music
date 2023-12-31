// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mysongmodel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MySongModelAdapter extends TypeAdapter<MySongModel> {
  @override
  final int typeId = 2;

  @override
  MySongModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MySongModel(
      id: fields[0] as int,
      title: fields[1] as String,
      displayName: fields[2] as String,
      artist: fields[3] as String,
      favorite: fields[7] as bool?,
      playedTimes: fields[8] as int?,
      playedTime: fields[9] as int?,
      duration: fields[6] as int?,
      data: fields[10] as String?,
      url: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MySongModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.displayName)
      ..writeByte(3)
      ..write(obj.artist)
      ..writeByte(4)
      ..write(obj.url)
      ..writeByte(6)
      ..write(obj.duration)
      ..writeByte(7)
      ..write(obj.favorite)
      ..writeByte(8)
      ..write(obj.playedTimes)
      ..writeByte(9)
      ..write(obj.playedTime)
      ..writeByte(10)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MySongModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
