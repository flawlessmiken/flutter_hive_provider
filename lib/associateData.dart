import 'package:associate/utils.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'model/associate.dart';

class AssociateData extends ChangeNotifier {
  static const String _boxName = "associateBox";

  List<Associate> _associate = [];

  Associate _activeAssociate;

  void getAssociates() async {
    var box = await Hive.openBox<Associate>(_boxName);

    _associate = box.values.toList();

    notifyListeners();
  }

  Associate getAssociate(index) {
    return _associate[index];
  }

  void addAssociate(Associate associate) async {
    var box = await Hive.openBox<Associate>(_boxName);

    await box.add(associate);
    _associate = box.values.toList();

    notifyListeners();
  }

  void deleteAssociate(Key) async{
   var box = await Hive.openBox(_boxName);

   await box.delete(Key);

    _associate = box.values.toList();

    Log.i("Deleted member with key "+ Key.toString());

    notifyListeners();
  }

  void editAssociate({Associate associate, int associateKey}) async{

    var box = await Hive.openBox(_boxName);
    await box.put(associateKey, associate);

    _associate = box.values.toList();

    _activeAssociate = box.get(associateKey);


    Log.i("Eddited:"+associate.name);
    notifyListeners();
 
  }

  void setActiveAssociate(key)async{
    var box = await Hive.openBox<Associate>(_boxName);

    _activeAssociate = box.get(key);
    notifyListeners();

  }

  Associate getActiveAssociate(){
    return _activeAssociate;
  }

  int get associateCount {
    return _associate.length;
  }
}
