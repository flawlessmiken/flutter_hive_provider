


import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'associate.g.dart';

@HiveType(typeId: 0)
class Associate extends HiveObject{
  @HiveField(0)
  final String name;

  @HiveField(1)
  final int phone;

  @HiveField(2)
  final int age;

  @HiveField(3)
  final bool isSenior;

  @HiveField(4)
  final DateTime joinDate;

  Associate({
    @required this.name,
    this.phone,
    this.age,
    this.isSenior,
    this.joinDate,
  });
}
