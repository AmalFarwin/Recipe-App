import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/recipes_model.dart';
import 'package:flutter_application_1/view/widgets/detailed_page.dart';

class RecipeDetails extends StatelessWidget {
  final RecipeModel recipes;
  const RecipeDetails({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    Widget star = Icon(
      Icons.star,
      color: Colors.amber[800],
      size: 21,
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Image.network(recipes.image),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 23,
                        color: Colors.black,
                      )),
                ),
              )),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                recipes.name,
                style: TextStyle(
                    color: Colors.amber[800],
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                recipes.cuisine,
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, top: 8),
                child: Row(
                  children: [
                    star,
                    star,
                    star,
                    star,
                    Icon(
                      Icons.star_half_outlined,
                      color: Colors.amber[800],
                      size: 21,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "(",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      recipes.review.toString(),
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Reviews",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ")",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Text(
                      recipes.rating.toString(),
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "k",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.favorite,
                      size: 21,
                      color: Color.fromARGB(255, 241, 19, 4),
                    )
                  ],
                )),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Colors.black,
            ),
            DetailedPage(
              recipes: recipes,
            ),
          ],
        ),
      ),
    );
  }
}
