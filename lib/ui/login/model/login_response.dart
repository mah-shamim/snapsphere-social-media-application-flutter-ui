class LoginResponse {
  bool? status;
  String? message;
  DataBean? data;

  static LoginResponse? fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    LoginResponse loginResponseBean = LoginResponse();
    loginResponseBean.status = map['status'];
    loginResponseBean.message = map['message'];
    loginResponseBean.data = DataBean.fromMap(map['data']);
    return loginResponseBean;
  }

  Map toJson() => {
    "status": status,
    "message": message,
    "data": data,
  };
}

class DataBean {
  int? id;
  String? roleId;
  String? profileImage;
  String? name;
  String? email;
  dynamic otp;
  String? fcmToken;
  String? deviceType;
  String? deviceId;
  String? createdAt;
  String? updatedAt;
  String? token;

  static DataBean? fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    DataBean dataBean = DataBean();
    dataBean.id = map['id'];
    dataBean.roleId = map['role_id'];
    dataBean.profileImage = map['profileImage'];
    dataBean.name = map['name'];
    dataBean.email = map['email'];
    dataBean.otp = map['otp'];
    dataBean.fcmToken = map['fcm_token'];
    dataBean.deviceType = map['device_type'];
    dataBean.deviceId = map['device_id'];
    dataBean.createdAt = map['created_at'];
    dataBean.updatedAt = map['updated_at'];
    dataBean.token = map['token'];
    return dataBean;
  }

  Map toJson() => {
    "id": id,
    "role_id": roleId,
    "profileImage": profileImage,
    "name": name,
    "email": email,
    "otp": otp,
    "fcm_token": fcmToken,
    "device_type": deviceType,
    "device_id": deviceId,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "token": token,
  };
}