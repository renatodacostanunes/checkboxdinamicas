import 'package:dynamic_checkboxes/checkbox_obj.dart';
import 'package:mobx/mobx.dart';

part 'checkbox_store.g.dart';

class CheckboxStore = _CheckboxStoreBase with _$CheckboxStore;

abstract class _CheckboxStoreBase with Store {
  @observable
  List<CheckboxObj> checkboxList = [
    CheckboxObj(name: "Judô"),
    CheckboxObj(name: "Corrida"),
    CheckboxObj(name: "Natação"),
    CheckboxObj(name: "Xadrez"),
    CheckboxObj(name: "Basquete"),
    CheckboxObj(name: "Futebol"),
  ];

  @action
  favoriteCategory(CheckboxObj obj, bool? check) {
    obj.isChecked = check;
  }
}
