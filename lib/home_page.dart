
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:ict_app/menu_widget.dart';


String imgSrcAvatar="https://previews.123rf.com/images/pandavector/pandavector1704/pandavector170406094/76736955-girl-icon-flat-single-avatar-peaople-icon-from-the-big-avatar-flat-.jpg";
List<String> stdList=[
  "জাতীয় কম্পিউটার প্রশিক্ষণ ও গবেষণা একাডেমী ",
  "যুব উন্নয়ন অধিদপ্তর-গণপ্রজাতন্ত্রী বাংলাদেশ সরকার",
  "জেলা সমাজসেবা কার্যালয়",
];
List<Color> btnColor=[
  Color(0xffFCF3CF),
  Color(0xffF9E79F),
  Color(0xffF7DC6F),
  Color(0xffF1C40F )
];
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
GlobalKey<SliderMenuContainerState> _key =
new GlobalKey<SliderMenuContainerState>();
String title= "Home";

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    title = "Home";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;

    return Scaffold(
      body:
      SliderMenuContainer(
        appBarColor: Color(0xff188031),
        key: _key,
        sliderMenuCloseSize: 0,
        title: Row(
          children: [
          Icon(Icons.computer),
            Text("তথ্য প্রযুক্তি  সহায়িকা", textAlign:TextAlign.center,
            style: TextStyle(color: Colors.white,
             fontWeight: FontWeight.w800),),
          ],
        ),
        shadowColor: Colors.transparent,
        drawerIconColor: Colors.white,
        drawerIconSize: width*0.08,
        //slideDirection: Slider.RIGHT_TO_LEFT,
        //appBarPadding: const EdgeInsets.only(top: 10),
        sliderMenuOpenSize: 300,
        appBarHeight: 100,
        appBarPadding: EdgeInsets.fromLTRB(0, 40, 0, 0),
        sliderMenu:
        MenuWidget(
          //  onProfilePictureClick: () {},
          onItemClick: (title) {
            _key.currentState!.closeDrawer();
            setState(() {
    title = title;
    if(title=="Graphics Design")
    {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => SecondPage()),
    // );
    }
    else if(title=="Digital Marketing")
    {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => ThirdPage()),
    // );
    }
    else if(title=="Web Design & Development")

    {

    }
    else if(title=="SEO w/ Affiliate Marketing")
    {

    }
    else if(title=="3D Animation")
    {

    }
    else if(title=="Motion Graphics")
    {

    }
    else if(title=="Game Development")
    {

    }
    else if(title=="App Development")
      {

      }
    else if(title=="UI/UX Design")
      {

      }
    else if(title=="Web Application Development")
      {

      }
    else if(title=="Digital Filmmaking, and more"){

    }
            });
          },
        ),
        sliderMain:
       Container(
         color: Color(0xffAAB7B8),
         child: Column(
         children: [
          Expanded(
              child:
          ListView.builder(
              itemCount: stdList.length,
              itemBuilder: (context, index){
                return InkWell(
                  onTap: (){

                      if(index==0){
                        // Navigator.push(context, MaterialPageRoute
                        //   (builder: (context)=> ));
                      }
                      else if(index==1){
                        // Navigator.push(context, MaterialPageRoute
                        //   (builder: (context)=> ));
                      }
                      else if(index==2){
                        // Navigator.push(context, MaterialPageRoute
                        //   (builder: (context)=> ));
                      }

                  },
                  child: Container(
                    height: 50,
                    color: btnColor[index],
                    child: Center(child: Text(stdList[index])),
                  ),
                );
              }
          )
          )
         ],
         ),
       )
      ),

    );

  }
}