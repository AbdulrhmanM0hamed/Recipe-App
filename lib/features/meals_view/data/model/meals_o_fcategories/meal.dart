import 'package:equatable/equatable.dart';

class Meals extends Equatable {
  final String strMeal;
  final String strMealThumb;
  final String? idMeal;

  const Meals({required this.strMeal, required this.strMealThumb, this.idMeal});

  factory Meals.fromJson(Map<String, dynamic> json) => Meals(
        strMeal: json['strMeal'] as String,
        strMealThumb: json['strMealThumb'] as String,
        idMeal: json['idMeal'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'strMeal': strMeal,
        'strMealThumb': strMealThumb,
        'idMeal': idMeal,
      };

  @override
  List<Object?> get props => [strMeal, strMealThumb, idMeal];
}
