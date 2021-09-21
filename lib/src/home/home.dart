import 'package:flutter/material.dart';
import 'package:synonym_valley/src/colorcustomisation_nav/colorcustomisation_nav.dart';
import 'package:synonym_valley/src/normal_nav/normal_nav.dart';
import 'package:synonym_valley/src/settings/settings_view.dart';
import 'package:fluttermoji/fluttermoji.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

    static const routeName = '/normalnav';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _buttontoggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff373737),
        appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Color(0xff373737),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.settings),
        //     onPressed: () {
        //       // Navigate to the settings page. If the user leaves and returns
        //       // to the app after it has been killed while running in the
        //       // background, the navigation stack is restored.
        //       Navigator.restorablePushNamed(context, SettingsView.routeName);
        //     },
        //   ),
        // ],
      ),
        body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                GridView.count(
                  crossAxisCount: 2,
                  // crossAxisSpacing: 10.0,
                  // mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children: <Widget>[
    GestureDetector(
                onTap: () {
                    Navigator.restorablePushNamed(context, NormalNav.routeName);
                      },
      child: const View(title: 'Made For You',topColor: Color(0xfffb7a81),bottomColor:  Color(0xffffae94),shadowColor: Color(0xfff7d7dd))
    ),
    GestureDetector(
                      onTap: () {
    Navigator.restorablePushNamed(context, ColorCustomisation.routeName);
                      },
      child: const View2(title: 'Customise Colors',topColor: Color(0xff768aea),bottomColor:  Color(0xff595ddc),shadowColor: Color(0xffbfc0f5)),
    ),
  ],
                ),
                if(_buttontoggle) FluttermojiCustomizer(),
                
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton( child: Text("Customise Avatar"), onPressed: (){
              setState(() {
                _buttontoggle = !_buttontoggle;
              });
              }
        ),
            )
          ],
        ),
      );
  }
}



class View extends StatelessWidget {
  const View(
      {Key? key, required this.title,required this.topColor,required this.bottomColor,required this.shadowColor})
      : super(key: key);

  final String title;
  final Color topColor;
  final Color bottomColor;  
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 32, left: 8, right: 8, bottom: 4),
            child: Container(
              width: 200,
              height: 400 ,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: shadowColor,
                      offset: Offset(1.1, 4.0),
                      blurRadius: 8.0),
                ],
                gradient: LinearGradient(
                  colors: [
                    topColor,
                    bottomColor,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(54.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 54, left: 16, right: 16, bottom: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: 0.2,
                        color: Colors.white,
                      ),
                    ),
                    // Expanded(
                    //   child: Padding(
                    //     padding:
                    //         const EdgeInsets.only(top: 8, bottom: 8),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: const <Widget>[
                    //         Text(
                    //           "texxxt",
                    //           style: TextStyle(
                    //             fontWeight: FontWeight.w500,
                    //             fontSize: 10,
                    //             letterSpacing: 0.2,
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                        
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 84,
              height: 84,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 2,
            child: SizedBox(
              width: 80,
              height: 80,
              child: FluttermojiCircleAvatar(radius: 35,backgroundColor: Colors.white.withOpacity(0),),
            ),
          )
        ],
      ),
    );

  }
}
class View2 extends StatelessWidget {
  const View2(
      {Key? key, required this.title,required this.topColor,required this.bottomColor,required this.shadowColor})
      : super(key: key);

  final String title;
  final Color topColor;
  final Color bottomColor;  
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 32, left: 8, right: 8, bottom: 4),
            child: Container(
              width: 200,
              height: 400 ,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: shadowColor,
                      offset: Offset(1.1, 4.0),
                      blurRadius: 8.0),
                ],
                gradient: LinearGradient(
                  colors: [
                    topColor,
                    bottomColor,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(54.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 54, left: 16, right: 16, bottom: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: 0.2,
                        color: Colors.white,
                      ),
                    ),
                    // Expanded(
                    //   child: Padding(
                    //     padding:
                    //         const EdgeInsets.only(top: 8, bottom: 8),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: const <Widget>[
                    //         Text(
                    //           "texxxt",
                    //           style: TextStyle(
                    //             fontWeight: FontWeight.w500,
                    //             fontSize: 10,
                    //             letterSpacing: 0.2,
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                        
                  ],
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   child: Container(
          //     width: 84,
          //     height: 84,
          //     decoration: BoxDecoration(
          //       color: Colors.white.withOpacity(0.2),
          //       shape: BoxShape.circle,
          //     ),
          //   ),
          // ),
           Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 84,
              height: 84,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),
           Positioned(
            top: 0,
            left: 30,
            child: Container(
              width: 84,
              height: 84,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),
           Positioned(
            top: 0,
            left: 60,
            child: Container(
              width: 84,
              height: 84,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Positioned(
          //   top: 0,
          //   left: 8,
          //   child: SizedBox(
          //     width: 80,
          //     height: 80,
          //     // child: Image.asset(mealsListData!.imagePath),
          //   ),
          // )
        ],
      ),
    );

  }
}