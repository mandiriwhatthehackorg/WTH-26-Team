import 'package:chopper/chopper.dart';

part 'api_marketing.chopper.dart';

@ChopperApi(baseUrl: '/MarketingAPI/1.0')
abstract class ApiMarketing extends ChopperService {
  @Get(path: "promotion", headers: {'Content-Type': 'application/json'})
  Future<Response> showPromo([
    @Header('Authorization') String token,
  ]);

  @Get(
      path: "promotion/merchant", headers: {'Content-Type': 'application/json'})
  Future<Response> showMerchantPromo([
    @Header('Authorization') String token,
  ]);

  @Get(
      path: "promotion/merchant/{merchantId}",
      headers: {'Content-Type': 'application/json'})
  Future<Response> showMerchantPromoByMerchantId(
    @Path('merchantId') int merchantId, [
    @Header('Authorization') String token,
  ]);

  @Get(path: "promotion/period", headers: {'Content-Type': 'application/json'})
  Future<Response> showPromoMerchantByPeriod(
    @Query('startDate') String startDate,
    @Query('endDate') String endDate, [
    @Header('Authorization') String token,
  ]);

  @Get(path: "promotion/value", headers: {'Content-Type': 'application/json'})
  Future<Response> showPromoMerchantByTrxVal([
    @Header('Authorization') String token,
  ]);

  static ApiMarketing create() {
    final client = ChopperClient(
        baseUrl: 'https://apigateway.mandiriwhatthehack.com/gateway');
    return _$ApiMarketing(client);
  }
}
