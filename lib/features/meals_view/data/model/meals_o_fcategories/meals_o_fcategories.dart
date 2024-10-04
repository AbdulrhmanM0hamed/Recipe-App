import 'package:equatable/equatable.dart';

import 'meal.dart';

class MealsOFcategories extends Equatable {
  final List<Meals>? meals;

  const MealsOFcategories({this.meals});

  factory MealsOFcategories.fromJson(Map<String, dynamic> json) {
    return MealsOFcategories(
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => Meals.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'meals': meals?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [meals];
}
