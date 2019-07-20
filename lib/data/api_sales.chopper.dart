// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_sales.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ApiSales extends ApiSales {
  _$ApiSales([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ApiSales;

  Future<Response> showMtrAccount([String token]) {
    final $url = '/SalesApi/1.0/fee/mtrAccount';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showSavingAccount([String token]) {
    final $url = '/SalesApi/1.0/fee/savingAccount';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showTabunganValas([String token]) {
    final $url = '/SalesApi/1.0/fee/tabunganValas';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showFxRates([String token]) {
    final $url = '/SalesApi/1.0/rates';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showFxRatesByCurrency(int currency, [String token]) {
    final $url = '/SalesApi/1.0/rates/${currency}';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
