import 'dart:ui';
import 'package:aplikasi_project/DetailTravel.dart';
import 'package:aplikasi_project/model/place_items.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Container(
          height: deviceHeight * 0.25,
          width: deviceWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        "Hello, Idris!",
                        style: TextStyle(
                          color: Colors.black45,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 8,
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 12,
                            color: Colors.black87,
                          ),
                          AutoSizeText(
                            "Jakarta, Indonesia",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.5),
                  color: Color.fromRGBO(220, 220, 220, 150),
                ),
                padding: EdgeInsets.all(5),
                height: 45,
                width: deviceWidth * 0.30,
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            FittedBox(
              child: Container(
                width: deviceWidth,
                padding: EdgeInsets.fromLTRB(7.5, 5, 7.5, 5),
                child: AutoSizeText(
                  "Travel will be easier with us!",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              height: deviceHeight * 0.35,
              margin: EdgeInsets.all(10),
              child: ListView(
                children: [
                  SizedBox(
                    height: deviceHeight * 0.35,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Carousel(
                        dotSize: 5,
                        dotSpacing: 15,
                        dotBgColor: Colors.transparent,
                        indicatorBgPadding: 2.5,
                        dotColor: Colors.blueAccent,
                        dotVerticalPadding: 5,
                        dotPosition: DotPosition.bottomCenter,
                        autoplayDuration: Duration(seconds: 10),
                        images: [
                          Image.asset(
                            "assets/images/travel-discount (1).jpg",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "assets/images/travel-discount (2).jpg",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "assets/images/travel-discount (3).jpg",
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: deviceHeight * 0.22,
                  padding: EdgeInsets.all(7.5),
                  width: MediaQuery.of(context).size.width,
                  child: AutoSizeText(
                    "Explore",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: deviceHeight * 0.18,
                    padding: EdgeInsets.fromLTRB(7.5, 0, 7.5, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Stack(
                            children: [
                              Container(
                                width: deviceHeight * 0.20,
                                height: deviceHeight * 0.20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/bali-carousel.png',
                                    ),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Center(
                                  child: AutoSizeText(
                                    "Bali",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'Kaushan Script',
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                margin: EdgeInsets.all(5),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                width: deviceHeight * 0.20,
                                height: deviceHeight * 0.20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/banten-carousel.png')),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Center(
                                  child: AutoSizeText(
                                    "Banten",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'Kaushan Script',
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                margin: EdgeInsets.all(5),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                width: deviceHeight * 0.20,
                                height: deviceHeight * 0.20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/jawa-barat-carousel.png')),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Center(
                                  child: AutoSizeText(
                                    "Jawa Barat",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'Kaushan Script',
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                margin: EdgeInsets.all(5),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                width: deviceHeight * 0.20,
                                height: deviceHeight * 0.20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/jawa-tengah-carousel.png')),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Center(
                                  child: AutoSizeText(
                                    "Jawa Tengah",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'Kaushan Script',
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                margin: EdgeInsets.all(5),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                width: deviceHeight * 0.20,
                                height: deviceHeight * 0.20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/jawa-timur-carousel.png')),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Center(
                                  child: AutoSizeText(
                                    "Jawa Timur",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'Kaushan Script',
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                margin: EdgeInsets.all(5),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: AutoSizeText(
                                "Top Destination",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Container(
                              child: AutoSizeText(
                                "See more",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final TravelPlace place = daftarTravel[index];
                              return InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return DetailTravel(place: place);
                                  }));
                                },
                                child: Stack(
                                  children: [
                                    Card(
                                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide(
                                          color: Colors.grey.withOpacity(0.2),
                                          width: 1,
                                        ),
                                      ),
                                      child: Container(
                                        height: deviceHeight * 0.15,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Row(
                                          children: [
                                            Container(
                                              width: deviceWidth * 0.40,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                    place.imageAsset,
                                                  ),
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                margin: EdgeInsets.all(5),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    FittedBox(
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.location_on,
                                                            size: 10,
                                                            color: Colors
                                                                .grey[700],
                                                          ),
                                                          FittedBox(
                                                            child: AutoSizeText(
                                                              place.location,
                                                              maxLines: 1,
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Colors
                                                                    .grey[700],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    FittedBox(
                                                      child: AutoSizeText(
                                                        place.name,
                                                        maxLines: 1,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontFamily: 'Poppins',
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 0, 5, 0),
                                                          child:
                                                              SizedBox.fromSize(
                                                            size:
                                                                Size.fromRadius(
                                                                    8),
                                                            child: FittedBox(
                                                              child: Icon(
                                                                Icons.star,
                                                                color: Colors
                                                                    .yellow,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        FittedBox(
                                                          child: AutoSizeText(
                                                            "4.7",
                                                            maxLines: 1,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  "Poppins",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 15,
                                                          width: 20,
                                                          child:
                                                              VerticalDivider(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        FittedBox(
                                                          child: AutoSizeText(
                                                            "123 reviews",
                                                            maxLines: 1,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  "Poppins",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    FittedBox(
                                                      child: AutoSizeText(
                                                        "Rp." + place.price,
                                                        maxLines: 1,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            itemCount: daftarTravel.length,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
