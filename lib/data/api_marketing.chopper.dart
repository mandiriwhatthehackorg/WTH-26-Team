// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_marketing.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ApiMarketing extends ApiMarketing {
  _$ApiMarketing([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ApiMarketing;

  Future<Response> showPromo([String token]) {
    final $url = '/MarketingAPI/1.0/promotion';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showMerchantPromo([String token]) {
    final $url = '/MarketingAPI/1.0/promotion/merchant';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showMerchantPromoByMerchantId(int merchantId,
      [String token]) {
    final $url = '/MarketingAPI/1.0/promotion/merchant/${merchantId}';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showPromoMerchantByPeriod(String startDate, String endDate,
      [String token]) {
    final $url = '/MarketingAPI/1.0/promotion/period';
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

  Future<Response> showPromoMerchantByTrxVal([String token]) {
    final $url = '/MarketingAPI/1.0/promotion/value';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
