import 'package:chopper/chopper.dart';

part 'api_servicing.chopper.dart';

@ChopperApi(baseUrl: '/ServicingAPI/1.0')
abstract class ApiServicing extends ChopperService {
  @Get(
      path: "customer/{cifNumber}",
      headers: {'Content-Type': 'application/json'})
  Future<Response> showCustomerByCif(
    @Path('cifNumber') String cifNumber, [
    @Header('Authorization') String token,
  ]);

  @Get(
      path: "customer/casa/{accountNumber}/balance",
      headers: {'Content-Type': 'application/json'})
  Future<Response> showCasaBalanceByAccNumber(
    @Path('accountNumber') int accountNumber, [
    @Header('Authorization') String token,
  ]);

  @Get(
      path: "customer/casa/{accountNumber}/transaction",
      headers: {'Content-Type': 'application/json'})
  Future<Response> showCasaTrxByAccNumber(
    @Path('accountNumber') int accountNumber,
    @Query('startDate') String startDate,
    @Query('endDate') String endDate, [
    @Header('Authorization') String token,
  ]);

  @Get(
      path: "customer/creditcard/{ccNumber}/balance",
      headers: {'Content-Type': 'application/json'})
  Future<Response> showCcBalanceByCcNumber(
    @Path('ccNumber') int ccNumber, [
    @Header('Authorization') String token,
  ]);

  @Get(
      path: "customer/creditcard/{accountNumber}/transaction",
      headers: {'Content-Type': 'application/json'})
  Future<Response> showCcTrxByCcNumber(
    @Path('ccNumber') int ccNumber,
    @Query('Period') String period,
    @Query('retrieveRecordNumber') String retrieveRecordNumber, [
    @Header('Authorization') String token,
  ]);

  @Get(
      path: "customer/loan/{accountNumber}/balance",
      headers: {'Content-Type': 'application/json'})
  Future<Response> showLoanBalanceByAccNumber(
    @Path('accountNumber') int accountNumber, [
    @Header('Authorization') String token,
  ]);

  @Get(
      path: "customer/loan/{accountNumber}/transaction",
      headers: {'Content-Type': 'application/json'})
  Future<Response> showLoanTrxByAccNumber(
    @Path('accountNumber') int ccNumber,
    @Query('startDate') String startDate,
    @Query('endDate') String endDate, [
    @Header('Authorization') String token,
  ]);

  @Post(
      path: "customer/ebilling/{accountNumber}",
      headers: {'Content-Type': 'application/json'})
  Future<Response> regEbilling(
    @Body() Map<String, dynamic> body,
    @Path('accountNumber') int accountNumber,
    @Query('action') String action, [
    @Header('Authorization') String token,
  ]);

  @Post(
      path: "customer/ebilling/{accountNumber}",
      headers: {'Content-Type': 'application/json'})
  Future<Response> unRegEbilling(
    @Body() Map<String, dynamic> body,
    @Path('accountNumber') int accountNumber,
    @Query('action') String action, [
    @Header('Authorization') String token,
  ]);

  static ApiServicing create() {
    final client = ChopperClient(
        baseUrl: 'http://apigateway.mandiriwhatthehack.com/gateway');
    return _$ApiServicing(client);
  }
}
