import 'package:equatable/equatable.dart';

class CategoryMeal extends Equatable {
  final String? idCategory;
  final String strCategory;
  final String strCategoryThumb;
  final String? strCategoryDescription;

  const CategoryMeal({
    this.idCategory,
   required this.strCategory,
   required this.strCategoryThumb,
    this.strCategoryDescription,
  });

  factory CategoryMeal.fromJson(Map<String, dynamic> json) => CategoryMeal(
        idCategory: json['idCategory'] as String?,
        strCategory: json['strCategory'] as String,
        strCategoryThumb: json['strCategoryThumb'] as String,
        strCategoryDescription: json['strCategoryDescription'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'idCategory': idCategory,
        'strCategory': strCategory,
        'strCategoryThumb': strCategoryThumb,
        'strCategoryDescription': strCategoryDescription,
      };

  @override
  List<Object?> get props {
    return [
      idCategory,
      strCategory,
      strCategoryThumb,
      strCategoryDescription,
    ];
  }
}
