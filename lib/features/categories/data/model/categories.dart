import 'package:equatable/equatable.dart';

import 'category.dart';

class Categories extends Equatable {
  final List<CategoryMeal>? categories;

  const Categories({this.categories});

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        categories: (json['categories'] as List<dynamic>?)
            ?.map((e) => CategoryMeal.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'categories': categories?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [categories];
}
