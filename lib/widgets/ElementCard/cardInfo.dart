class CardInfo{
  final String cardName;
  final String message;
  final String image;
  final String code;
  final int price;

  CardInfo(this.cardName, this.message, this.image, this.code, this.price);

  CardInfo.fromJson(Map<String, dynamic> json)
  : cardName = json['name'],
    message = json['message'],
    image = json['image'],
    code = json['code'],
    price = json['price'];

  Map<String, dynamic> toJson() =>
      {
        'cardName' : cardName,
        'message' : message,
        'image' : image,
        'code' : code,
        'price' : price,
      };
}