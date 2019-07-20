// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_oob.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ApiOob extends ApiOob {
  _$ApiOob([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ApiOob;

  Future<Response> registerAdmin(Map<String, dynamic> body) {
    final $url = '/api/register';
    final $headers = {'Content-Type': 'application/json'};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> loginAdmin(Map<String, dynamic> body) {
    final $url = '/api/login';
    final $headers = {'Content-Type': 'application/json'};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> insertBranch(Map<String, dynamic> body, [String token]) {
    final $url = '/api/insertBranch';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> insertCard(Map<String, dynamic> body, [String token]) {
    final $url = '/api/insertCard';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> insertProduct(Map<String, dynamic> body, [String token]) {
    final $url = '/api/insertProduct';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> insertCitizen(Map<String, dynamic> body, [String token]) {
    final $url = '/api/insertCitizen';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> getBranch([String token]) {
    final $url = '/api/getBranch';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> getCard([String token]) {
    final $url = '/api/getCard';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> getProduct([String token]) {
    final $url = '/api/getProduct';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> getCitizen([String token]) {
    final $url = '/api/getCitizen';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> deleteBranch(String branchCode, [String token]) {
    final $url = '/api/deleteBranch';
    final Map<String, dynamic> $params = {'branchCode': branchCode};
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> deleteCard(String cardCode, [String token]) {
    final $url = '/api/deleteCard';
    final Map<String, dynamic> $params = {'cardCode': cardCode};
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> deleteProduct(String productCode, [String token]) {
    final $url = '/api/deleteProduct';
    final Map<String, dynamic> $params = {'productCode': productCode};
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> deleteCitizen(String nik, [String token]) {
    final $url = '/api/deleteCitizen';
    final Map<String, dynamic> $params = {'id': nik};
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> getKycData(Map<String, dynamic> body, [String token]) {
    final $url = '/api/getKYCData';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> submitKycResult(Map<String, dynamic> body, [String token]) {
    final $url = '/api/SubmitKYCResult';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> createSession(Map<String, dynamic> body, [String token]) {
    final $url = '/api/initiate/createSession';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> resendOtp(Map<String, dynamic> body, [String token]) {
    final $url = '/api/initiate/resendOTP';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> validateOtp(Map<String, dynamic> body, [String token]) {
    final $url = '/api/initiate/validateOTP';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> submitBiodata(Map<String, dynamic> body, [String token]) {
    final $url = '/api/submitData';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> submitImageKTP(Map<String, dynamic> body, [String token]) {
    final $url = '/api/submitImageKTP';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> submitImageSelfie(Map<String, dynamic> body,
      [String token]) {
    final $url = '/api/submitImageSelfie';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> submitImageSign(Map<String, dynamic> body, [String token]) {
    final $url = '/api/submitImageSign';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> doKyc(Map<String, dynamic> body, [String token]) {
    final $url = '/api/KYC';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> createAccount([String token]) {
    final $url = '/api/createAccount';
    final $headers = {
      'Authorization': token,
      'Content-Type': 'application/json'
    };
    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
