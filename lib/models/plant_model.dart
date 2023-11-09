class PlantModel {
  String name;
  String image;
  String harga;
  String description;

  PlantModel(
      {required this.name,
      required this.image,
      required this.harga,
      required this.description});
}

var requiredplants = [
  PlantModel(
      name: "Pinus Strobus ",
      image: "Pinus Strobus.png",
      harga: "320.000",
      description: "Pinus strobus is a large pine native to \neastern North America"),
  PlantModel(
      name: "Dracena Fregrans ",
      image: "Dracena.png",
      harga: "300.000",
      description: "One type of Dracena that has an export \nvalue in Dracena fregrans"),
];

var favplants = [
  PlantModel(
      name: "Monstera ",
      image: "Monstera.png",
      harga: "250.000",
      description: "Monstera is a type of tropical\nplant that is popular"),
    PlantModel(
      name: "Aloe vera ",
      image: "Aloe vera.png",
      harga: "400.000",
      description: "Aloe vera is a succulent plant\nspecies of the genus Aloe"),
];