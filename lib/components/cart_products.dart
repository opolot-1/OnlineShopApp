import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Hammer",
      "picture": "images/products/car.png",
      "price": 500,
      "Size": "M",
      "Color": "Black",
      "Quantity": 1,
    },
    {
      "name": "tight dress",
      "picture": "images/products/dress4.png",
      "price": 30,
      "Size": "7",
      "Color": "Red",
      "Quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_product_name: Products_on_the_cart[index]["name"],
          cart_prod_color: Products_on_the_cart[index]["Color"],
          cart_prod_qty: Products_on_the_cart[index]["Quantity"],
          cart_product_size: Products_on_the_cart[index]["Size"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_picture: Products_on_the_cart[index]["picture"],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_product_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product(
      {this.cart_product_name,
      this.cart_prod_picture,
      this.cart_prod_color,
      this.cart_prod_price,
      this.cart_prod_qty,
      this.cart_product_size});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //==========leading section======
        leading: new Image.asset(
          cart_prod_picture,
          width: 50.0,
          height: 50.0,
        ),
        //======title section=====
        title: new Text(cart_product_name),
        //=========subtitle section============
        subtitle: new Column(
          children: <Widget>[
            // row inside the column
            new Row(
              children: <Widget>[
                //          this section is for the size of the product
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_product_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),

                // ========== this section is for product color ========
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            // ======this section is for the product price========
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),
        // trailing: new Column(
        //   children: <Widget>[
        //     new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
        //     new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
        //   ],
        // ),
      ),
    );
  }
}
