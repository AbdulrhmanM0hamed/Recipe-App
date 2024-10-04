import 'package:equatable/equatable.dart';

import 'meal.dart';

class NumberOfMeals extends Equatable {
  final List<NumberOfMeal>? meals;

  const NumberOfMeals({this.meals});

  factory NumberOfMeals.fromJson(Map<String, dynamic> json) => NumberOfMeals(
        meals: (json['meals'] as List<dynamic>?)
            ?.map((e) => NumberOfMeal.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'meals': meals?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [meals];
}
