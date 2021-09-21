import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';
import 'package:swipable_stack/swipable_stack.dart';
import 'package:synonym_valley/src/home/home.dart';
import 'package:synonym_valley/src/settings/settings_view.dart';
import 'package:loading_indicator/loading_indicator.dart';
import "dart:math";
import 'package:fluttermoji/fluttermoji.dart';
import 'dart:async';

const List<Color> _kDefaultRainbowColors = const [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.blue,
  Colors.indigo,
  Colors.purple,
];

class NormalNav extends StatefulWidget {
  const NormalNav({ Key? key }) : super(key: key);

    static const routeName = '/';

  @override
  _NormalNavState createState() => _NormalNavState();
}

class _NormalNavState extends State<NormalNav> {
    List _items = [];
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

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {

    // final Stream<double> swipe;
    // StreamController<double> _controller = StreamController<double>();
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
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                               decoration: const BoxDecoration(
                                // borderRadius: BorderRadius.(16.0),
                                color: Color(0xff282832),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                         Navigator.restorablePushNamed(context, Home.routeName);
                                          },
                                      child: Container(height: 35,width: 35,decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.redAccent
                                      // gradient: const LinearGradient(
                                      //     begin: Alignment.topLeft,
                                      //     end: Alignment.bottomRight,
                                      //     colors: [Color(0xffffad42),Color(0xffef6c00), Color(0xffe65100)])
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(0.5),
                                          child: FluttermojiCircleAvatar(radius: 25,backgroundColor: Colors.white.withOpacity(0),),
                                        ),
                                        ),
                                    ),
                                  ),
                                           IconButton(
                                          icon: const Icon(Icons.refresh),
                                          tooltip: "Refresh The List",
                                          onPressed: () {
                                            // Navigate to the settings page. If the user leaves and returns
                                            // to the app after it has been killed while running in the
                                            // background, the navigation stack is restored.
                                            // Navigator.restorablePushNamed(context, SettingsView.routeName);
                                             setState(() {
                                                _items=[];
                                                Timer(Duration(seconds: 1), () => readJson());
                                              });
                                          },
                                        ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                               decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(16),bottomLeft: Radius.circular(16)),
                                color: Color(0xff282832),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Card(_items[index]['word']),
                                    // Text(_items[index]['meanings'][0]['def']),
                                    //  ..._items[index]['meanings'].map((value) {
                                    //   return CardDetails(def: value['def'],example: value['example']??"",speechPart: value['speech_part']??"",);
                                    // }),
                                   ...( _items[index]['meanings'].length<2)?
                                   
                                   _items[index]['meanings'].map((value) {
                                      return CardDetails(def: value['def'],example: value['example']??"",speechPart: value['speech_part']??"",);
                                    })
                                   
                                   :_items[index]['meanings'].sublist(0,2).map((value) {
                                      return CardDetails(def: value['def'],example: value['example']??"",speechPart: value['speech_part']??"",);
                                    })
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
                Container(child: Text('Loading words from A to Z',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),),
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
            )
      );
  }
}

getRandomElement(List<Indicator> list) {
    final random = Random();
    var i = random.nextInt(list.length);
    return list[i];
}

class Card extends StatelessWidget {
  final String str;
  Card(this.str);

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
               gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xffffad42),Color(0xffef6c00), Color(0xffe65100)])
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(str,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 32),)),
            ),
          ),
          Positioned(
            top: 0,
            right: 40,
            child: Container(width: 60,height: 40,
            decoration: BoxDecoration(
                 gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xffffad42), Color(0xffef6c00)])
                  ),
                  ),
          ),
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
  CardDetails({required this.def,this.speechPart="",this.example=""});

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
          gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff424242), Color(0xff373737)])
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
              child: speechPart.length==1? Text(speechPart[0].toUpperCase()):Text("${speechPart[0].toUpperCase()}${speechPart.substring(1)}"),
            ),
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xffbd8afd), Color(0xff7d48bf)])
              ),
              ):Container()),
            SizedBox(height: 5,),
            Container( child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text('Definition'),
            ),
             decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff4292fd), Color(0xff1b58aa)])
              ),),

            def.isNotEmpty?  
            Container(child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: def.length==1?Text(def[0].toUpperCase()):Text("${def[0].toUpperCase()}${def.substring(1)}"),
            )):Container(),
            SizedBox(height: 5,),
            if(example.isNotEmpty) Container(child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text('Example'),
            ), 
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffeba207), Color(0xffc58a0e)])
            ),),
             if(example.isNotEmpty)
            Container(child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: example.length==1?Text(example[0].toUpperCase()): Text("${example[0].toUpperCase()}${example.substring(1)}"),
            )),
            
          ],),
        )
      ),
    );
  }
}