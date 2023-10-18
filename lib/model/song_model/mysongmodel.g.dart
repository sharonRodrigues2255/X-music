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
      duration: fields[6] as int?,
      url: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MySongModel obj) {
    writer
      ..writeByte(6)
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
      ..write(obj.duration);
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
