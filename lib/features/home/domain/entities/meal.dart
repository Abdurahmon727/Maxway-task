import 'package:equatable/equatable.dart';

class MealEntity extends Equatable {
  final String image;
  final String name;
  final bool isHot;
  final String? nameImage;
  final String description;
  final int price;
  const MealEntity({
    this.isHot = false,
    required this.image,
    required this.name,
    this.nameImage,
    required this.description,
    required this.price,
  });

  @override
  List<Object?> get props =>
      [image, name, nameImage, description, price, isHot];
}
