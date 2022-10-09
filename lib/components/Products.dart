import 'package:flutter/material.dart';
import 'package:FinalApp/pages/products_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Dress",
      "picture": "images/products/dress1.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "PartWaer",
      "picture": "images/products/dress3.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Hammer",
      "picture": "images/products/car.png",
      "old_price": 800,
      "price": 500,
    },
    {
      "name": "benz",
      "picture": "images/products/car31.png",
      "old_price": 1000,
      "price": 900,
    },
    {
      "name": "tomatoes",
      "picture": "images/products/tomato.png",
      "old_price": 80,
      "price": 50,
    },
    {
      "name": "tight dress",
      "picture": "images/products/dress4.png",
      "old_price": 40,
      "price": 30,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            product_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.product_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              new MaterialPageRoute(
                //here we are passing the values of the product to the product details page
                builder: (context) => new ProductDetails(
                  product_detail_name: product_name,
                  product_detail_new_price: prod_price,
                  product_detail_old_price: prod_old_price,
                  product_detail_picture: prod_picture,
                ),
              ),
            ),
            child: GridTile(
              footer: Container(
                  color: Colors.white,
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          product_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                      new Text(
                        "\$${prod_price}",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
