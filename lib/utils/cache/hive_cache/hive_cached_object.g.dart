// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_cached_object.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveCachedObjectAdapter extends TypeAdapter<HiveCachedObject> {
  @override
  final int typeId = 1;

  @override
  HiveCachedObject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveCachedObject(
      fields[0] as dynamic,
      fields[1] as int,
      fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HiveCachedObject obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj._value)
      ..writeByte(1)
      ..write(obj._storeTimeInMilliseconds)
      ..writeByte(2)
      ..write(obj._cacheExpireTimeInMilliseconds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveCachedObjectAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
