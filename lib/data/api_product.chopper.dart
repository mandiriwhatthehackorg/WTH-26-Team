// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_product.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ApiProduct extends ApiProduct {
  _$ApiProduct([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ApiProduct;

  Future<Response> showProducts([String token]) {
    final $url = '/ProductAPI/1.0/product';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showCcDetail([String token]) {
    final $url = '/ProductAPI/1.0/product/creditCard';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showDebitCard([String token]) {
    final $url = '/ProductAPI/1.0/product/debitCard';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showPersonalLoan([String token]) {
    final $url = '/ProductAPI/1.0/product/personalLoan';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showSavingAccount([String token]) {
    final $url = '/ProductAPI/1.0/product/savingAccount';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showDeposit([String token]) {
    final $url = '/ProductAPI/1.0/product/timeDeposit';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
