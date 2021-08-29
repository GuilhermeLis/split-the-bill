import 'package:flutter/material.dart';
import 'package:split_the_bill/shared/utils/global.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    double height = h * 0.92;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/background/Rectangle.png',
            height: height,
            width: w,
          ),
          Container(
            height: h,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 9,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 60,
                        height: height,
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Split',
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 80,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'The',
                          style: TextStyle(
                            fontSize: 36,
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: height,
                        child: Text(
                          'Bill',
                          style: TextStyle(
                            fontSize: 80,
                          ),
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(
                            right: 8,
                          ),
                          child: OutlinedButton(
                            onPressed: () {
                              Global.navigatorState.currentState!
                                  .pushNamed('/split');
                            },
                            child: Text(
                              'SPLIT IT',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('HISTORIC'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
