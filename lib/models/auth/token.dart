class Token {
  //   final String accessToken;
  // final String refreshToken;

  final String token;
  final DateTime expireDate;

  Token({required this.token, required this.expireDate});

  factory Token.fromJson(Map<String, dynamic> json){
    return Token(token: json["token"], expireDate: DateTime.parse(json["expireDate"]));
  }
}