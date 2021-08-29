import 'package:mobx/mobx.dart';
import 'package:split_the_bill/shared/database/class/bill.dart';
part 'split_store.g.dart';

class SplitStore = _SplitStoreBase with _$SplitStore;

abstract class _SplitStoreBase with Store {
  // observable
  @observable
  List<Bill> bills = [];
  // computed
  // action
}
