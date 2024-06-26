class ModelOtp {
  String? status;
  String? userid;
  String? phone;
  String? name;
  String? email;
  String? type;
  String? message;

  ModelOtp(
      {this.status,
        this.userid,
        this.phone,
        this.name,
        this.email,
        this.type,
        this.message});

  ModelOtp.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    userid = json['userid'];
    phone = json['phone'];
    name = json['name'];
    email = json['email'];
    type = json['type'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    data['userid'] = this.userid;
    data['phone'] = this.phone;
    data['name'] = this.name;
    data['email'] = this.email;
    data['type'] = this.type;
    data['message'] = this.message;
    return data;
  }
}
