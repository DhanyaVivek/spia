class ModelLogin {
  String? status;
  String? userid;
  String? phone;
  String? name;
  String? otp;
  String? email;
  String? message;
  String? systemname;

  ModelLogin(
      {this.status,
        this.userid,
        this.phone,
        this.name,
        this.otp,
        this.email,
        this.message,
        this.systemname});

  ModelLogin.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    userid = json['userid'];
    phone = json['phone'];
    name = json['name'];
    otp = json['otp'];
    email = json['email'];
    message = json['message'];
    systemname = json['systemname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    data['userid'] = this.userid;
    data['phone'] = this.phone;
    data['name'] = this.name;
    data['otp'] = this.otp;
    data['email'] = this.email;
    data['message'] = this.message;
    data['systemname'] = this.systemname;
    return data;
  }
}
