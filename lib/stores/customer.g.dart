// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$Customer on CustomerBase, Store {
  final _$responseCustomerAtom = Atom(name: 'CustomerBase.responseCustomer');

  @override
  ResponseCustomer get responseCustomer {
    _$responseCustomerAtom.context.enforceReadPolicy(_$responseCustomerAtom);
    _$responseCustomerAtom.reportObserved();
    return super.responseCustomer;
  }

  @override
  set responseCustomer(ResponseCustomer value) {
    _$responseCustomerAtom.context.conditionallyRunInAction(() {
      super.responseCustomer = value;
      _$responseCustomerAtom.reportChanged();
    }, _$responseCustomerAtom, name: '${_$responseCustomerAtom.name}_set');
  }

  final _$CustomerBaseActionController = ActionController(name: 'CustomerBase');

  @override
  dynamic getResponseCustomer(BuildContext context) {
    final _$actionInfo = _$CustomerBaseActionController.startAction();
    try {
      return super.getResponseCustomer(context);
    } finally {
      _$CustomerBaseActionController.endAction(_$actionInfo);
    }
  }
}
