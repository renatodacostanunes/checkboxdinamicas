import 'package:mobx/mobx.dart';

part 'checkbox_obj.g.dart';

class CheckboxObj = _CheckboxObjBase with _$CheckboxObj;

abstract class _CheckboxObjBase with Store {
  _CheckboxObjBase({
    required this.name,
  });

  final String name;

  @observable
  bool? isChecked = false;
}
