// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryModelsAdapter extends TypeAdapter<CategoryModels> {
  @override
  final typeId = 1;

  @override
  CategoryModels read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryModels(
      id: fields[0] as String,
      name: fields[1] as String,
      type: fields[3] as CategoryType,
      isDeleted: fields[2] == null ? false : fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CategoryModels obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.isDeleted)
      ..writeByte(3)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryModelsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
