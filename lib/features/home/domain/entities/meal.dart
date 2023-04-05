import 'package:equatable/equatable.dart';

class MealEntity extends Equatable {
  final String image;
  final String name;
  final bool isHot;
  final String nameImage;
  final String description;
  final int price;
  const MealEntity({
    required this.isHot,
    required this.image,
    required this.name,
    required this.nameImage,
    required this.description,
    required this.price,
  });

  @override
  List<Object> get props => [image, name, nameImage, description, price, isHot];
}
