import 'package:chopper/chopper.dart';

part 'api_cust_exp.chopper.dart';

@ChopperApi(baseUrl: '/CustomerExpAPI/1.0')
abstract class ApiCustExp extends ChopperService {
  @Post(path: "complaint", headers: {'Content-Type': 'application/json'})
  Future<Response> submitComplaint(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Get(
      path: "complaint/{ticketId}",
      headers: {'Content-Type': 'application/json'})
  Future<Response> showComplaint(
    @Path('ticketId') int ticketId, [
    @Header('Authorization') String token,
  ]);

  @Put(path: "feedback", headers: {'Content-Type': 'application/json'})
  Future<Response> submitFeedback(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Get(
      path: "feedback/{ticketId}",
      headers: {'Content-Type': 'application/json'})
  Future<Response> showFeedback(
    @Path('ticketId') int ticketId, [
    @Header('Authorization') String token,
  ]);

  static ApiCustExp create() {
    final client = ChopperClient(
        baseUrl: 'https://apigateway.mandiriwhatthehack.com/gateway');
    return _$ApiCustExp(client);
  }
}
