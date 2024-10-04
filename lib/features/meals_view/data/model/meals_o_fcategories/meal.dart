import 'package:equatable/equatable.dart';

class MealsOFcategories extends Equatable {
  final String strMeal;
  final String strMealThumb;
  final String? idMeal;

  const MealsOFcategories({required this.strMeal, required this.strMealThumb, this.idMeal});

  factory MealsOFcategories.fromJson(Map<String, dynamic> json) => MealsOFcategories(
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
