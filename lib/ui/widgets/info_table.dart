import 'package:flutter/material.dart';

class InfoTable extends StatelessWidget {
  final String mainTitle;
  final String firstTitle;
  final String firstTitleContent;
  final String secondTitle;
  final String secondTitleContent;
  final String thirdTitle;
  final String thirdTitleContent;

  InfoTable({
    @required this.mainTitle,
    @required this.firstTitle,
    @required this.firstTitleContent,
    @required this.secondTitle,
    @required this.secondTitleContent,
    @required this.thirdTitle,
    @required this.thirdTitleContent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(maxHeight: 170.0, minHeight: 30.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                mainTitle,
                style: Theme.of(context).textTheme.title,
              ),
              Expanded(
                  child: Column(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Color(0xFF757575), width: 2.0),
                          top: BorderSide(
                              color: Color(0xFF757575), width: 2.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        firstTitle,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        secondTitle,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        thirdTitle,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      firstTitleContent,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Text(
                      secondTitleContent,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Text(
                      thirdTitleContent,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                )
              ]))
            ]));
  }
}
