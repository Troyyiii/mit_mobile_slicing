class RestoModel {
  String name;
  String imageAsset;
  String time;

  RestoModel({
    required this.name,
    required this.imageAsset,
    required this.time,
  });
}

var restoModelList = [
  RestoModel(
    name: "Vegan Resto",
    imageAsset: "assets/images/burgerKing.png",
    time: "12",
  ),
  RestoModel(
    name: "Wijie Bar & Resto",
    imageAsset: "assets/images/burgerKing.png",
    time: "8",
  ),
  RestoModel(
    name: "Ayam Rempah Malaysia",
    imageAsset: "assets/images/burgerKing.png",
    time: "30",
  ),
];
