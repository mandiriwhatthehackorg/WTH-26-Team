import 'package:chopper/chopper.dart';

part 'api_trx_payment.chopper.dart';

@ChopperApi(baseUrl: '/TrxAndPaymentAPI/1.0')
abstract class ApiTrxPayment extends ChopperService {
  @Put(path: "bill", headers: {'Content-Type': 'application/json'})
  Future<Response> showTrxBill([
    @Header('Authorization') String token,
  ]);

  @Get(
      path: "bill/axafinancial/{customerId}",
      headers: {'Content-Type': 'application/json'})
  Future<Response> showAxaByCustomerId(
    @Path('customerId') int customerId, [
    @Header('Authorization') String token,
  ]);

  @Get(
      path: "bill/axafinancial/{customerId}",
      headers: {'Content-Type': 'application/json'})
  Future<Response> paymentAxaByCustomerId(
    @Path('accountNumber') int accountNumber,
    @Query('startDate') String startDate,
    @Query('endDate') String endDate, [
    @Header('Authorization') String token,
  ]);

  static ApiTrxPayment create() {
    final client = ChopperClient(
        baseUrl: 'https://apigateway.mandiriwhatthehack.com/gateway');
    return _$ApiTrxPayment(client);
  }
}
