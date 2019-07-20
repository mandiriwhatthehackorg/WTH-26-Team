// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_servicing.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ApiServicing extends ApiServicing {
  _$ApiServicing([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ApiServicing;

  Future<Response> showCustomerByCif(String cifNumber, [String token]) {
    final $url = '/ServicingAPI/1.0/customer/${cifNumber}';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showCasaBalanceByAccNumber(int accountNumber,
      [String token]) {
    final $url = '/ServicingAPI/1.0/customer/casa/${accountNumber}/balance';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showCasaTrxByAccNumber(
      int accountNumber, String startDate, String endDate,
      [String token]) {
    final $url = '/ServicingAPI/1.0/customer/casa/${accountNumber}/transaction';
    final Map<String, dynamic> $params = {
      'startDate': startDate,
      'endDate': endDate
    };
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showCcBalanceByCcNumber(int ccNumber, [String token]) {
    final $url = '/ServicingAPI/1.0/customer/creditcard/${ccNumber}/balance';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showCcTrxByCcNumber(
      int ccNumber, String period, String retrieveRecordNumber,
      [String token]) {
    final $url =
        '/ServicingAPI/1.0/customer/creditcard/{accountNumber}/transaction';
    final Map<String, dynamic> $params = {
      'Period': period,
      'retrieveRecordNumber': retrieveRecordNumber
    };
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showLoanBalanceByAccNumber(int accountNumber,
      [String token]) {
    final $url = '/ServicingAPI/1.0/customer/loan/${accountNumber}/balance';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showLoanTrxByAccNumber(
      int ccNumber, String startDate, String endDate,
      [String token]) {
    final $url = '/ServicingAPI/1.0/customer/loan/${ccNumber}/transaction';
    final Map<String, dynamic> $params = {
      'startDate': startDate,
      'endDate': endDate
    };
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> regEbilling(
      Map<String, dynamic> body, int accountNumber, String action,
      [String token]) {
    final $url = '/ServicingAPI/1.0/customer/ebilling/${accountNumber}';
    final Map<String, dynamic> $params = {'action': action};
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl,
        body: $body, parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> unRegEbilling(
      Map<String, dynamic> body, int accountNumber, String action,
      [String token]) {
    final $url = '/ServicingAPI/1.0/customer/ebilling/${accountNumber}';
    final Map<String, dynamic> $params = {'action': action};
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl,
        body: $body, parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
