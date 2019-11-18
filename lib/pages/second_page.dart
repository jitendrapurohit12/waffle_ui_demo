import 'package:flutter/material.dart';
import 'package:waffle_ui_demo/common/rating_widget.dart';
import 'package:waffle_ui_demo/model/waffle_model.dart';

class SecondPage extends StatefulWidget {
  final bool isEven;
  final WaffleModel model;

  const SecondPage({this.isEven, this.model});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    //if isEven == true i.e. background is brown
    Color primaryColor = widget.isEven ? Colors.brown : Colors.amberAccent;
    Color secondaryColor = widget.isEven ? Colors.amberAccent : Colors.brown;

    return Scaffold(
      backgroundColor: secondaryColor,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 56,
                    ),
                    Text(
                      widget.model.name,
                      style: TextStyle(color: secondaryColor, fontSize: 28),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RatingWidget(
                            rating: widget.model.rating, color: primaryColor),
                        Icon(
                          Icons.favorite_border,
                          color: secondaryColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: secondaryColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 2),
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 2.0),
                              child: Text(
                                '1',
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: secondaryColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 2),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                        Text('Rs. ${widget.model.price}',
                            style: TextStyle(
                                color: secondaryColor,
                                fontSize: 24,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      widget.model.description,
                      style: TextStyle(color: secondaryColor.withOpacity(0.5)),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: secondaryColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 4),
                            child: Icon(
                              Icons.arrow_back,
                              color: secondaryColor,
                              size: 28,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              'ORDER NOW',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: secondaryColor),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 36,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.4 - 70,
              left: 0,
              right: 0,
              child: Hero(
                tag: widget.model.name+'_image',
                child: Image.asset(
                  widget.model.imagePath,
                  height: 200,
                  width: 200,
                ),
              ))
        ],
      ),
    );
  }
}
