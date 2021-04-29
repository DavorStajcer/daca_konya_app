import 'package:flutter/material.dart';

class OrdersOverviewScreen extends StatelessWidget {
  const OrdersOverviewScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            leading: Text("Items: $index"),
            title: Text("\Total: \$${index + 2}"),
            trailing: Text("${DateTime.now()}"),
          ),
        ),
      ),
    );
  }
}
