import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final Function(String) onItemClick;

  const MenuWidget({Key? key, required this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _heightOnly=MediaQuery.of(context).size.height;
    double _widthOnly=MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: _heightOnly*0.015,
            ),
            CircleAvatar(
              radius: 65,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/image/avater1.png'),
              ),          ),

            Text(
              '',
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold,
                fontSize: _widthOnly*0.04,
                fontFamily: 'BalsamiqSans',),
            ),

            sliderItem('Graphics Design', Icons.graphic_eq),
            sliderItem('Digital Marketing', Icons.apartment),
            sliderItem('Web Design & Development', Icons.save_alt),
            sliderItem('SEO w/ Affiliate Marketing', Icons.settings),
            sliderItem('3D Animation', Icons.arrow_back_ios),
            sliderItem('Motion Graphics', Icons.arrow_back_ios),
            sliderItem('Game Development', Icons.arrow_back_ios),
            sliderItem('App Development', Icons.arrow_back_ios),
            sliderItem('UI/UX Design', Icons.arrow_back_ios),
            sliderItem('Web Application Development', Icons.arrow_back_ios),
            sliderItem('Digital Filmmaking, and more', Icons.arrow_back_ios),


          ],
        ),
      ),
    );
  }

  Widget sliderItem(String title, IconData icons) => ListTile(
      title: Text(
        title,
        style:
        TextStyle(color: Colors.black, fontFamily: 'BalsamiqSans_Regular'),
      ),
      leading: Icon(
        icons,
        color: Colors.black,
      ),
      onTap: () {
        onItemClick(title);
      });
}