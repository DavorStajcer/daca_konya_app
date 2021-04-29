import 'package:flutter/material.dart';

class FavouritesOverviewScreen extends StatelessWidget {
  const FavouritesOverviewScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            leading: Image.asset(
              "lib/assets/images/cicek.jpg",
            ),
            title: Text("Some product."),
            trailing: Text("\$${index + 2}"),
          ),
        ),
      ),
    );
  }
}
