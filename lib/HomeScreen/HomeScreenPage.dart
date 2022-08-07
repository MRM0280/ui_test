import 'package:carousel_slider/carousel_slider.dart';
import 'package:latlong2/latlong.dart';

import 'ResultItem.dart';
import 'NavigationBar.dart' as bar;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  List<String> locations = [
    'کارواش',
    'لوازم یدکی',
    'مکانیکی',
    'صافکاری',
    'تعویض پلاک'
  ];
  List<String> selectedLocations = [];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      ///Navigation Bar
      bottomNavigationBar: bar.NavigationBar(),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height * 0.5,
              width: double.maxFinite,
              child: Stack(children: [
                ///Map
                FlutterMap(
                  options: MapOptions(
                      center: LatLng(35.699066, 51.338005),
                      maxZoom: 18,
                      minZoom: 4,
                      zoom: 15),
                  layers: [
                    TileLayerOptions(
                      maxZoom: 18,
                      urlTemplate:
                          'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}',
                      additionalOptions: {
                        'accessToken':
                            'pk.eyJ1IjoiYWQtYmxvY2siLCJhIjoiY2todnc4b3I5MDNzcjJxbXAwOWk2bHgyNCJ9.URRGeKXocM8Q42XvrhGEBQ',
                        'id': 'mapbox/streets-v11',
                      },
                    ),
                  ],
                ),

                ///Map Buttons
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: height * 0.07,
                            width: width * 0.42,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 8,
                                    offset: Offset(-2, 5))
                              ],
                              color: Color(0xffE9EEF2),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50)),
                            ),
                            child: Row(children: [
                              Spacer(),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 7),
                                child: FittedBox(
                                  child: Text('دعوت به همکاری',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Container(
                                height: height * 0.07,
                                width: height * 0.07,
                                padding: EdgeInsets.all(13),
                                child: FittedBox(
                                    child: Icon(
                                  Icons.handshake_outlined,
                                  color: Colors.white,
                                )),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 1,
                                          blurRadius: 8,
                                          color: Colors.black.withOpacity(0.1),
                                          offset: Offset(-3, 3))
                                    ],
                                    shape: BoxShape.circle,
                                    color: Color(0xffF9B234)),
                              ),
                            ]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: height * 0.07,
                                width: width * 0.4,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 8,
                                        offset: Offset(-2, 5))
                                  ],
                                  color: Color(0xffE9EEF2),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomLeft: Radius.circular(30),
                                      topRight: Radius.circular(50),
                                      bottomRight: Radius.circular(50)),
                                ),
                                child: Row(children: [
                                  Spacer(),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: FittedBox(
                                      child: Text('نمایش لیست',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: height * 0.07,
                                    padding: EdgeInsets.all(13),
                                    child: FittedBox(
                                        child: Icon(
                                      Icons.list,
                                      color: Colors.white,
                                    )),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              spreadRadius: 1,
                                              blurRadius: 8,
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              offset: Offset(-3, 3))
                                        ],
                                        shape: BoxShape.circle,
                                        color: Color(0xff06274A)),
                                  ),
                                ]),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                height: height * 0.07,
                                width: height * 0.07,
                                padding: EdgeInsets.all(13),
                                child: FittedBox(
                                    child: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white,
                                )),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 8,
                                          offset: Offset(-2, 5))
                                    ],
                                    shape: BoxShape.circle,
                                    color: Color(0xff06274A)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 27,
                          ),
                        ]),
                  ),
                ),

                ///Yellow bar
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 12,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Color(0xffF9B234),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                  ),
                )
              ]),
            ),
            Expanded(
                child: Container(
              color: Color(0xffE9EEF2),
              width: double.maxFinite,
              child: Column(
                children: [
                  ///Search And Fillter
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            flex: 5,
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      offset: Offset(3, 6),
                                      blurRadius: 8,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.black.withOpacity(0.5),
                                      size: 25,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: TextField(
                                      textDirection: TextDirection.rtl,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          isCollapsed: true),
                                    ),
                                  ),
                                )
                              ]),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Container(
                          height: 50,
                          child: Icon(
                            Icons.south_rounded,
                            color: Color(0xff06274A),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(5, 6),
                                blurRadius: 8,
                              )
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),

                  ///Locations
                  Container(
                      height: 60,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: locations.length,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          bool selected =
                              selectedLocations.contains(locations[index]);
                          return InkWell(
                            onTap: () {
                              setState(() {
                                if (selected) {
                                  selectedLocations.remove(locations[index]);
                                } else {
                                  selectedLocations.add(locations[index]);
                                }
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(6),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              decoration: BoxDecoration(
                                  color: selected
                                      ? Color(0xff06274A)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 3),
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 5)
                                  ]),
                              child: FittedBox(
                                  child: Text(
                                locations[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: selected
                                        ? Colors.white
                                        : Color(0xff06274A)),
                              )),
                            ),
                          );
                        },
                      )),
                  SizedBox(
                    height: 15,
                  ),

                  ///Result
                  Expanded(
                    child: CarouselSlider(
                        items: [
                          ResultItem(
                            degree: 'ماهر',
                            detail: 'تنظیم موتور\nخیابان مطهری',
                            imageSrc:
                                'http://cdn-ds.com/media/1159/w_1920/sz_4275638/3.jpg',
                            rate: '4.3.5',
                            voteCount: 12,
                          )
                        ],
                        options: CarouselOptions(
                            viewportFraction: 0.9, height: double.maxFinite)),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
