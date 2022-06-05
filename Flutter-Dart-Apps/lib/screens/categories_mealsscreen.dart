import 'package:flutter/material.dart';
import 'package:flutter_application_1/Food_UI%20Desing/food.dart';
import 'package:flutter_application_1/widgets/meal_item.dart';

class CategoryMeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text('${categoryTitle}'),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
                title: categoryMeals[index].title,
                imageUrl: categoryMeals[index].imageUrl,
                duration: categoryMeals[index].duration,
                complexity: categoryMeals[index].complexity,
                affordability: categoryMeals[index].affordability,
                meal: categoryMeals[index]);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
