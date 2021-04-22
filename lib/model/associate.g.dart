// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AssociateAdapter extends TypeAdapter<Associate> {
  @override
  final int typeId = 0;

  @override
  Associate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Associate(
      name: fields[0] as String,
      phone: fields[1] as int,
      age: fields[2] as int,
      isSenior: fields[3] as bool,
      joinDate: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Associate obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.phone)
      ..writeByte(2)
      ..write(obj.age)
      ..writeByte(3)
      ..write(obj.isSenior)
      ..writeByte(4)
      ..write(obj.joinDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AssociateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
