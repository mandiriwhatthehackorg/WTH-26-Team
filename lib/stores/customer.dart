import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mandiri_wth/data/api_servicing.dart';
import 'package:mandiri_wth/serializers/response_customer.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

part 'customer.g.dart';

class Customer = CustomerBase with _$Customer;

abstract class CustomerBase with Store {
  CustomerBase();

  @observable
  ResponseCustomer responseCustomer = ResponseCustomer();

  @action
  getResponseCustomer(BuildContext context) {
    fetchCustomer("1000007509", context).then((customer) {
      responseCustomer = customer;
    });
  }

  Future<ResponseCustomer> fetchCustomer(
      String cif, BuildContext context) async {
    final res = await Provider.of<ApiServicing>(context).showCustomerByCif(cif,
        "Bearer eyJraWQiOiJqd3RrZXkiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJmZDFhZWFjNS04ZGI3LTQ1ZGMtOGYzNy0wZTY2ZWYxMDBhYmUiLCJhdWQiOlsiOTQxODIxNjQtN2E2NS00NjE4LWE0OTktODQ5YjE5OTY1NWIyIiwibWFuZGlyaV9oYWNrYXRob25fdGVhbSJdLCJuYmYiOjE1NjM2MTQ3NDcsImlzcyI6Imh0dHBzOlwvXC93d3cuYmFua21hbmRpcmkuY28uaWRcLyIsImV4cCI6MTU2MzgzMDc0NywiaWF0IjoxNTYzNjE0NzQ3LCJhcHBfaWQiOiI5NDE4MjE2NC03YTY1LTQ2MTgtYTQ5OS04NDliMTk5NjU1YjIifQ.iJswhYhMgn3naHQ8N3cTyfqxqxZ9Yn8XXRMeoV5ZS901SuDBAJdV3IrXQWUxjfGEWP9Hojcy-ssRfWzZy8yIsvF3W9wCum-8P3S2woRjqotQ36hejN1-CQ_GEqYzeRWNnTlVQ0OuGhETbchfuO5b_cHo4E-2LNzsc7uOR0rhVpU");

    ResponseCustomer responseCustomer = ResponseCustomer();

    if (res.isSuccessful) {
      responseCustomer = ResponseCustomer.fromJson(json.decode(res.body));
      print("CUSTOMER AJIG ${responseCustomer.response.cif.address1}");
      return responseCustomer;
    } else {
      throw Exception(status: "Failed to load Customer Data");
    }
  }
}
