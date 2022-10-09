import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/bra.png',
            image_caption: 'Bra',
          ),
          Category(
            image_location: 'images/cats/coat.png',
            image_caption: 'coat',
          ),
          Category(
            image_location: 'images/cats/lshirt.png',
            image_caption: 'Long Shirt',
          ),
          Category(
            image_location: 'images/cats/nika.png',
            image_caption: 'Nika',
          ),
          Category(
            image_location: 'images/cats/shirt-blowse.png',
            image_caption: 'Shirt and Blowse',
          ),
          Category(
            image_location: 'images/cats/shirt.png',
            image_caption: 'Sirt',
          ),
          Category(
            image_location: 'images/cats/trowser.png',
            image_caption: 'Trowser',
          ),
          Category(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'T-Shirt',
          ),
          Category(
            image_location: 'images/cats/yshirt.png',
            image_caption: 'Yellow-shirt',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 80.0,
            ),
            subtitle: Container(
              width: 50.0,
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
