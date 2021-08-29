import 'package:mobx/mobx.dart';
import 'package:split_the_bill/shared/database/class/bill.dart';
import 'package:split_the_bill/shared/database/class/person.dart';
part 'database_store.g.dart';

class DatabaseStore = _DatabaseStoreBase with _$DatabaseStore;

abstract class _DatabaseStoreBase with Store {
  @observable
  List<Person> persons = [];

  @observable
  List<Bill> bills = [];
}
