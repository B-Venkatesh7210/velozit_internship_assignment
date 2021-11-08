import 'package:flutter/material.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

import 'package:velozity_assignment/helpers.dart';
import 'package:velozity_assignment/widgets.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final Size size = mediaSize(context);
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.menu,
            size: 36,
          ),
          actions: [
            Icon(
              Icons.map_outlined,
              size: 36,
            ),
            SizedBox(width: 20),
            Icon(
              Icons.notifications,
              size: 36,
            ),
            SizedBox(width: 20),
            Container(
              width: 32,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  shape: BoxShape.circle),
              child: Center(
                child: Text('HELP',
                    style: Theme.of(context)
                        .textTheme
                        .overline!
                        .copyWith(color: Colors.white)),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(color: Color(0xff222222)),
                    top: BorderSide(color: Color(0xff222222)),
                    left: BorderSide(color: Color(0xff515151)),
                    right: BorderSide(color: Color(0xff515151)),
                  )),
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time_filled,
                        color: Colors.orange,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Shift Details',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  height: size.height * 0.45,
                  decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Color(0xff222222)),
                        top: BorderSide(color: Color(0xff222222)),
                        left: BorderSide(color: Color(0xff515151)),
                        right: BorderSide(color: Color(0xff515151)),
                      ),
                      gradient: LinearGradient(
                          stops: [0.0, 0.7],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.grey[800]!, Colors.black])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(children: [
                        Container(
                          height: size.height * 0.3,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 100),
                            child: KdGaugeView(
                              minMaxTextStyle:
                                  TextStyle(color: Colors.transparent),
                              speedTextStyle:
                                  TextStyle(color: Colors.transparent),
                              unitOfMeasurementTextStyle:
                                  TextStyle(color: Colors.transparent),
                              minSpeed: 0,
                              maxSpeed: 100,
                              speed: 10,
                              gaugeWidth: 20,
                              divisionCircleColors: Colors.transparent,
                              subDivisionCircleColors: Colors.transparent,
                              inactiveArcColor: Color(0xff0F1120),
                              activeGaugeColor: Colors.blue,
                            ),
                          ),
                        ),
                        Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 80),
                                child: Text(
                                  '₹ 271',
                                  style: Theme.of(context).textTheme.headline1,
                                ),
                              ),
                              Text(
                                'so far this week',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(color: Colors.grey),
                              ),
                              SizedBox(height: 30),
                              Text(
                                '₹ 924',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Text(
                                'Last week',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ]),
                      Text(
                        'Complete more tasks and earn more!',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 50,
                        width: size.width * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.green[300],
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                            child: Text(
                          'START DUTY',
                          style: Theme.of(context).textTheme.headline3,
                        )),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'FEATURE',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(height: 20),
                BlueCard(
                  size: size,
                  text1: 'See your ID Card',
                  text2:
                      'ID card can be shown as proof of working as a Swiggy Delivery Partner',
                  text3: 'GO TO PROFILE',
                ),
                SizedBox(height: 40),
                Text(
                  'PENDING ACTIONS',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(height: 20),
                BlueCard(
                  size: size,
                  text1: 'Change battery setting',
                  text2: 'Ensures that you do not get automatically logged out',
                  text3: 'OPEN SETTINGS',
                ),
                SizedBox(height: 40),
                Text(
                  'QUICK LINKS',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GreyCard(
                      size: size,
                      icon: Icon(Icons.account_balance_wallet,
                          color: Colors.blue, size: 30),
                      text1: '₹ 0',
                      text2: "Today's earnings",
                    ),
                    GreyCard(
                      size: size,
                      icon: Icon(Icons.money, color: Colors.blue, size: 30),
                      text1: '₹ 271',
                      text2: "Week's earnings",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GreyCard(
                      size: size,
                      icon: Icon(Icons.monetization_on,
                          color: Colors.blue, size: 30),
                      text1: '₹ 2172',
                      text2: "Floating Cash",
                    ),
                    GreyCard(
                      size: size,
                      icon:
                          Icon(Icons.watch_later, color: Colors.blue, size: 30),
                      text1: '00 min',
                      text2: "Login Duration",
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
