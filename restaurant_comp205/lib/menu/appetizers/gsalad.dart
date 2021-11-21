import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu/menu/add_button.dart';
import 'package:menu/menu/constants.dart';

class GSalad extends StatelessWidget {
  const GSalad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
      ),
      backgroundColor: Colors.blueGrey,
      body: ListView(
        children: [
          Image.asset('images/gsalad.jpeg'),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Green Salad',
                style: dishHeadTextStyle,
              ),
            ),
          ), // Dish Heading
          const Card(
            child: SizedBox(
              height: 70.0,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: dishPageArrow,
                  title: Text(
                    'Classical Green Salad including lettuce, kale, arugula and cherry tomatoes. Served with optional dressing',
                    style: dishDescTextStyle,
                  ),
                ),
              ),
            ),
          ), // Dish Description
          lineBetween,
          Card(
            child: SizedBox(
              height: 70.0,
              width: double.infinity,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '$gSaladPrice ₺',
                      style: dishpriceTextStyle,
                    ),
                    AddButton(),
                  ],
                ),
              ),
            ),
          ), //  Price Card
        ],
      ),
      floatingActionButton: AddToCart(),
    );
  }
}
