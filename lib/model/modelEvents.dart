class Eventlist {
  String? eventId;
  String? eventName;
  String? description;
  String? eventFrom;
  String? eventTo;
  String? url;

  Eventlist(
      {this.eventId,
        this.eventName,
        this.description,
        this.eventFrom,
        this.eventTo,
        this.url});

  Eventlist.fromJson(Map<String, dynamic> json) {
    eventId = json['EventId'];
    eventName = json['EventName'];
    description = json['Description'];
    eventFrom = json['EventFrom'];
    eventTo = json['EventTo'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['EventId'] = this.eventId;
    data['EventName'] = this.eventName;
    data['Description'] = this.description;
    data['EventFrom'] = this.eventFrom;
    data['EventTo'] = this.eventTo;
    data['url'] = this.url;
    return data;
  }
}
