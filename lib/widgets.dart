import 'package:flutter/material.dart';

class BlueCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  const BlueCard({
    required this.text1,
    required this.text2,
    required this.text3,
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: size.height * 0.25,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff5D72D2), Color(0xff0CAFF0)])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            text2,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontWeight: FontWeight.w300),
          ),
          Container(
            height: 50,
            width: size.width * 0.4,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: Text(
              text3,
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.blue),
            )),
          )
        ],
      ),
    );
  }
}

class GreyCard extends StatelessWidget {
  final Widget icon;
  final String text1;
  final String text2;
  const GreyCard({
    required this.icon,
    required this.text1,
    required this.text2,
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: size.height * 0.18,
      width: size.width * 0.42,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff4B4B4B), width: 2),
          borderRadius: BorderRadius.circular(8),
          color: Color(0xff222222)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          Text(text1, style: Theme.of(context).textTheme.headline2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text2,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.blue,
                size: 15,
              )
            ],
          )
        ],
      ),
    );
  }
}
