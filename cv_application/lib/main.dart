import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(application());
}

class application extends StatelessWidget {
  const application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: ('vazir'),
      ),
      home: Scaffold(
        appBar: _getappbar(),
        body: SafeArea(
          child: _getmainbody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getappbar() {
    return AppBar(
      backgroundColor: Colors.blue,
      shadowColor: Colors.black,
      elevation: 10,
      title: Text('سجاد کریمی'),
      centerTitle: true,
    );
  }

  Widget _getmainbody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _getheader(),
          getsocialicon(),
          getcardicon(),
          SizedBox(
            height: 20,
          ),
          gethistory(),
        ],
      ),
    );
  }
}

Widget _getheader() {
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 20),
        CircleAvatar(
          backgroundImage: AssetImage('images/man.png'),
          maxRadius: 80,
        ),
        SizedBox(height: 20),
        Text(
          'سجادم یک برنامه نویس',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          'عاشق برنامه نویسی فلاتر و به اشتراک گذاشتن تجربه خودم',
          style: TextStyle(),
        ),
      ],
    ),
  );
}

Widget getsocialicon() {
  return Wrap(
    runSpacing: 10,
    spacing: 20,
    alignment: WrapAlignment.center,
    children: [
      IconButton(
        onPressed: () {},
        icon: FaIcon(FontAwesomeIcons.instagram),
        color: Colors.red[700],
      ),
      IconButton(
        onPressed: () {},
        icon: FaIcon(FontAwesomeIcons.linkedin),
        color: Colors.blue[900],
      ),
      IconButton(
        onPressed: () {},
        icon: FaIcon(FontAwesomeIcons.github),
        color: Colors.yellow[900],
      ),
      SizedBox(
        height: 10,
      ),
    ],
  );
}

Widget getcardicon() {
  var list = ['flutter', 'dart'];
  return Center(
    child: Wrap(
      spacing: 20,
      children: [
        for (var skills in list)
          Card(
            elevation: 10,
            shadowColor: Colors.blue,
            child: Column(
              children: [
                Container(
                  child: Image(
                    image: AssetImage('images/$skills.png'),
                    width: 70,
                    height: 70,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    '$skills',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    ),
  );
}

Widget gethistory() {
  return Container(
    color: Colors.grey[200],
    width: double.infinity,
    padding: EdgeInsets.symmetric(
      vertical: 8,
      horizontal: 10,
    ),
    child: Column(
      children: [
        Container(
          child: Text(
            'سابقه کاری من',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Text('رزومه خودرا بنویسید'),
            Text('رزومه خودرا بنویسید'),
            Text('رزومه خودرا بنویسید'),
            Text('رزومه خودرا بنویسید'),
            Text('رزومه خودرا بنویسید'),
            Text('رزومه خودرا بنویسید'),
            Text('رزومه خودرا بنویسید'),
          ],
        ),
      ],
    ),
  );
}
