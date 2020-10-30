import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _dark;

  @override
  void initState() {
    super.initState();
    _dark = false;
  }

  Brightness _getBrightness() {
    return _dark ? Brightness.dark : Brightness.light;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      isMaterialAppTheme: true,
      data: ThemeData(
        brightness: _getBrightness(),
      ),
      child: Scaffold(
        backgroundColor: _dark ? null : Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                //alignment: Alignment.topLeft,
                onPressed: () {},
                icon: Icon(FontAwesomeIcons.powerOff),
              ),
              IconButton(
                // alignment: Alignment.bottomRight,
                icon: Icon(FontAwesomeIcons.moon),
                onPressed: () {
                  setState(() {
                    _dark = !_dark;
                  });
                },
              ),
            ],
          ),
          iconTheme: IconThemeData(
              color: _dark ? Colors.white : Theme.of(context).primaryColor),
        ),
        body: Container(
          child: Center(
            child: Text(
              'Home',
              style: TextStyle(
                fontSize: 20,
                color: _dark ? Colors.white : Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
