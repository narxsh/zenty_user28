class SocialLogInBody {
  String? email;
  String? userName;
  String? token;
  String? uniqueId;
  String? medium;
  String? phone;
  String? guestId;

  SocialLogInBody( {this.email, this.token, this.uniqueId, this.medium, this.phone, this.guestId, this.userName});

  SocialLogInBody.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    userName = json['userName'];
    token = json['token'];
    uniqueId = json['unique_id'];
    medium = json['medium'];
    phone = json['phone'];
    guestId = json['guest_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['userName'] = userName;
    data['token'] = token;
    data['unique_id'] = uniqueId;
    data['medium'] = medium;
    data['phone'] = phone;
    data['guest_id'] = guestId;
    return data;
  }
}
