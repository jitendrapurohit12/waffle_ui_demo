import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waffle_ui_demo/common/waffle_tile.dart';
import 'package:waffle_ui_demo/model/waffle_model.dart';
import 'package:waffle_ui_demo/pages/second_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                    IconButton(
                        icon: Icon(Icons.shopping_cart), onPressed: () {})
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'The Belgian Waffle',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.brown),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 30,
                width: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Find a flavor or ingrdient',
                    hintStyle: TextStyle(
                      color: Colors.brown.withOpacity(0.5),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              for (int i = 0; i < waffleList.length; i++)
                GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondPage(
                                  model: waffleList[i],isEven: i % 2 == 0,
                                ))),
                    child: WaffleTile(i % 2 == 0, waffleList[i]))
            ],
          ),
        ),
      ),
    );
  }
}
