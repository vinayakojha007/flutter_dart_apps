import 'package:flutter/material.dart';

class BakeryApp extends StatefulWidget {
  const BakeryApp({Key? key}) : super(key: key);

  @override
  State<BakeryApp> createState() => _BakeryAppState();
}

class _BakeryAppState extends State<BakeryApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
          color: Colors.black,
        ),
        title: const Text(
          'Best Bakery',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 250.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 230.0,
                              width: MediaQuery.of(context).size.width -
                                  MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://media.istockphoto.com/photos/strawberry-cake-fraisier-cake-on-white-wooden-background-picture-id1311634304?b=1&k=20&m=1311634304&s=170667a&w=0&h=rujTyAvxB7ZfW8mVL_oKb5PtY756KjR9m2yVjOOxSNY='),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              left: 15.0,
                              top: 130,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Strawberry Cake',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Quicksand',
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Rs. 650',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Quicksand',
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 6.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(8.0),
                          elevation: 2.0,
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: const [
                                Icon(Icons.favorite, color: Colors.pink),
                                Text(
                                  '400',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(8.0),
                          elevation: 2.0,
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                Icon(Icons.chat_bubble,
                                    color: Colors.grey.withOpacity(0.5)),
                                const Text(
                                  '600',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(8.0),
                          elevation: 2.0,
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                Icon(Icons.bookmark_border,
                                    color: Colors.purpleAccent.shade400),
                                const Text(
                                  '600',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text('Best Selling Food Items',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey.shade700,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              GridView.count(
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.85,
                crossAxisCount: 2,
                shrinkWrap: true,
                children: [
                  buildFoodItem(
                      'Cup Cake',
                      'Best Cake in Twin Cities',
                      50,
                      'https://images.unsplash.com/photo-1614707267537-b85aaf00c4b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                      304,
                      254,
                      2),
                  buildFoodItem(
                    'Strawberry Chocolate',
                    'Best Cake in Twin Cities',
                    150,
                    'https://media.istockphoto.com/photos/chocolate-bundt-cake-with-chocolate-ganache-picture-id1336693912?b=1&k=20&m=1336693912&s=170667a&w=0&h=pnLO3zXiaDkbB65UmIPrd8gdcjxdf7xuglNjqwVycY0=',
                    408,
                    203,
                    1,
                  ),
                  buildFoodItem(
                      'Cream Cake',
                      'Best Cream Cake in Twin Cities',
                      450,
                      'https://images.unsplash.com/photo-1542826438-bd32f43d626f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                      501,
                      359,
                      5),
                  buildFoodItem(
                      'Double Chocolate',
                      'Best Cream Cake in Twin Cities',
                      500,
                      'https://images.unsplash.com/photo-1606890737304-57a1ca8a5b62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mjl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                      308,
                      269,
                      9),
                  buildFoodItem(
                      'Full Cream Cake',
                      'Best Cream Cake in Twin Cities',
                      700,
                      'https://images.unsplash.com/photo-1623842529695-f056295fd8e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mzd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                      159,
                      121,
                      7),
                  buildFoodItem(
                      'Fruite Cake',
                      'Best Cream Cake in Twin Cities',
                      800,
                      'https://images.unsplash.com/photo-1608830597604-619220679440?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Njl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                      708,
                      406,
                      4),
                  buildFoodItem(
                      'Pastry',
                      'Best Cream Cake in Twin Cities',
                      100,
                      'https://images.unsplash.com/photo-1551106652-a5bcf4b29ab6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTE4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=900&q=60',
                      652,
                      832,
                      3),
                  buildFoodItem(
                      'Brownie',
                      'Best Brownie in Twin Cities',
                      85,
                      'https://images.unsplash.com/photo-1589218436045-ee320057f443?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTU2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=900&q=60',
                      542,
                      436,
                      2),
                  buildFoodItem(
                      'Munchen',
                      'Best Munchen in twin Cities',
                      130,
                      'https://images.unsplash.com/photo-1620980776848-84ac10194945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTQ1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
                      666,
                      495,
                      4),
                  buildFoodItem(
                      'Honey Cream Pastry',
                      'Best Cream Pastry in Twin Cities',
                      199,
                      'https://images.unsplash.com/photo-1551024506-0bccd828d307?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
                      365,
                      298,
                      9),
                  buildFoodItem(
                      'Roling Ice Cake',
                      'Best Roling Ice Cake in Twin Cities',
                      450,
                      'https://images.unsplash.com/photo-1534353875273-b5887cc1abf5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjI4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
                      302,
                      439,
                      6),
                  buildFoodItem(
                      'Cheese Cake',
                      'Best Cheese Cake in Twin Cities',
                      650,
                      'https://images.unsplash.com/photo-1547414368-ac947d00b91d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTY5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
                      195,
                      153,
                      3),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildFoodItem(String name, String desc, num price, String imageUrl,
      int likes, int commentCount, int index) {
    return Padding(
      padding: index.isEven
          ? const EdgeInsets.only(right: 16.0)
          : const EdgeInsets.only(left: 16.0),
      child: Container(
        height: 125.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 1.0,
            style: BorderStyle.solid,
          ),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(imageUrl), fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontFamily: 'Quicksand', fontSize: 14.0),
                  ),
                ),
                const SizedBox(height: 4.0),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Text(
                    desc,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12.0,
                        color: Colors.grey.shade700),
                  ),
                ),
                const SizedBox(height: 4.0),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Text(
                    'Rs. $price',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12.0,
                        color: Colors.grey.shade700),
                  ),
                ),
                const SizedBox(height: 4.0),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Colors.pinkAccent,
                      ),
                      const SizedBox(width: 2.0),
                      Text(
                        likes.toString(),
                        style: const TextStyle(
                            fontFamily: 'QuickSand',
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                      const SizedBox(width: 3.0),
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      const SizedBox(width: 2.0),
                      Text(
                        commentCount.toString(),
                        style: const TextStyle(
                            fontFamily: 'QuickSand',
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                      const SizedBox(width: 3.0),
                      Icon(
                        Icons.bookmark_border,
                        color: Colors.red.withOpacity(0.5),
                      ),
                      const SizedBox(width: 2.0),
                      Text(
                        index.toString(),
                        style: const TextStyle(
                            fontFamily: 'QuickSand',
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 110,
              top: 125.0,
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.amber,
                ),
                child: const Center(
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
