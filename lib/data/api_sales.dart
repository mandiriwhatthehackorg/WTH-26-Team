import 'package:chopper/chopper.dart';

part 'api_sales.chopper.dart';

@ChopperApi(baseUrl: '/SalesApi/1.0')
abstract class ApiSales extends ChopperService {
  @Get(path: "fee/mtrAccount", headers: {'Content-Type': 'application/json'})
  Future<Response> showMtrAccount([
    @Header('Authorization') String token,
  ]);

  @Get(path: "fee/savingAccount", headers: {'Content-Type': 'application/json'})
  Future<Response> showSavingAccount([
    @Header('Authorization') String token,
  ]);

  @Get(path: "fee/tabunganValas", headers: {'Content-Type': 'application/json'})
  Future<Response> showTabunganValas([
    @Header('Authorization') String token,
  ]);

  @Get(path: "rates", headers: {'Content-Type': 'application/json'})
  Future<Response> showFxRates([
    @Header('Authorization') String token,
  ]);

  @Get(path: "rates/{currency}", headers: {'Content-Type': 'application/json'})
  Future<Response> showFxRatesByCurrency(
    @Path('currency') int currency, [
    @Header('Authorization') String token,
  ]);

  static ApiSales create() {
    final client = ChopperClient(
        baseUrl: 'https://apigateway.mandiriwhatthehack.com/gateway');
    return _$ApiSales(client);
  }
}
