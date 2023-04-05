import 'dart:ui';

import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final String titleImage;
  final String title;
  final Color backgroundColor;
  final Color bigTitleColor;
  final String bigTitle;
  final String backgroungImage;
  const CategoryEntity({
    required this.titleImage,
    required this.title,
    required this.backgroundColor,
    required this.bigTitleColor,
    required this.bigTitle,
    required this.backgroungImage,
  });

  @override
  List<Object> get props => [
        titleImage,
        title,
        backgroundColor,
        bigTitleColor,
        bigTitle,
        backgroungImage,
      ];
}
