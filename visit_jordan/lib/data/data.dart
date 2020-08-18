import 'package:visit_jordan/models/categories_model.dart';

String apiKey = "563492ad6f91700001000001cf20a642b66b4c7794075b60e2a1fa87";

List<CategorieModel> getCategories() {
  List<CategorieModel> categories = new List();
  CategorieModel categorieModel = new CategorieModel();

  //
  categorieModel.imgUrl =
      "https://images.pexels.com/photos/3370311/pexels-photo-3370311.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categorieModel.categorieName = "Medical Tourism";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();

  //
  categorieModel.imgUrl =
      "https://images.pexels.com/photos/3264722/pexels-photo-3264722.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categorieModel.categorieName = "Cultural Tourism";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();

  //
  categorieModel.imgUrl =
      "https://images.pexels.com/photos/705772/pexels-photo-705772.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categorieModel.categorieName = "Religious tourism";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();

  //
  categorieModel.imgUrl =
      "https://images.pexels.com/photos/1098365/pexels-photo-1098365.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categorieModel.categorieName = "Adventure Tourism";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();

  //
  categorieModel.imgUrl =
      "https://images.pexels.com/photos/1434819/pexels-photo-1434819.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260";
  categorieModel.categorieName = "Fashion tourism";

  categories.add(categorieModel);
  categorieModel = new CategorieModel();

  //
  categorieModel.imgUrl =
      "https://images.pexels.com/photos/2116475/pexels-photo-2116475.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categorieModel.categorieName = "Wildlife Tourism";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();

  //
  categorieModel.imgUrl =
      "https://images.pexels.com/photos/1149137/pexels-photo-1149137.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categorieModel.categorieName = "Agritourism";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();

  return categories;
}
