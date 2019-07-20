// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_trx_payment.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ApiTrxPayment extends ApiTrxPayment {
  _$ApiTrxPayment([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ApiTrxPayment;

  Future<Response> showTrxBill([String token]) {
    final $url = '/TrxAndPaymentAPI/1.0/bill';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('PUT', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showAxaByCustomerId(int customerId, [String token]) {
    final $url = '/TrxAndPaymentAPI/1.0/bill/axafinancial/${customerId}';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> paymentAxaByCustomerId(
      int accountNumber, String startDate, String endDate,
      [String token]) {
    final $url = '/TrxAndPaymentAPI/1.0/bill/axafinancial/{customerId}';
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
}
