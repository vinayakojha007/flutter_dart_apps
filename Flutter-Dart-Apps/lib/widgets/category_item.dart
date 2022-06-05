import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String id;

  final String imgUrl;

  /*Iterable<String> imageUrl=DUMMY_MEALS.map(
              (catData) =>
                    catData.imageUrl,
                    
                  
            );*/

  CategoryItem(this.title, this.id, this.imgUrl);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed('/category-meals', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            Container(
              width: 180,
              height: 130,
              decoration: new BoxDecoration(
                color: Colors.black54,
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstATop),
                  image: new NetworkImage(
                    imgUrl,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                width: 170,
                color: Colors.black54,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
            )
          ],
        ),
      ),
      /*Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: TextStyle(color:Colors.white,fontSize: 18)
        ),
        decoration: BoxDecoration(
         
           gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),*/
    );
  }
}
