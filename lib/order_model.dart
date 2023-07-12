// To parse this JSON data, do
//
//     final latestOrderModel = latestOrderModelFromJson(jsonString);

import 'dart:convert';

LatestOrderModel latestOrderModelFromJson(String str) =>
    LatestOrderModel.fromJson(json.decode(str));

String latestOrderModelToJson(LatestOrderModel data) =>
    json.encode(data.toJson());

class LatestOrderModel {
  List<LatestOrder>? data;

  LatestOrderModel({
    this.data,
  });

  factory LatestOrderModel.fromJson(Map<String, dynamic> json) =>
      LatestOrderModel(
        data: json["data"] == null
            ? []
            : List<LatestOrder>.from(
                json["data"]!.map((x) => LatestOrder.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class LatestOrder {
  int? id;
  int? userId;
  int? checkerId;
  String? code;
  String? name;
  int? brandId;
  int? categoryId;
  String? status;
  String? result;
  String? description;
  String? paymentCode;
  String? serviceFee;
  String? adminFee;
  String? voucherId;
  String? progress;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? paymentType;
  String? paymentTypeId;
  String? expiredAt;
  DateTime? paymentAt;
  String? thumbnailImage;
  ProductCheckProgress? productCheckProgress;
  Checker? checker;

  LatestOrder({
    this.id,
    this.userId,
    this.checkerId,
    this.code,
    this.name,
    this.brandId,
    this.categoryId,
    this.status,
    this.result,
    this.description,
    this.paymentCode,
    this.serviceFee,
    this.adminFee,
    this.voucherId,
    this.progress,
    this.createdAt,
    this.updatedAt,
    this.paymentType,
    this.paymentTypeId,
    this.expiredAt,
    this.paymentAt,
    this.thumbnailImage,
    this.productCheckProgress,
    this.checker,
  });

  factory LatestOrder.fromJson(Map<String, dynamic> json) => LatestOrder(
        id: json["id"],
        userId: json["user_id"],
        checkerId: json["checker_id"],
        code: json["code"],
        name: json["name"],
        brandId: json["brand_id"],
        categoryId: json["category_id"],
        status: json["status"],
        result: json["result"],
        description: json["description"],
        paymentCode: json["payment_code"],
        serviceFee: json["service_fee"],
        adminFee: json["admin_fee"],
        voucherId: json["voucher_id"],
        progress: json["progress"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        paymentType: json["payment_type"],
        paymentTypeId: json["payment_type_id"],
        expiredAt: json["expired_at"],
        paymentAt: json["payment_at"] == null
            ? null
            : DateTime.parse(json["payment_at"]),
        thumbnailImage: json["thumbnail_image"],
        productCheckProgress: json["product_check_progress"] == null
            ? null
            : ProductCheckProgress.fromJson(json["product_check_progress"]),
        checker:
            json["checker"] == null ? null : Checker.fromJson(json["checker"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "checker_id": checkerId,
        "code": code,
        "name": name,
        "brand_id": brandId,
        "category_id": categoryId,
        "status": status,
        "result": result,
        "description": description,
        "payment_code": paymentCode,
        "service_fee": serviceFee,
        "admin_fee": adminFee,
        "voucher_id": voucherId,
        "progress": progress,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "payment_type": paymentType,
        "payment_type_id": paymentTypeId,
        "expired_at": expiredAt,
        "payment_at": paymentAt?.toIso8601String(),
        "thumbnail_image": thumbnailImage,
        "product_check_progress": productCheckProgress?.toJson(),
        "checker": checker?.toJson(),
      };
}

class Checker {
  int? id;
  String? code;
  String? name;
  String? email;
  String? phoneNumber;
  String? address;
  String? status;
  String? balance;
  int? isMale;
  String? imageUrl;
  String? rememberToken;
  DateTime? createdAt;
  DateTime? updatedAt;

  Checker({
    this.id,
    this.code,
    this.name,
    this.email,
    this.phoneNumber,
    this.address,
    this.status,
    this.balance,
    this.isMale,
    this.imageUrl,
    this.rememberToken,
    this.createdAt,
    this.updatedAt,
  });

  factory Checker.fromJson(Map<String, dynamic> json) => Checker(
        id: json["id"],
        code: json["code"],
        name: json["name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        address: json["address"],
        status: json["status"],
        balance: json["balance"],
        isMale: json["is_male"],
        imageUrl: json["image_url"],
        rememberToken: json["remember_token"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
        "email": email,
        "phone_number": phoneNumber,
        "address": address,
        "status": status,
        "balance": balance,
        "is_male": isMale,
        "image_url": imageUrl,
        "remember_token": rememberToken,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class ProductCheckProgress {
  int? id;
  String? name;
  String? type;

  ProductCheckProgress({
    this.id,
    this.name,
    this.type,
  });

  factory ProductCheckProgress.fromJson(Map<String, dynamic> json) =>
      ProductCheckProgress(
        id: json["id"],
        name: json["name"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
      };
}
