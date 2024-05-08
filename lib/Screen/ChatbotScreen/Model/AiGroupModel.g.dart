// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AiGroupModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AiGroupModelAdapter extends TypeAdapter<AiGroupModel> {
  @override
  final int typeId = 1;

  @override
  AiGroupModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AiGroupModel(
      groupId: fields[0] as String?,
      datatime: fields[2] as String?,
      titleMessage: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AiGroupModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.groupId)
      ..writeByte(1)
      ..write(obj.titleMessage)
      ..writeByte(2)
      ..write(obj.datatime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AiGroupModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
