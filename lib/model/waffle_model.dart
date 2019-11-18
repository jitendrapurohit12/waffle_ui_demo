import 'package:waffle_ui_demo/helper/image_paths.dart';

class WaffleModel {
  String name, description, imagePath;
  int rating, price;

  WaffleModel(
      {this.name, this.price, this.description, this.rating, this.imagePath});
}

final waffleList = [
  WaffleModel(
      name: 'Honey Butter',
      price: 300,
      description:
          'Delicious and soft waffles with Honey syrup served warm. Light and crisp and soooo falvourful',
      rating: 4,
      imagePath: waffle1),
  WaffleModel(
      name: 'Mapple Butter',
      price: 200,
      description:
          'Delicious and soft waffles with Mapple syrup served warm. Light and crisp and soooo falvourful',
      rating: 3,
      imagePath: waffle1)
];
