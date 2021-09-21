import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';
import 'package:swipable_stack/swipable_stack.dart';
import 'package:synonym_valley/src/home/home.dart';
import 'package:synonym_valley/src/settings/settings_view.dart';
import 'package:loading_indicator/loading_indicator.dart';
import "dart:math";
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'dart:async';
import 'package:showcaseview/showcaseview.dart';

const List<Color> _kDefaultRainbowColors = const [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.blue,
  Colors.indigo,
  Colors.purple,
];

class ColorCustomisation extends StatefulWidget {
  const ColorCustomisation({ Key? key }) : super(key: key);

    static const routeName = '/colorcustomisation';

  @override
  _ColorCustomisationState createState() => _ColorCustomisationState();
}

class _ColorCustomisationState extends State<ColorCustomisation> {
    List _items = [];
    bool _edit = false;

    // Color pickerColor = Color(0xff443a49);
    // Color currentColor = Color(0xff443a49);

  Color currentColor = Color(0xff282832);
  Color cardbackgroundLeft = Color(0xffffad42);
Color cardbackgroundRight = Color(0xffe65100);

Color DetailsBackgroundLeft = Color(0xff424242);
Color DetailsBackgroundRight = Color(0xff373737);
Color DetailsSpeechColor = Color(0xff7d48bf);
Color DetailsDefColor = Color(0xff1b58aa);
Color DetailsExampleColor = Color(0xffc58a0e);

Color avatarBackgroundColor = Colors.redAccent;
Color theTextColor = Colors.white;

  void changeColor(Color color) => {
    setState(() => currentColor = color),
    _setColor("currentColor",color.value)
    };
   void changecardbackgroundLeft(Color color) => {
     setState(() => cardbackgroundLeft = color),
     _setColor("cardbackgroundLeft",color.value)
     };
   void changecardbackgroundRight(Color color) => {
     setState(() => cardbackgroundRight = color),
     _setColor("cardbackgroundRight",color.value)
     };
  void changeDetailsBackgroundLeft(Color color) => {
    setState(() => DetailsBackgroundLeft = color),
    _setColor("DetailsBackgroundLeft",color.value)
    };
    void changeDetailsBackgroundRight(Color color) => {
      setState(() => DetailsBackgroundRight = color),
      _setColor("DetailsBackgroundRight",color.value)
      };
      void changeDetailsSpeechColor(Color color) => {
        setState(() => DetailsSpeechColor = color),
        _setColor("DetailsSpeechColor",color.value)
        };
        void changeDetailsDefColor(Color color) => {
          setState(() => DetailsDefColor = color),
          _setColor("DetailsDefColor",color.value)
          };
          void changeDetailsExampleColor(Color color) => {
            setState(() => DetailsExampleColor = color),
            _setColor("DetailsExampleColor",color.value)
            };
             void changeavatarBackgroundColor(Color color) => {
            setState(() => avatarBackgroundColor = color),
            _setColor("avatarBackgroundColor",color.value)
            };
             void changetheTextColor(Color color) => {
            setState(() => theTextColor = color),
            _setColor("theTextColor",color.value)
            };

_setNavLocalStorage(value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('navigation', value);
}

