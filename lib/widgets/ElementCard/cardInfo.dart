class CardInfo{
   String cardName;
   String message;
   String image;
   String code;
   String price;

  CardInfo(this.cardName, this.message, this.image, this.code, this.price);

  CardInfo.fromJson(Map<String, dynamic> json) {
      cardName = json['cardName'];
      message = json['message'];
      image = json['image'];
      code = json['code'];
      price = json['price'];
    }
}


/*
 Map<String, dynamic> toJson() =>
      {
        'cardName' : cardName,
        'message' : message,
        'image' : image,
        'code' : code,
        'price' : price,
      };
 */