class MarketPlaceModel{

  final String title;
  final String photo;
  final String price;

  MarketPlaceModel({
    required this.title,
    required this.photo,
    required this.price
  });



}

List<MarketPlaceModel> marketPlaceData=[

  MarketPlaceModel(
      title: "Bean Bag ",
      photo: "assets/market/bean bag.png",
      price: "5000"
  ),
  MarketPlaceModel(
      title: "Rolls-Royce",
      photo: "assets/market/car1.png",
      price: "10m"
  ),
  MarketPlaceModel(
      title: "iPhone 14 max pro",
      photo: "assets/market/iPhone1.png",
      price: "100k"
  ),
  MarketPlaceModel(
      title: "Macbook air",
      photo: "assets/market/laptop1.png",
      price: "120k"
  ),
  MarketPlaceModel(
      title: "Laptop bag",
      photo: "assets/market/laptopbag.png",
      price: "4k"
  ),
  MarketPlaceModel(
      title: "Yamaha r15",
      photo: "assets/market/r15bike.png",
      price: "150k"
  ),
  MarketPlaceModel(
      title: "Burburi Shirt",
      photo: "assets/market/shirt.png",
      price: "1400"
  ),
  MarketPlaceModel(
      title: "suzuki gixxer sf",
      photo: "assets/market/suzuki.png",
      price: "140k"
  ),

];