  // Fetch content from the json file
  Future<void> readJson() async {
    final String a = await rootBundle.loadString('assets/data/a.json');
    final String b = await rootBundle.loadString('assets/data/b.json');
    final String c = await rootBundle.loadString('assets/data/c.json');
    final String d = await rootBundle.loadString('assets/data/d.json');
    final String e = await rootBundle.loadString('assets/data/e.json');
    final String f = await rootBundle.loadString('assets/data/f.json');
    final String g = await rootBundle.loadString('assets/data/g.json');
    final String h = await rootBundle.loadString('assets/data/h.json');
    final String i = await rootBundle.loadString('assets/data/i.json');
    final String j = await rootBundle.loadString('assets/data/j.json');
    final String k = await rootBundle.loadString('assets/data/k.json');
    final String l = await rootBundle.loadString('assets/data/l.json');
    final String m = await rootBundle.loadString('assets/data/m.json');
    final String n = await rootBundle.loadString('assets/data/n.json');
    final String o = await rootBundle.loadString('assets/data/o.json');
    final String p = await rootBundle.loadString('assets/data/p.json');
    final String q = await rootBundle.loadString('assets/data/q.json');
    final String r = await rootBundle.loadString('assets/data/r.json');
    final String s = await rootBundle.loadString('assets/data/s.json');
    final String t = await rootBundle.loadString('assets/data/t.json');
    final String u = await rootBundle.loadString('assets/data/u.json');
    final String v = await rootBundle.loadString('assets/data/v.json');
    final String w = await rootBundle.loadString('assets/data/w.json');
    final String x = await rootBundle.loadString('assets/data/x.json');
    final String y = await rootBundle.loadString('assets/data/y.json');
    final String z = await rootBundle.loadString('assets/data/z.json');

    var adata = await json.decode(a);
    var bdata = await json.decode(b);
    var cdata = await json.decode(c);
    var ddata = await json.decode(d);
    var edata = await json.decode(e);
    var fdata = await json.decode(f);
    var gdata = await json.decode(g);
    var hdata = await json.decode(h);
    var idata = await json.decode(i);
    var jdata = await json.decode(j);
    var kdata = await json.decode(k);
    var ldata = await json.decode(l);
    var mdata = await json.decode(m);
    var ndata = await json.decode(n);
    var odata = await json.decode(o);
    var pdata = await json.decode(p);
    var qdata = await json.decode(q);
    var rdata = await json.decode(r);
    var sdata = await json.decode(s);
    var tdata = await json.decode(t);
    var udata = await json.decode(u);
    var vdata = await json.decode(v);
    var wdata = await json.decode(w);
    var xdata = await json.decode(x);
    var ydata = await json.decode(y);
    var zdata = await json.decode(z);

    var total = [...adata,...bdata,...cdata,...ddata,...edata,...fdata,...gdata,...hdata,...idata,...jdata,...kdata,...ldata,...mdata,...ndata,...odata,...pdata,...qdata,...rdata,...sdata,...tdata,...udata,...vdata,...wdata,...xdata,...ydata,...zdata];
    
    total = total..shuffle();
    setState(() {
      _items = total;
    });
  }


  _getColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    int? cC = prefs.getInt("currentColor");
    int? cbL = prefs.getInt("cardbackgroundLeft");
    int? cbR = prefs.getInt("cardbackgroundRight");
    int? DBL = prefs.getInt("DetailsBackgroundLeft");
    int? DBR = prefs.getInt("DetailsBackgroundRight");
    int? DSC = prefs.getInt("DetailsSpeechColor");
    int? DDC = prefs.getInt("DetailsDefColor");
    int? DEC = prefs.getInt("DetailsExampleColor");
    int? aBC = prefs.getInt("avatarBackgroundColor");
    int? TC = prefs.getInt("theTextColor");

     currentColor = cC != null?Color(cC):Color(0xff282832);
     cardbackgroundLeft = cbL != null?Color(cbL):Color(0xffffad42);
     cardbackgroundRight = cbR != null?Color(cbR):Color(0xffe65100);
     DetailsBackgroundLeft = DBL != null?Color(DBL):Color(0xff424242);
     DetailsBackgroundRight = DBR != null?Color(DBR):Color(0xff373737);
     DetailsSpeechColor = DSC != null?Color(DSC):Color(0xff7d48bf);
     DetailsDefColor = DDC != null?Color(DDC):Color(0xff1b58aa);
     DetailsExampleColor = DEC != null?Color(DEC):Color(0xffc58a0e);
     avatarBackgroundColor = aBC != null?Color(aBC):Colors.redAccent;
     theTextColor = TC != null?Color(TC):Colors.white;
    // int counter = (prefs.getInt('counter') ?? 0) + 1;
    // await prefs.setInt('counter', counter);
  }

    _setColor(name,value) async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(name, value);
  }

  @override
  void initState() {
    super.initState();
    readJson();
    _getColor();
  }


