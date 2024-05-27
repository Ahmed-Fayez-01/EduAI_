class AuthModel {
  bool? isSuccess;
  dynamic? message;
  int? statusCode;
  Data? data;
  int? total;
  int? size;


  AuthModel.fromJson(Map<String, dynamic> json) {
    isSuccess = json['isSuccess'];
    message = json['message'];
    statusCode = json['statusCode'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    total = json['total'];
    size = json['size'];
  }

}

class Data {
  String? name;
  dynamic? title;
  dynamic? idType;
  String? idNumber;
  dynamic? idExpDate;
  dynamic? office;
  dynamic? city;
  String? nationalityStr;
  String? birthDateStr;
  String? packageNumber;
  String? segmentation;
  String? tentNumber;
  int? gender;
  String? bookNumber;
  String? mobileNumber;
  dynamic? contractNumber;
  dynamic? birthDate;
  String? recordDate;
  dynamic? nationalityId;
  dynamic? nationality;
  dynamic? hotelId;
  dynamic? hotel;
  int? comId;
  dynamic? floor;
  dynamic? wing;
  dynamic? room;
  dynamic? bed;
  int? id;
  int? tenantId;
  dynamic? notes;
  String? createdDate;
  dynamic? createBy;
  dynamic? lastModifiedDate;
  dynamic? lastModifiedBy;
  bool? isActive;
  bool? isDeleted;
  dynamic? daleteDate;
  dynamic? deletedBy;
  dynamic? createdBy;
  dynamic? modifiedBy;


  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    title = json['title'];
    idType = json['idType'];
    idNumber = json['idNumber'];
    idExpDate = json['idExpDate'];
    office = json['office'];
    city = json['city'];
    nationalityStr = json['nationalityStr'];
    birthDateStr = json['birthDateStr'];
    packageNumber = json['packageNumber'];
    segmentation = json['segmentation'];
    tentNumber = json['tentNumber'];
    gender = json['gender'];
    bookNumber = json['bookNumber'];
    mobileNumber = json['mobileNumber'];
    contractNumber = json['contractNumber'];
    birthDate = json['birthDate'];
    recordDate = json['recordDate'];
    nationalityId = json['nationalityId'];
    nationality = json['nationality'];
    hotelId = json['hotelId'];
    hotel = json['hotel'];
    comId = json['comId'];
    floor = json['floor'];
    wing = json['wing'];
    room = json['room'];
    bed = json['bed'];
    id = json['id'];
    tenantId = json['tenantId'];
    notes = json['notes'];
    createdDate = json['createdDate'];
    createBy = json['createBy'];
    lastModifiedDate = json['lastModifiedDate'];
    lastModifiedBy = json['lastModifiedBy'];
    isActive = json['isActive'];
    isDeleted = json['isDeleted'];
    daleteDate = json['daleteDate'];
    deletedBy = json['deletedBy'];
    createdBy = json['createdBy'];
    modifiedBy = json['modifiedBy'];
  }

}