
class PinView{

  final int userId;
  final String pin_otp;
  final String mobileno;

  PinView(this.userId, this.pin_otp, this.mobileno);

  PinView.fromJson(Map<String, dynamic> json)
      :userId = json['userid'],
        pin_otp = json['pin_otp'],
        mobileno = json['mobileno'];

  Map<String, dynamic> toJson(){
    return {
      'userId':userId,
      'pin_otp':pin_otp,
      'mobileno':mobileno
    };
  }

}