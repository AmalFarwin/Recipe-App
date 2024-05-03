import 'dart:convert';

List<RecipeModel> recipeModelFromjson(String jsonString) {
  final recipeList = (json.decode(jsonString))["recipes"] as List<dynamic>;
  return List<RecipeModel>.from(
      recipeList.map((recipe) => RecipeModel.fromJson(recipe)).toList());
}

class RecipeModel {
  final String name;
  final num? prepTime;
  final num? cookTime;
  final num servings;
  final String difficulty;
  final String cuisine;

  final String image;
  final num rating;
  final num review;
  final List mealType;
  final List ingredients;
  final List instructions;

  RecipeModel({
    required this.name,
    required this.prepTime,
    required this.cookTime,
    required this.servings,
    required this.difficulty,
    required this.cuisine,
    required this.image,
    required this.rating,
    required this.review,
    required this.mealType,
    required this.ingredients,
    required this.instructions,
  });
  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(
      name: json["name"] ?? '',
      prepTime: json["prepTimeMinutes"] ?? '',
      cookTime: json["cookTimeMinutes"] ?? '',
      servings: json["servings"] ?? '',
      difficulty: json["difficulty"] ?? '',
      cuisine: json["cuisine"] ?? '',
      image: json["image"] ?? '',
      rating: json["rating"] ?? '',
      review: json["reviewCount"] ?? '',
      mealType: (json["mealType"] as List).map((e) => e as String).toList(),
      ingredients:
          (json["ingredients"] as List).map((e) => e as String).toList(),
      instructions:
          (json["instructions"] as List).map((e) => e as String).toList(),
    );
  }
}
 