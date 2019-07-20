import 'package:chopper/chopper.dart';

part 'api_product.chopper.dart';

@ChopperApi(baseUrl: '/ProductAPI/1.0')
abstract class ApiProduct extends ChopperService {
  @Get(path: "product", headers: {'Content-Type': 'application/json'})
  Future<Response> showProducts([
    @Header('Authorization') String token,
  ]);

  @Get(path: "product/creditCard", headers: {'Content-Type': 'application/json'})
  Future<Response> showCcDetail([
    @Header('Authorization') String token,
  ]);

  @Get(path: "product/debitCard", headers: {'Content-Type': 'application/json'})
  Future<Response> showDebitCard([
    @Header('Authorization') String token,
  ]);

  @Get(path: "product/personalLoan", headers: {'Content-Type': 'application/json'})
  Future<Response> showPersonalLoan([
    @Header('Authorization') String token,
  ]);

  @Get(path: "product/savingAccount", headers: {'Content-Type': 'application/json'})
  Future<Response> showSavingAccount([
    @Header('Authorization') String token,
  ]);

  @Get(path: "product/timeDeposit", headers: {'Content-Type': 'application/json'})
  Future<Response> showDeposit([
    @Header('Authorization') String token,
  ]);

  static ApiProduct create() {
    final client = ChopperClient(
        baseUrl: 'https://apigateway.mandiriwhatthehack.com/gateway');
    return _$ApiProduct(client);
  }
}
