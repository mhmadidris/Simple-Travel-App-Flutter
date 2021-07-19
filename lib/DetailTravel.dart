// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:aplikasi_project/model/place_items.dart';

class DetailTravel extends StatelessWidget {
  final TravelPlace place;

  DetailTravel({required this.place});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                expandedHeight: deviceHeight * 0.40,
                floating: false,
                pinned: true,
                snap: false,
                automaticallyImplyLeading: false,
                actions: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.blue, Colors.blueAccent],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: SizedBox.fromSize(
                              size: Size.fromRadius(12),
                              child: FittedBox(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          FittedBox(
                            child: AutoSizeText(
                              "Detail",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: null,
                            icon: SizedBox.fromSize(
                              size: Size.fromRadius(14),
                              child: FittedBox(
                                child: Icon(
                                  Icons.share_sharp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Photos(place: place);
                      }));
                    },
                    child: ClipRRect(
                      child: Image.asset(
                        place.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                place.name,
                                maxLines: 1,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 12,
                                  ),
                                  AutoSizeText(
                                    place.location,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: () {},
                            icon: BookmarkButton(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width - 250,
                                height:
                                    MediaQuery.of(context).size.height - 550,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        child: Icon(
                                          Icons.event_available,
                                          size: 20,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: AutoSizeText(
                                                "Status",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  color: Colors.grey[600],
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: AutoSizeText(
                                                "Available",
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Colors.white,
                                      Colors.white70,
                                    ]),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width - 250,
                                height:
                                    MediaQuery.of(context).size.height - 550,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        child: Icon(
                                          Icons.access_time_filled_outlined,
                                          size: 18,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: AutoSizeText(
                                                "Duration",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  color: Colors.grey[600],
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: AutoSizeText(
                                                place.duration + " days",
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    DefaultTabController(
                      length: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            child: TabBar(
                              labelColor: Colors.blueAccent,
                              unselectedLabelColor: Colors.black,
                              tabs: [
                                Tab(text: "Description"),
                                Tab(text: "Ratings"),
                              ],
                            ),
                          ),
                          Container(
                            height: 200,
                            padding: EdgeInsets.all(10),
                            child: TabBarView(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      "Description",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Expanded(
                                      child: AutoSizeText(
                                        place.description,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 100,
                                        height:
                                            MediaQuery.of(context).size.height,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              AutoSizeText(
                                                "4.7",
                                                style: TextStyle(
                                                  fontFamily: "Nunito Sans",
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 25,
                                                ),
                                              ),
                                              Text(
                                                "Ratings",
                                                style: TextStyle(
                                                  fontFamily: "Nunito Sans",
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          child: Center(
                                            child: Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 2.5, 0, 2.5),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  10, 0, 5, 0),
                                                          child: Row(
                                                            children: [
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  5, 0, 10, 0),
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              2.8,
                                                          height: 15,
                                                          child:
                                                              FractionallySizedBox(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            widthFactor: 0.9,
                                                            heightFactor: 0.5,
                                                            child: Container(
                                                                color: Colors
                                                                    .brown,
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        2.5,
                                                                        0,
                                                                        2.5,
                                                                        0)),
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.5),
                                                            color: Colors.green,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 2.5, 0, 2.5),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  10, 0, 5, 0),
                                                          child: Row(
                                                            children: [
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  5, 0, 10, 0),
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              2.8,
                                                          height: 15,
                                                          child:
                                                              FractionallySizedBox(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            widthFactor: 0.6,
                                                            heightFactor: 0.5,
                                                            child: Container(
                                                                color: Colors
                                                                    .brown,
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        2.5,
                                                                        0,
                                                                        2.5,
                                                                        0)),
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.5),
                                                            color: Colors.green,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 2.5, 0, 2.5),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  10, 0, 5, 0),
                                                          child: Row(
                                                            children: [
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  5, 0, 10, 0),
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              2.8,
                                                          height: 15,
                                                          child:
                                                              FractionallySizedBox(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            widthFactor: 0.1,
                                                            heightFactor: 0.5,
                                                            child: Container(
                                                                color: Colors
                                                                    .brown,
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        2.5,
                                                                        0,
                                                                        2.5,
                                                                        0)),
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.5),
                                                            color: Colors.green,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 2.5, 0, 2.5),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  10, 0, 5, 0),
                                                          child: Row(
                                                            children: [
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  5, 0, 10, 0),
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              2.8,
                                                          height: 15,
                                                          child:
                                                              FractionallySizedBox(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            widthFactor: 0.2,
                                                            heightFactor: 0.5,
                                                            child: Container(
                                                                color: Colors
                                                                    .brown,
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        2.5,
                                                                        0,
                                                                        2.5,
                                                                        0)),
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.5),
                                                            color: Colors.green,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 2.5, 0, 2.5),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  10, 0, 5, 0),
                                                          child: Row(
                                                            children: [
                                                              Icon(
                                                                Icons.star,
                                                                size: 16,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  5, 0, 10, 0),
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              2.8,
                                                          height: 15,
                                                          child:
                                                              FractionallySizedBox(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            widthFactor: 0.1,
                                                            heightFactor: 0.5,
                                                            child: Container(
                                                                color: Colors
                                                                    .brown,
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        2.5,
                                                                        0,
                                                                        2.5,
                                                                        0)),
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2.5),
                                                            color: Colors.green,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 0.5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0.5,
                                        blurRadius: 1,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: deviceHeight * 0.25,
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: AutoSizeText(
                          "Other destinations",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Row(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                final TravelPlace place = daftarTravel[index];
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return DetailTravel(place: place);
                                    }));
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                        width: 1,
                                      ),
                                    ),
                                    child: Container(
                                      width: deviceWidth * 0.35,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                topRight: Radius.circular(5),
                                              ),
                                              child: Image(
                                                image: AssetImage(
                                                  place.imageAsset,
                                                ),
                                                fit: BoxFit.fill,
                                                width: deviceWidth,
                                                height: deviceHeight,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(5),
                                            child: Expanded(
                                              child: FittedBox(
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        AutoSizeText(
                                                          place.name,
                                                          maxLines: 1,
                                                          style: TextStyle(
                                                            fontFamily:
                                                                "Poppins",
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        AutoSizeText(
                                                          "Rp." + place.price,
                                                          maxLines: 1,
                                                          style: TextStyle(
                                                            fontFamily:
                                                                "Poppins",
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              10, 0, 0, 0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox.fromSize(
                                                            size:
                                                                Size.fromRadius(
                                                                    10),
                                                            child: FittedBox(
                                                              child: Icon(
                                                                Icons.star,
                                                                color: Colors
                                                                    .yellow,
                                                              ),
                                                            ),
                                                          ),
                                                          AutoSizeText(
                                                            "4.7",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  "Poppins",
                                                              fontSize: 4,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              itemCount: daftarTravel.length,
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        padding: EdgeInsets.all(7.5),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(
                10,
                10,
              ),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Rp." + place.price,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "/person",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 10,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: IconButton(
                    onPressed: null,
                    icon: Center(
                      child: Text(
                        "Book now",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blueAccent,
                        Colors.blue,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookmarkButton extends StatefulWidget {
  @override
  _BookmarkButtonState createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isBookmark ? Icons.bookmark : Icons.bookmark_border,
        color: Colors.black87,
        size: 25,
      ),
      onPressed: () {
        setState(() {
          isBookmark = !isBookmark;
        });
      },
    );
  }
}

class Photos extends StatelessWidget {
  final TravelPlace place;

  Photos({required this.place});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
            ),
            items: place.imageSlider
                .map(
                  (item) => Container(
                    child: Center(
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
