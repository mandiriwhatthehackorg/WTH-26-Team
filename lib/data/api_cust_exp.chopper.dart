// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_cust_exp.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ApiCustExp extends ApiCustExp {
  _$ApiCustExp([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ApiCustExp;

  Future<Response> submitComplaint(Map<String, dynamic> body, [String token]) {
    final $url = '/CustomerExpAPI/1.0/complaint';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showComplaint(int ticketId, [String token]) {
    final $url = '/CustomerExpAPI/1.0/complaint/${ticketId}';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> submitFeedback(Map<String, dynamic> body, [String token]) {
    final $url = '/CustomerExpAPI/1.0/feedback';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> showFeedback(int ticketId, [String token]) {
    final $url = '/CustomerExpAPI/1.0/feedback/${ticketId}';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
