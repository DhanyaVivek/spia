class ModelMemberRegistration {
  String? name;
  String? phone;

  String? district;
  String? email;
  String? bloodgroup;
  String? orgzname;
  String? officeaddress;
  String? whatsapp;
  String? gst;
  String? aadhar;
  String? status;
  String? message;

  ModelMemberRegistration(
      {this.name,
        this.phone,

        this.district,
        this.email,
        this.bloodgroup,
        this.orgzname,
        this.officeaddress,
        this.whatsapp,
        this.gst,
        this.aadhar,
        this.status,
        this.message
      });

  ModelMemberRegistration.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phone = json['phone'];

    district = json['district'];
    email = json['email'];
    bloodgroup = json['bloodgroup'];
    orgzname = json['orgzname'];
    officeaddress = json['officeaddress'];
    whatsapp = json['whatsapp'];
    gst = json['gst'];
    aadhar = json['aadhar'];
    status = json['Status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['phone'] = this.phone;

    data['district'] = this.district;
    data['email'] = this.email;
    data['bloodgroup'] = this.bloodgroup;
    data['orgzname'] = this.orgzname;
    data['officeaddress'] = this.officeaddress;
    data['whatsapp'] = this.whatsapp;
    data['gst'] = this.gst;
    data['aadhar'] = this.aadhar;
    data['Status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}
