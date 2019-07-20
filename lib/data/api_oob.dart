import 'package:chopper/chopper.dart';

part 'api_oob.chopper.dart';

@ChopperApi(baseUrl: '/api')
abstract class ApiOob extends ChopperService {
  @Post(path: "register", headers: {'Content-Type': 'application/json'})
  Future<Response> registerAdmin(@Body() Map<String, dynamic> body);

  @Post(path: "login", headers: {'Content-Type': 'application/json'})
  Future<Response> loginAdmin(@Body() Map<String, dynamic> body);

  @Post(path: "insertBranch", headers: {'Content-Type': 'application/json'})
  Future<Response> insertBranch(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Post(path: "insertCard", headers: {'Content-Type': 'application/json'})
  Future<Response> insertCard(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Post(path: "insertProduct", headers: {'Content-Type': 'application/json'})
  Future<Response> insertProduct(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Post(path: "insertCitizen", headers: {'Content-Type': 'application/json'})
  Future<Response> insertCitizen(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Get(path: "getBranch", headers: {'Content-Type': 'application/json'})
  Future<Response> getBranch([
    @Header('Authorization') String token,
  ]);

  @Get(path: "getCard", headers: {'Content-Type': 'application/json'})
  Future<Response> getCard([
    @Header('Authorization') String token,
  ]);

  @Get(path: "getProduct", headers: {'Content-Type': 'application/json'})
  Future<Response> getProduct([
    @Header('Authorization') String token,
  ]);

  @Get(path: "getCitizen", headers: {'Content-Type': 'application/json'})
  Future<Response> getCitizen([
    @Header('Authorization') String token,
  ]);

  @Get(path: "deleteBranch", headers: {'Content-Type': 'application/json'})
  Future<Response> deleteBranch(
    @Query('branchCode') String branchCode, [
    @Header('Authorization') String token,
  ]);

  @Get(path: "deleteCard", headers: {'Content-Type': 'application/json'})
  Future<Response> deleteCard(
    @Query('cardCode') String cardCode, [
    @Header('Authorization') String token,
  ]);

  @Get(path: "deleteProduct", headers: {'Content-Type': 'application/json'})
  Future<Response> deleteProduct(
    @Query('productCode') String productCode, [
    @Header('Authorization') String token,
  ]);

  @Get(path: "deleteCitizen", headers: {'Content-Type': 'application/json'})
  Future<Response> deleteCitizen(
    @Query('id') String nik, [
    @Header('Authorization') String token,
  ]);

  @Post(path: "getKYCData", headers: {'Content-Type': 'application/json'})
  Future<Response> getKycData(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Post(path: "SubmitKYCResult", headers: {'Content-Type': 'application/json'})
  Future<Response> submitKycResult(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Post(
      path: "initiate/createSession",
      headers: {'Content-Type': 'application/json'})
  Future<Response> createSession(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Post(
      path: "initiate/resendOTP", headers: {'Content-Type': 'application/json'})
  Future<Response> resendOtp(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Post(
      path: "initiate/validateOTP",
      headers: {'Content-Type': 'application/json'})
  Future<Response> validateOtp(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Post(path: "submitData", headers: {'Content-Type': 'application/json'})
  Future<Response> submitBiodata(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Post(path: "submitImageKTP", headers: {'Content-Type': 'application/json'})
  Future<Response> submitImageKTP(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Post(
      path: "submitImageSelfie", headers: {'Content-Type': 'application/json'})
  Future<Response> submitImageSelfie(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Post(path: "submitImageSign", headers: {'Content-Type': 'application/json'})
  Future<Response> submitImageSign(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Post(path: "KYC", headers: {'Content-Type': 'application/json'})
  Future<Response> doKyc(
    @Body() Map<String, dynamic> body, [
    @Header('Authorization') String token,
  ]);

  @Post(path: "createAccount", headers: {'Content-Type': 'application/json'})
  Future<Response> createAccount([
    @Header('Authorization') String token,
  ]);

  static ApiOob create() {
    final client = ChopperClient(baseUrl: 'https://oob.mandiriwhatthehack.com');
    return _$ApiOob(client);
  }
}
