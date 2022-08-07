import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: 80,
      width: double.maxFinite,
      color: Color(0xffE9EEF2),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              height: 40,
              color: Colors.white,
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Container(
                        height: double.maxFinite,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 5,
                                  offset: Offset(-4, -3))
                            ],
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                            )),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.person_outline,
                                    color: Color(0xff06274A),
                                    size: 30,
                                  ),
                                  Text(
                                    'پروفایل',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff06274A),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: Color(0xff06274A),
                                    size: 30,
                                  ),
                                  Text(
                                    'جستجو',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff06274A),
                                    ),
                                  )
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color(0xffE9EEF2),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Flexible(
                      child: Container(
                        height: double.maxFinite,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.12),
                                  blurRadius: 5,
                                  offset: Offset(4, -5))
                            ],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Color(0xff06274A),
                                    size: 30,
                                  ),
                                  Text(
                                    'فروشگاه',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff06274A),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.home_outlined,
                                    color: Color(0xff06274A),
                                    size: 30,
                                  ),
                                  Text(
                                    'خانه',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff06274A),
                                    ),
                                  )
                                ],
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              )),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 52,
              width: 50,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(5, 5),
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 6)
                  ],
                  borderRadius: BorderRadius.circular(23)),
              child: FittedBox(
                child: Icon(
                  Icons.location_on_outlined,
                  color: Color(0xff06274A),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
