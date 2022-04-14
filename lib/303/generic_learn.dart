import 'package:equatable/equatable.dart';

class UserManagement<T extends AdminUser> {
  final T admin;

  UserManagement(this.admin);
  void sayName(GenericUser user) {
    print(user.name);
  }

  int calculateMoney(List<GenericUser> users) {
    int sum = 0;
    for (var item in users) {
      sum += item.money;
    }
    int initialValue = admin.role == 1 ? admin.money : 0;

    final sumMoney =
        users.map((e) => e.money).fold<int>(initialValue, (previousValue, element) => previousValue + element);

    final _monney = users.fold<int>(initialValue, (previousValue, element) => previousValue + element.money);
    return _monney;
  }

  Iterable<VBModel<R>>? showNames<R>(List<GenericUser> users) {
    if (R == String) {
      final names = users.map((e) => VBModel<R>(e.name.split('').toList().cast<R>()));
      return names;
    }
    return null;
  }
}

class VBModel<T> {
  final String name = 'vb';
  final List<T> items;

  VBModel(this.items);
}

class GenericUser extends Equatable {
  final String name;
  final String id;
  final int money;

  const GenericUser(this.name, this.id, this.money);

  bool findUserName(String name) {
    return this.name == name;
  }

  @override
  String toString() => 'GenericUser(name: $name, id: $id, money: $money)';

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}

class AdminUser extends GenericUser {
  final int role;
  const AdminUser(String name, String id, int money, this.role) : super(name, id, money);
}
