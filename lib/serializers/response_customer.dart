class ResponseCustomer {
  Response response;

  ResponseCustomer({this.response});

  ResponseCustomer.fromJson(Map<String, dynamic> json) {
    response = json['Response'] != null
        ? new Response.fromJson(json['Response'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.response != null) {
      data['Response'] = this.response.toJson();
    }
    return data;
  }
}

class Response {
  Exception exception;
  Cif cif;

  Response({this.exception, this.cif});

  Response.fromJson(Map<String, dynamic> json) {
    exception = json['Exception'] != null
        ? new Exception.fromJson(json['Exception'])
        : null;
    cif = json['cif'] != null ? new Cif.fromJson(json['cif']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.exception != null) {
      data['Exception'] = this.exception.toJson();
    }
    if (this.cif != null) {
      data['cif'] = this.cif.toJson();
    }
    return data;
  }
}

class Exception {
  String status;

  Exception({this.status});

  Exception.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    return data;
  }
}

class Cif {
  String cIFNumber;
  String branchNumber;
  String bankNumber;
  String cIFName1;
  String cIFName2;
  String titleAfterName;
  String address1;
  String address2;
  String address3;
  String address4;
  String postalCode;
  String telephone;
  String fax;
  String handphone;
  Null customerTypeCode;
  String residentCode;
  String occupationCode;
  String iDTypeCode;
  String iDNumber;
  Null iDExpiryDate;
  String iDIssuePlace;
  Null iDStatusCode;
  String dayOfBirth;
  String birthIncorporationPlace;
  String sexCode;
  String countryOfCitizenship;
  String motherMaidenName;
  String businessUnitCode;
  String codeField1;
  String codeFlag1;
  String codeAmount1;
  String codeCurrency1;
  String codeField2;
  String codeFlag2;
  String codeAmount2;
  String codeCurrency2;
  String codeAmount3;

  Cif(
      {this.cIFNumber,
        this.branchNumber,
        this.bankNumber,
        this.cIFName1,
        this.cIFName2,
        this.titleAfterName,
        this.address1,
        this.address2,
        this.address3,
        this.address4,
        this.postalCode,
        this.telephone,
        this.fax,
        this.handphone,
        this.customerTypeCode,
        this.residentCode,
        this.occupationCode,
        this.iDTypeCode,
        this.iDNumber,
        this.iDExpiryDate,
        this.iDIssuePlace,
        this.iDStatusCode,
        this.dayOfBirth,
        this.birthIncorporationPlace,
        this.sexCode,
        this.countryOfCitizenship,
        this.motherMaidenName,
        this.businessUnitCode,
        this.codeField1,
        this.codeFlag1,
        this.codeAmount1,
        this.codeCurrency1,
        this.codeField2,
        this.codeFlag2,
        this.codeAmount2,
        this.codeCurrency2,
        this.codeAmount3});

  Cif.fromJson(Map<String, dynamic> json) {
    cIFNumber = json['CIFNumber'];
    branchNumber = json['branchNumber'];
    bankNumber = json['bankNumber'];
    cIFName1 = json['CIFName1'];
    cIFName2 = json['CIFName2'];
    titleAfterName = json['titleAfterName'];
    address1 = json['address1'];
    address2 = json['address2'];
    address3 = json['address3'];
    address4 = json['address4'];
    postalCode = json['postalCode'];
    telephone = json['telephone'];
    fax = json['fax'];
    handphone = json['handphone'];
    customerTypeCode = json['customerTypeCode'];
    residentCode = json['residentCode'];
    occupationCode = json['occupationCode'];
    iDTypeCode = json['IDTypeCode'];
    iDNumber = json['IDNumber'];
    iDExpiryDate = json['IDExpiryDate'];
    iDIssuePlace = json['IDIssuePlace'];
    iDStatusCode = json['IDStatusCode'];
    dayOfBirth = json['dayOfBirth'];
    birthIncorporationPlace = json['birthIncorporationPlace'];
    sexCode = json['sexCode'];
    countryOfCitizenship = json['countryOfCitizenship'];
    motherMaidenName = json['motherMaidenName'];
    businessUnitCode = json['businessUnitCode'];
    codeField1 = json['codeField1'];
    codeFlag1 = json['codeFlag1'];
    codeAmount1 = json['codeAmount1'];
    codeCurrency1 = json['codeCurrency1'];
    codeField2 = json['codeField2'];
    codeFlag2 = json['codeFlag2'];
    codeAmount2 = json['codeAmount2'];
    codeCurrency2 = json['codeCurrency2'];
    codeAmount3 = json['codeAmount3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CIFNumber'] = this.cIFNumber;
    data['branchNumber'] = this.branchNumber;
    data['bankNumber'] = this.bankNumber;
    data['CIFName1'] = this.cIFName1;
    data['CIFName2'] = this.cIFName2;
    data['titleAfterName'] = this.titleAfterName;
    data['address1'] = this.address1;
    data['address2'] = this.address2;
    data['address3'] = this.address3;
    data['address4'] = this.address4;
    data['postalCode'] = this.postalCode;
    data['telephone'] = this.telephone;
    data['fax'] = this.fax;
    data['handphone'] = this.handphone;
    data['customerTypeCode'] = this.customerTypeCode;
    data['residentCode'] = this.residentCode;
    data['occupationCode'] = this.occupationCode;
    data['IDTypeCode'] = this.iDTypeCode;
    data['IDNumber'] = this.iDNumber;
    data['IDExpiryDate'] = this.iDExpiryDate;
    data['IDIssuePlace'] = this.iDIssuePlace;
    data['IDStatusCode'] = this.iDStatusCode;
    data['dayOfBirth'] = this.dayOfBirth;
    data['birthIncorporationPlace'] = this.birthIncorporationPlace;
    data['sexCode'] = this.sexCode;
    data['countryOfCitizenship'] = this.countryOfCitizenship;
    data['motherMaidenName'] = this.motherMaidenName;
    data['businessUnitCode'] = this.businessUnitCode;
    data['codeField1'] = this.codeField1;
    data['codeFlag1'] = this.codeFlag1;
    data['codeAmount1'] = this.codeAmount1;
    data['codeCurrency1'] = this.codeCurrency1;
    data['codeField2'] = this.codeField2;
    data['codeFlag2'] = this.codeFlag2;
    data['codeAmount2'] = this.codeAmount2;
    data['codeCurrency2'] = this.codeCurrency2;
    data['codeAmount3'] = this.codeAmount3;
    return data;
  }
}