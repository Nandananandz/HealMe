import 'package:hive_flutter/hive_flutter.dart';
part 'AiGroupModel.g.dart';

@HiveType(typeId: 1)
class AiGroupModel {
  @HiveField(0)
  String? groupId;
  @HiveField(1)
  String? titleMessage;
  @HiveField(2)
  String? datatime;

  AiGroupModel({this.groupId, this.datatime, this.titleMessage});
}