GlobalKey _one = GlobalKey();
GlobalKey _two = GlobalKey();

  @override
  Widget build(BuildContext context) {

    // final Stream<double> swipe;
    // StreamController<double> _controller = StreamController<double>();
    return ShowCaseWidget(
      builder: Builder(
        builder: (context) {
              executeAfterBuild(context);
          return Scaffold(
              backgroundColor: Colors.black,
              body: (_items.length > 0
                  ? Container(
                            width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child:SwipableStack(

                      itemCount: _items.length,
                              builder: (context, index, constraints) {
                                return Column(
                                  children: [
                                    Tooltip(
                                      message: "Double Tap To Refresh",
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 100,
                                         decoration:  BoxDecoration(
                                          // borderRadius: BorderRadius.(16.0),
                                          color: currentColor,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: GestureDetector(
                                                onTap: () async {
                                                  await _setNavLocalStorage(Home.routeName);
                                                   Navigator.restorablePushReplacementNamed(context, Home.routeName);
                                                    },
                                                    onDoubleTap: (){
                                                      setState(() {
                                                        _items=[];
                                                        Timer(Duration(seconds: 1), () => readJson());
                                                        
                                                      });
                                                    },
                                                
                                                child: index ==0? Showcase(
                                                  key: _one,
                                                  title: 'Button',
                                                  description: 'Click here to go to Home page',
                                                  child: Container(height: 30,width: 30,decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10.0),
                                                  color: avatarBackgroundColor
                                                  // gradient: const LinearGradient(
                                                  //     begin: Alignment.topLeft,
                                                  //     end: Alignment.bottomRight,
                                                  //     colors: [Color(0xffffad42),Color(0xffef6c00), Color(0xffe65100)])
                                                                                  ),
                                                                                   child: Padding(
                                                                                     padding: const EdgeInsets.all(1.0),
                                                                                     child: FluttermojiCircleAvatar(radius: 25,backgroundColor: Colors.white.withOpacity(0),),
                                                                                   ),
                                                                                  ),
                                                ):Container(height: 30,width: 30,decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10.0),
                                                color: avatarBackgroundColor
                                                // gradient: const LinearGradient(
                                                //     begin: Alignment.topLeft,
                                                //     end: Alignment.bottomRight,
                                                //     colors: [Color(0xffffad42),Color(0xffef6c00), Color(0xffe65100)])
                                                                                ),
                                                                                 child: Padding(
                                                                                   padding: const EdgeInsets.all(1.0),
                                                                                   child: FluttermojiCircleAvatar(radius: 25,backgroundColor: Colors.white.withOpacity(0),),
                                                                                 ),
                                                                                ),
                                              ),
                                            ),
                                                     index==0? Showcase(
                                                       key: _two,
                                                      title: 'Edit button',
                                                      description: 'Click to display buttons which can be used to change color, After editing click again to reload the page',
                                                       child: IconButton(
                                                    icon: Icon(Icons.edit,color: theTextColor,),
                                                    tooltip: 'Press to open or close the edit color buttons',
                                                    onPressed: () {
                                                        final snackBar = SnackBar(content: Text('Press Again To Refresh And Scroll',style:TextStyle(color: Colors.black)),backgroundColor: Color(0xffffffff),);
                                                        // Navigate to the settings page. If the user leaves and returns
                                                        // to the app after it has been killed while running in the
                                                        // background, the navigation stack is restored.
                                                        // Navigator.restorablePushNamed(context, SettingsView.routeName);
                                                         if(_edit){
                                                           setState(() {
                                                          _items=[];
                                                          Timer(Duration(seconds: 1), () => readJson());
                                                          
                                                        });
                                                        }
                                                        if(!_edit){
                                                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                        }
                                                        setState(() {
                                                          _edit=!_edit;
            
                                                        });
                                                       
                                    
                                    
                                                  },
                                                  ),
                                                     ):IconButton(
                                                    icon: Icon(Icons.edit,color: theTextColor,),
                                                    tooltip: 'Press to open or close the edit color buttons',
                                                    onPressed: () {
                                                      final snackBar = SnackBar(content: Text('Press Again To Refresh And Scroll',style:TextStyle(color: Colors.black)),backgroundColor: Color(0xffffffff),);
                                                      // Navigate to the settings page. If the user leaves and returns
                                                      // to the app after it has been killed while running in the
                                                      // background, the navigation stack is restored.
                                                      // Navigator.restorablePushNamed(context, SettingsView.routeName);
                                                       if(_edit){
                                                         setState(() {
                                                        _items=[];
                                                        Timer(Duration(seconds: 1), () => readJson());
                                                        
                                                      });
                                                      }
                                                      if(!_edit){
                                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                      }
                                                      setState(() {
                                                        _edit=!_edit;
            
                                                      });
                                                     
                                    
                                    
                                                  },
                                                  )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                       decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(bottomRight: Radius.circular(16),bottomLeft: Radius.circular(16)),
                                        color: currentColor,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [

                                              if(_edit)    Column(
                                                children: [
                                                  Text('Long Press Buttons To See Tooltip',style: TextStyle(color: theTextColor),),
                                                  Wrap(
                                                    children: [
                                                      IconButton(
                                                          icon: Icon(Icons.edit,size: 25,color: theTextColor,),
                                                          alignment: Alignment.bottomRight,
                                                          tooltip: "Change background Color",
                                                          onPressed: () {
                                                            // Navigate to the settings page. If the user leaves and returns
                                                            // to the app after it has been killed while running in the
                                                            // background, the navigation stack is restored.
                                                            // Navigator.restorablePushNamed(context, SettingsView.routeName);
                                                           

                                                                showDialog(
                                                                context: context,
                                                                builder: (BuildContext context) {
                                                                  return AlertDialog(
                                                                    titlePadding: const EdgeInsets.all(0.0),
                                                                    contentPadding: const EdgeInsets.all(0.0),
                                                                    content: SingleChildScrollView(
                                                                      child: ColorPicker(
                                                                        pickerColor: currentColor,
                                                                        onColorChanged: changeColor,
                                                                        colorPickerWidth: 300.0,
                                                                        pickerAreaHeightPercent: 0.7,
                                                                        enableAlpha: true,
                                                                        displayThumbColor: true,
                                                                        showLabel: true,
                                                                        paletteType: PaletteType.hsv,
                                                                        pickerAreaBorderRadius: const BorderRadius.only(
                                                                          topLeft: const Radius.circular(2.0),
                                                                          topRight: const Radius.circular(2.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                          },
                                                        );


                                                        },
                                                        ),
                                                                                                      IconButton(
                                                          icon: Icon(Icons.edit,size: 25,color: theTextColor,),
                                                          alignment: Alignment.bottomRight,
                                                            tooltip: "Change Avatar Background color",
                                                          onPressed: () {
                                                            // Navigate to the settings page. If the user leaves and returns
                                                            // to the app after it has been killed while running in the
                                                            // background, the navigation stack is restored.
                                                            // Navigator.restorablePushNamed(context, SettingsView.routeName);
                                                           

                                                                showDialog(
                                                                context: context,
                                                                builder: (BuildContext context) {
                                                                  return AlertDialog(
                                                                    titlePadding: const EdgeInsets.all(0.0),
                                                                    contentPadding: const EdgeInsets.all(0.0),
                                                                    content: SingleChildScrollView(
                                                                      child: ColorPicker(
                                                                        pickerColor: avatarBackgroundColor,
                                                                        onColorChanged: changeavatarBackgroundColor,
                                                                        colorPickerWidth: 300.0,
                                                                        pickerAreaHeightPercent: 0.7,
                                                                        enableAlpha: true,
                                                                        displayThumbColor: true,
                                                                        showLabel: true,
                                                                        paletteType: PaletteType.hsv,
                                                                        pickerAreaBorderRadius: const BorderRadius.only(
                                                                          topLeft: const Radius.circular(2.0),
                                                                          topRight: const Radius.circular(2.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                          },
                                                        );


                                                        },
                                                        ),

                                                      IconButton(
                                                          icon:  Icon(Icons.edit,size: 25,color: theTextColor,),
                                                          alignment: Alignment.bottomRight,
                                                           tooltip: "Change Card Left Color",
                                                          onPressed: () {
                                                            // Navigate to the settings page. If the user leaves and returns
                                                            // to the app after it has been killed while running in the
                                                            // background, the navigation stack is restored.
                                                            // Navigator.restorablePushNamed(context, SettingsView.routeName);
                                                           

                                                                showDialog(
                                                                context: context,
                                                                builder: (BuildContext context) {
                                                                  return AlertDialog(
                                                                    titlePadding: const EdgeInsets.all(0.0),
                                                                    contentPadding: const EdgeInsets.all(0.0),
                                                                    content: SingleChildScrollView(
                                                                      child: ColorPicker(
                                                                        pickerColor: cardbackgroundLeft,
                                                                        onColorChanged: changecardbackgroundLeft,
                                                                        colorPickerWidth: 300.0,
                                                                        pickerAreaHeightPercent: 0.7,
                                                                        enableAlpha: true,
                                                                        displayThumbColor: true,
                                                                        showLabel: true,
                                                                        paletteType: PaletteType.hsv,
                                                                        pickerAreaBorderRadius: const BorderRadius.only(
                                                                          topLeft: const Radius.circular(2.0),
                                                                          topRight: const Radius.circular(2.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                          },
                                                        );


                                                        },
                                                        ),
                                                      IconButton(
                                                          icon:  Icon(Icons.edit,size: 25,color: theTextColor,),
                                                          alignment: Alignment.bottomRight,
                                                            tooltip: "Change Card Right Color",
                                                          onPressed: () {
                                                            // Navigate to the settings page. If the user leaves and returns
                                                            // to the app after it has been killed while running in the
                                                            // background, the navigation stack is restored.
                                                            // Navigator.restorablePushNamed(context, SettingsView.routeName);
                                                           

                                                                showDialog(
                                                                context: context,
                                                                builder: (BuildContext context) {
                                                                  return AlertDialog(
                                                                    titlePadding: const EdgeInsets.all(0.0),
                                                                    contentPadding: const EdgeInsets.all(0.0),
                                                                    content: SingleChildScrollView(
                                                                      child: ColorPicker(
                                                                        pickerColor: cardbackgroundRight,
                                                                        onColorChanged: changecardbackgroundRight,
                                                                        colorPickerWidth: 300.0,
                                                                        pickerAreaHeightPercent: 0.7,
                                                                        enableAlpha: true,
                                                                        displayThumbColor: true,
                                                                        showLabel: true,
                                                                        paletteType: PaletteType.hsv,
                                                                        pickerAreaBorderRadius: const BorderRadius.only(
                                                                          topLeft: const Radius.circular(2.0),
                                                                          topRight: const Radius.circular(2.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                          },
                                                        );


                                                        },
                                                        ),
                                                           IconButton(
                                                          icon:  Icon(Icons.edit,size: 25,color: theTextColor,),
                                                          alignment: Alignment.bottomRight,
                                                            tooltip: "Change Details Left Color",
                                                          onPressed: () {
                                                            // Navigate to the settings page. If the user leaves and returns
                                                            // to the app after it has been killed while running in the
                                                            // background, the navigation stack is restored.
                                                            // Navigator.restorablePushNamed(context, SettingsView.routeName);
                                                           

                                                                showDialog(
                                                                context: context,
                                                                builder: (BuildContext context) {
                                                                  return AlertDialog(
                                                                    titlePadding: const EdgeInsets.all(0.0),
                                                                    contentPadding: const EdgeInsets.all(0.0),
                                                                    content: SingleChildScrollView(
                                                                      child: ColorPicker(
                                                                        pickerColor: DetailsBackgroundLeft,
                                                                        onColorChanged: changeDetailsBackgroundLeft,
                                                                        colorPickerWidth: 300.0,
                                                                        pickerAreaHeightPercent: 0.7,
                                                                        enableAlpha: true,
                                                                        displayThumbColor: true,
                                                                        showLabel: true,
                                                                        paletteType: PaletteType.hsv,
                                                                        pickerAreaBorderRadius: const BorderRadius.only(
                                                                          topLeft: const Radius.circular(2.0),
                                                                          topRight: const Radius.circular(2.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                          },
                                                        );


                                                        },
                                                        ),
                                                                      IconButton(
                                                          icon:  Icon(Icons.edit,size: 25,color: theTextColor,),
                                                          alignment: Alignment.bottomRight,
                                                            tooltip: "Change Details Right Color",
                                                          onPressed: () {
                                                            // Navigate to the settings page. If the user leaves and returns
                                                            // to the app after it has been killed while running in the
                                                            // background, the navigation stack is restored.
                                                            // Navigator.restorablePushNamed(context, SettingsView.routeName);
                                                           

                                                                showDialog(
                                                                context: context,
                                                                builder: (BuildContext context) {
                                                                  return AlertDialog(
                                                                    titlePadding: const EdgeInsets.all(0.0),
                                                                    contentPadding: const EdgeInsets.all(0.0),
                                                                    content: SingleChildScrollView(
                                                                      child: ColorPicker(
                                                                        pickerColor: DetailsBackgroundRight,
                                                                        onColorChanged: changeDetailsBackgroundRight,
                                                                        colorPickerWidth: 300.0,
                                                                        pickerAreaHeightPercent: 0.7,
                                                                        enableAlpha: true,
                                                                        displayThumbColor: true,
                                                                        showLabel: true,
                                                                        paletteType: PaletteType.hsv,
                                                                        pickerAreaBorderRadius: const BorderRadius.only(
                                                                          topLeft: const Radius.circular(2.0),
                                                                          topRight: const Radius.circular(2.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                          },
                                                        );


                                                        },
                                                        ),
                                                                      IconButton(
                                                          icon:  Icon(Icons.edit,size: 25,color: theTextColor,),
                                                          alignment: Alignment.bottomRight,
                                                          tooltip: "Change Details Speech Color",
                                                          onPressed: () {
                                                            // Navigate to the settings page. If the user leaves and returns
                                                            // to the app after it has been killed while running in the
                                                            // background, the navigation stack is restored.
                                                            // Navigator.restorablePushNamed(context, SettingsView.routeName);
                                                           

                                                                showDialog(
                                                                context: context,
                                                                builder: (BuildContext context) {
                                                                  return AlertDialog(
                                                                    titlePadding: const EdgeInsets.all(0.0),
                                                                    contentPadding: const EdgeInsets.all(0.0),
                                                                    content: SingleChildScrollView(
                                                                      child: ColorPicker(
                                                                        pickerColor: DetailsSpeechColor,
                                                                        onColorChanged: changeDetailsSpeechColor,
                                                                        colorPickerWidth: 300.0,
                                                                        pickerAreaHeightPercent: 0.7,
                                                                        enableAlpha: true,
                                                                        displayThumbColor: true,
                                                                        showLabel: true,
                                                                        paletteType: PaletteType.hsv,
                                                                        pickerAreaBorderRadius: const BorderRadius.only(
                                                                          topLeft: const Radius.circular(2.0),
                                                                          topRight: const Radius.circular(2.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                          },
                                                        );


                                                        },
                                                        ),
                                                                      IconButton(
                                                          icon:  Icon(Icons.edit,size: 25,color: theTextColor,),
                                                          alignment: Alignment.bottomRight,
                                                          tooltip: "Change Details Defenition Color",
                                                          onPressed: () {
                                                            // Navigate to the settings page. If the user leaves and returns
                                                            // to the app after it has been killed while running in the
                                                            // background, the navigation stack is restored.
                                                            // Navigator.restorablePushNamed(context, SettingsView.routeName);
                                                           

                                                                showDialog(
                                                                context: context,
                                                                builder: (BuildContext context) {
                                                                  return AlertDialog(
                                                                    titlePadding: const EdgeInsets.all(0.0),
                                                                    contentPadding: const EdgeInsets.all(0.0),
                                                                    content: SingleChildScrollView(
                                                                      child: ColorPicker(
                                                                        pickerColor: DetailsDefColor,
                                                                        onColorChanged: changeDetailsDefColor,
                                                                        colorPickerWidth: 300.0,
                                                                        pickerAreaHeightPercent: 0.7,
                                                                        enableAlpha: true,
                                                                        displayThumbColor: true,
                                                                        showLabel: true,
                                                                        paletteType: PaletteType.hsv,
                                                                        pickerAreaBorderRadius: const BorderRadius.only(
                                                                          topLeft: const Radius.circular(2.0),
                                                                          topRight: const Radius.circular(2.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                          },
                                                        );


                                                        },
                                                        ),
                                                                      IconButton(
                                                          icon: Icon(Icons.edit,size: 25,color: theTextColor,),
                                                          alignment: Alignment.bottomRight,
                                                               tooltip: "Change Details Example Color",

                                                          onPressed: () {
                                                            // Navigate to the settings page. If the user leaves and returns
                                                            // to the app after it has been killed while running in the
                                                            // background, the navigation stack is restored.
                                                            // Navigator.restorablePushNamed(context, SettingsView.routeName);
                                                           

                                                                showDialog(
                                                                context: context,
                                                                builder: (BuildContext context) {
                                                                  return AlertDialog(
                                                                    titlePadding: const EdgeInsets.all(0.0),
                                                                    contentPadding: const EdgeInsets.all(0.0),
                                                                    content: SingleChildScrollView(
                                                                      child: ColorPicker(
                                                                        pickerColor: DetailsExampleColor,
                                                                        onColorChanged: changeDetailsExampleColor,
                                                                        colorPickerWidth: 300.0,
                                                                        pickerAreaHeightPercent: 0.7,
                                                                        enableAlpha: true,
                                                                        displayThumbColor: true,
                                                                        showLabel: true,
                                                                        paletteType: PaletteType.hsv,
                                                                        pickerAreaBorderRadius: const BorderRadius.only(
                                                                          topLeft: const Radius.circular(2.0),
                                                                          topRight: const Radius.circular(2.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                          },
                                                        );


                                                        },
                                                        ),
                                                                      IconButton(
                                                          icon:  Icon(Icons.edit,size: 25,color: theTextColor,),
                                                          alignment: Alignment.bottomRight,
                                                               tooltip: "Change Text Color",

                                                          onPressed: () {
                                                            // Navigate to the settings page. If the user leaves and returns
                                                            // to the app after it has been killed while running in the
                                                            // background, the navigation stack is restored.
                                                            // Navigator.restorablePushNamed(context, SettingsView.routeName);
                                                           

                                                                showDialog(
                                                                context: context,
                                                                builder: (BuildContext context) {
                                                                  return AlertDialog(
                                                                    titlePadding: const EdgeInsets.all(0.0),
                                                                    contentPadding: const EdgeInsets.all(0.0),
                                                                    content: SingleChildScrollView(
                                                                      child: ColorPicker(
                                                                        pickerColor: theTextColor,
                                                                        onColorChanged: changetheTextColor,
                                                                        colorPickerWidth: 300.0,
                                                                        pickerAreaHeightPercent: 0.7,
                                                                        enableAlpha: true,
                                                                        displayThumbColor: true,
                                                                        showLabel: true,
                                                                        paletteType: PaletteType.hsv,
                                                                        pickerAreaBorderRadius: const BorderRadius.only(
                                                                          topLeft: const Radius.circular(2.0),
                                                                          topRight: const Radius.circular(2.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                          },
                                                        );


                                                        },
                                                        ),
                                                    ],
                                                  ),
                                                ],
                                              ),


                                            Card(_items[index]['word'],cardbackgroundLeft,cardbackgroundRight,theTextColor),
                                            // Text(_items[index]['meanings'][0]['def']),
                                            //  ..._items[index]['meanings'].map((value) {
                                            //   return CardDetails(def: value['def'],example: value['example']??"",speechPart: value['speech_part']??"",);
                                            // }),
                                           ...( _items[index]['meanings'].length<2)?
                                           
                                           _items[index]['meanings'].map((value) {
                                              return CardDetails(def: value['def'],example: value['example']??"",speechPart: value['speech_part']??"",backgroundLeft: DetailsBackgroundLeft,backgroundRight: DetailsBackgroundRight,defColor: DetailsDefColor,exampleColor: DetailsExampleColor,speechColor: DetailsSpeechColor,txtColor: theTextColor,);
                                            })
                                           
                                           :_items[index]['meanings'].sublist(0,2).map((value) {
                                              return CardDetails(def: value['def'],example: value['example']??"",speechPart: value['speech_part']??"",backgroundLeft: DetailsBackgroundLeft,backgroundRight: DetailsBackgroundRight,defColor: DetailsDefColor,exampleColor: DetailsExampleColor,speechColor: DetailsSpeechColor,txtColor: theTextColor,);
                                            }),

                                          
                                          ],
                                        ),
                                      ),
                                      ),
                                    ),
                                  ],
                                );
                                // ),
                              },
                            ),
                    )
                  : 
                  Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                   decoration: const BoxDecoration(
                                    // borderRadius: BorderRadius.(16.0),
                                    color: Color(0xff282832),
                                  ),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('Loading words from A to Z',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: theTextColor),),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(128,64,128,64),
                          child: LoadingIndicator(
                            indicatorType: getRandomElement([Indicator.ballPulse,Indicator.ballGridPulse,Indicator.ballClipRotate,Indicator.squareSpin,Indicator.ballClipRotatePulse,Indicator.ballClipRotateMultiple,Indicator.ballPulseRise,Indicator.ballRotate,Indicator.cubeTransition,Indicator.ballZigZag,Indicator.ballZigZagDeflect,Indicator.ballTrianglePath,Indicator.ballTrianglePathColored,Indicator.ballTrianglePathColoredFilled,Indicator.ballScale,Indicator.lineScale,Indicator.lineScaleParty,Indicator.ballScaleMultiple,Indicator.ballPulseSync,Indicator.ballBeat,Indicator.lineScalePulseOut,Indicator.lineScalePulseOutRapid,Indicator.ballScaleRipple,Indicator.ballScaleRippleMultiple,Indicator.ballSpinFadeLoader,Indicator.lineSpinFadeLoader,Indicator.triangleSkewSpin,Indicator.pacman,Indicator.ballGridBeat,Indicator.semiCircleSpin,Indicator.ballRotateChase,Indicator.orbit,Indicator.audioEqualizer,Indicator.circleStrokeSpin]),
                            colors: _kDefaultRainbowColors,
                            strokeWidth: 4.0,
                            // pathBackgroundColor:
                                // showPathBackground ? Colors.black45 : null,
                          ),
                        ),
                      ],
                    ),
                  )
                  ),);
        },
      ),
    );
  }
  Future<void> executeAfterBuild(context) async {
  // this code will get executed after the build method
  // because of the way async functions are scheduled
  SharedPreferences prefs = await SharedPreferences.getInstance();
   bool? seen = prefs.getBool('seen');
   if(seen!=true){
   ShowCaseWidget.of(context)!.startShowCase([_one,_two]);
   await prefs.setBool('seen', true);
   }     

}
}

getRandomElement(List<Indicator> list) {
    final random = Random();
    var i = random.nextInt(list.length);
    return list[i];
}

class Card extends StatelessWidget {
  final String str;
  final Color backgroundLeft;
   final Color backgroundRight;
   final Color textColr;
  Card(this.str,this.backgroundLeft,this.backgroundRight,this.textColr);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        // alignment: Alignment.topRight,
        children: [
          Container(
            height: MediaQuery.of(context).size.width*0.4,
            width: MediaQuery.of(context).size.width*0.9,
            alignment: Alignment.center,
            constraints: BoxConstraints(maxWidth: 500,maxHeight: 200),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
               gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [backgroundLeft, backgroundRight])
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(str,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color:textColr),)),
            ),
          ),
          // Positioned(
          //   top: 0,
          //   right: 40,
          //   child: Container(width: 60,height: 40,
          //   decoration: BoxDecoration(
          //        gradient: LinearGradient(
          // begin: Alignment.topCenter,
          // end: Alignment.bottomCenter,
          // colors: [backgroundLeft, backgroundRight])
          //         ),
          //         ),
          // ),
          // Positioned(
          //   top: 50,
          //   right: 0,
          //   child: Container(width: 50,height: 20,
          //   decoration: BoxDecoration(
          //        gradient: const LinearGradient(
          // begin: Alignment.centerRight,
          // end: Alignment.centerLeft,
          // colors: [Color(0xffffad42), Color(0xffef6c00)])
          //         ),
          //         ),
          // )
        ],
      ),
    );
  }
}

class CardDetails extends StatelessWidget {
  final String speechPart;
  final String def;
  final String example;
  final Color backgroundLeft;
  final Color backgroundRight;
  final Color speechColor;
  final Color defColor;
  final Color exampleColor;
  final Color txtColor;
  CardDetails({required this.def,required this.backgroundLeft,required this.backgroundRight,required this.speechColor,required this.defColor,required this.exampleColor,required this.txtColor,this.speechPart="",this.example=""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 2),
      child: Container(
        // height: MediaQuery.of(context).size.width*0.4,
        width: MediaQuery.of(context).size.width*0.9,
        constraints: BoxConstraints(maxWidth: 500),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [backgroundLeft, backgroundRight])
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(alignment: Alignment.topLeft, child: 
            speechPart.isNotEmpty?
            Container( child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: speechPart.length==1? Text(speechPart[0].toUpperCase(),style: TextStyle(color: txtColor),):Text("${speechPart[0].toUpperCase()}${speechPart.substring(1)}",style: TextStyle(color: txtColor),),
            ),
            color: speechColor,
              //     decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(4.0),
              //   gradient: LinearGradient(
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              
              //   colors: [Color(0xfff5f5f5), speechColor])
              // ),
              ):Container()),
            SizedBox(height: 5,),
            Container( 
              child:  Padding(
              padding: EdgeInsets.all(4.0),
              child: Text('Definition',style: TextStyle(color: txtColor),),
            ),
            color: defColor,
            //  decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(4.0),
            //     gradient: LinearGradient(
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //     colors: [Color(0xfff5f5f5), defColor])
            //   ),
              ),

            def.isNotEmpty?  
            Container(child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: def.length==1?Text(def[0].toUpperCase(),style: TextStyle(color: txtColor),):Text("${def[0].toUpperCase()}${def.substring(1)}",style: TextStyle(color: txtColor),),
            )):Container(),
            SizedBox(height: 5,),
            if(example.isNotEmpty) Container(child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Text('Example',style: TextStyle(color: txtColor),),
            ), 
            color: exampleColor,
            //  decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(4.0),
            //   gradient: LinearGradient(
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            //     stops: [0.05,0.2],
            //   colors: [Color(0xfff5f5f5), exampleColor])
            // ),
            ),
             if(example.isNotEmpty)
            Container(child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: example.length==1?Text(example[0].toUpperCase(),style: TextStyle(color: txtColor),): Text("${example[0].toUpperCase()}${example.substring(1)}",style: TextStyle(color: txtColor),),
            )),
            
          ],),
        )
      ),
    );
  }
}