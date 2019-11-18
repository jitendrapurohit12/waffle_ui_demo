import 'package:flutter/material.dart';
import 'package:waffle_ui_demo/model/waffle_model.dart';

class WaffleTile extends StatelessWidget {
  final bool isEven;
  final WaffleModel model;

  const WaffleTile(this.isEven, this.model);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = isEven ? Colors.brown : Colors.amberAccent;
    Color secondaryColor = isEven ? Colors.amberAccent : Colors.brown;

    return Container(
      height: 220,
      width: 260,
      child: Stack(
        children: <Widget>[
          Material(
            elevation: 4,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            child: Container(
              height: 160,
              width: 220,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 32),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: primaryColor),
                        children: [
                          TextSpan(
                            text: '${model.name}\n',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: 'Rs. ${model.price}',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 30,
                      right: 16,
                      child: Icon(
                        Icons.favorite_border,
                        color: primaryColor,
                      ))
                ],
              ),
            ),
          ),
          Positioned(
              top: 68,
              bottom: 103,
              right: 10,
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(24)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 2.0, vertical: 4),
                  child: FloatingActionButton(
                      heroTag: model.name,
                      mini: true,
                      backgroundColor: secondaryColor,
                      child: Icon(
                        Icons.add,
                        color: primaryColor,
                      ),
                      onPressed: () {}),
                ),
              )),
          Positioned(
            bottom: 0,
            left: 0,
            right: 40,
            child: Hero(
                tag: model.name + '_image',
                child: Image.asset(
                  model.imagePath,
                  width: 140,
                  height: 140,
                )),
          )
        ],
      ),
    );
  }
}
