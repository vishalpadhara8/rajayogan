import 'package:flutter/material.dart';
import 'demo1/main.dart';
import 'demo2/demo2.dart';
import 'demo3/demo3.dart';
import 'demo4/demo4.dart';
import 'demo5/demo5.dart';
import 'scrollerdemo.dart';
//import 'manuscreen.dart';

void main() => runApp(new ZoomSide());

class ZoomSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Zoom Menu',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new ZoomScaffold(
      menuScreen: MenuScreen(),
      contentScreen: Layout(
          contentBuilder: (cc)=> Container(
            color: Colors.grey[200],
            child: Container(
              color: Colors.grey[200],
            ),
          )
      ),
    );
  }
}

//Image
class CircularImage extends StatelessWidget {
  final double _width, _height;
  final ImageProvider image;

  CircularImage(this.image, {double width = 40, double height = 40})
      : _width = width,
        _height = height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      height: _height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: image),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black45,
            )
          ]
      ),
    );
  }
}

class MenuScreen extends StatelessWidget{

  final String imageUrl = "https://celebritypets.net/wp-content/uploads/2016/12/Adriana-Lima.jpg";

 /* final List<MenuItem> options = [
    MenuItem(Icons.search, 'Demo 1',),
    MenuItem(Icons.shopping_basket, 'Demo 2'),
    MenuItem(Icons.favorite, 'Demo 3'),
    MenuItem(Icons.code, 'Demo 4'),
    MenuItem(Icons.format_list_bulleted, 'Demo 5'),
  ];*/

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 62, left: 32,bottom: 8,
          right: MediaQuery.of(context).size.width/2.9),
      color: Colors.deepOrangeAccent,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: CircularImage(
                  NetworkImage(imageUrl),
                ),
              ),
              Text('Tatiana',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              )
            ],
          ),
          Spacer(),

          new ListTile(
            title: new Text(" (1) Demo 1"),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Demo1()));
//                Navigator.of(context).pushNamed("/a");
            },
          ),

          new ListTile(
            title: new Text(" (2) Demo 2"),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Demo2()));
//                new TextChanges();
//                Navigator.of(context).pushNamed("/b");
            },
          ),

          new ListTile(
            title: new Text(" (3) Demo 3"),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Demo3()));
//                new TextChanges();
//                Navigator.of(context).pushNamed("/b");
            },
          ),

          new ListTile(
            title: new Text(" (4) Demo 4"),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Demo4()));
//                new TextChanges();
//                Navigator.of(context).pushNamed("/b");
            },
          ),

          new ListTile(
            title: new Text(" (5) Demo 5"),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Demo5()));
//                new TextChanges();
//                Navigator.of(context).pushNamed("/b");
            },
          ),

          new ListTile(
            title: new Text(" --> Scroller Demo"),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Scrollerdemo()));
//                new TextChanges();
//                Navigator.of(context).pushNamed("/b");
            },
          ),

          new ListTile(
            title: new Text(" --> Zoom Screen"),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new ZoomSide()));
//                new TextChanges();
//                Navigator.of(context).pushNamed("/b");
            },
          ),

//          Column(
//            children: options.map((item) {
//              return ListTile(
//                onTap: (){
//                  Navigator.of(context).pop();
//                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Demo1()));
//                },
//                leading: Icon(item.icon, color: Colors.white, size: 40,),
//                title: Text(item.title,
//                  style: TextStyle(
//                      fontSize: 14,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.white
//                  ),
//                ),
//              );
//            }).toList(),
//          ),

          Spacer(),

          ListTile(
            onTap: (){},
            leading: Icon(Icons.settings, color: Colors.white, size: 20,),
            title: Text('Settings',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white
                )),),
          ListTile(
            leading: Icon(Icons.headset_mic, color: Colors.white, size: 20,),
            title: Text('Support',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white
                )),),
        ],
      ),
    );
  }
}


class MenuItem{
  String title;
  IconData icon;

  MenuItem(this.icon, this.title);
}


//menu page
class ZoomScaffold extends StatefulWidget {

  final Widget menuScreen;
  final Layout contentScreen;

  ZoomScaffold({
    this.menuScreen,
    this.contentScreen,
  });

  @override
  _ZoomScaffoldState createState() => new _ZoomScaffoldState();
}

class _ZoomScaffoldState extends State<ZoomScaffold> with TickerProviderStateMixin {

  MenuController menuController;
  Curve scaleDownCurve = new Interval(0.0, 0.3, curve: Curves.easeOut);
  Curve scaleUpCurve = new Interval(0.0, 1.0, curve: Curves.easeOut);
  Curve slideOutCurve = new Interval(0.0, 1.0, curve: Curves.easeOut);
  Curve slideInCurve = new Interval(0.0, 1.0, curve: Curves.easeOut);

  @override
  void initState() {
    super.initState();

    menuController = new MenuController(
      vsync: this,
    )
      ..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    menuController.dispose();
    super.dispose();
  }

  createContentDisplay() {
    return zoomAndSlideContent(
        new Container(
          child: new Scaffold(
            backgroundColor: Colors.transparent,
            appBar: new AppBar(
              backgroundColor: Colors.grey[200],
              elevation: 0.0,
              leading: new IconButton(
                  icon: new Icon(Icons.menu, color: Colors.black,),
                  onPressed: () {
                    menuController.toggle();
                  }
              ),
              actions: <Widget>[
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.access_time, color: Colors.grey,),
                )
              ],
            ),
            body: widget.contentScreen.contentBuilder(context),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: 0,
              items: [
                BottomNavigationBarItem(
                    title: Text(''),
                    icon: Icon(Icons.home, color: Colors.grey,)
                ),
                BottomNavigationBarItem(
                    title: Text(''),
                    icon: Icon(Icons.shopping_basket, color: Colors.grey)
                ),
                BottomNavigationBarItem(
                    title: Text(''),
                    icon: Icon(Icons.shopping_cart, color: Colors.grey)
                ),BottomNavigationBarItem(
                    title: Text(''),
                    icon: Icon(Icons.person, color: Colors.grey)
                ),
              ],
            ),
          ),
        )
    );
  }

  zoomAndSlideContent(Widget content) {
    var slidePercent, scalePercent;
    switch (menuController.state) {
      case MenuState.closed:
        slidePercent = 0.0;
        scalePercent = 0.0;
        break;
      case MenuState.open:
        slidePercent = 1.0;
        scalePercent = 1.0;
        break;
      case MenuState.opening:
        slidePercent = slideOutCurve.transform(menuController.percentOpen);
        scalePercent = scaleDownCurve.transform(menuController.percentOpen);
        break;
      case MenuState.closing:
        slidePercent = slideInCurve.transform(menuController.percentOpen);
        scalePercent = scaleUpCurve.transform(menuController.percentOpen);
        break;
    }

    final slideAmount = 275.0 * slidePercent;
    final contentScale = 1.0 - (0.2 * scalePercent);
    final cornerRadius = 16.0 * menuController.percentOpen;

    return new Transform(
      transform: new Matrix4
          .translationValues(slideAmount, 0.0, 0.0)
        ..scale(contentScale, contentScale),
      alignment: Alignment.centerLeft,
      child: new Container(
        decoration: new BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Colors.black12,
              offset: const Offset(0.0, 5.0),
              blurRadius: 15.0,
              spreadRadius: 10.0,
            ),
          ],
        ),
        child: new ClipRRect(
            borderRadius: new BorderRadius.circular(cornerRadius),
            child: content
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(child: Scaffold(body: widget.menuScreen,),),
        createContentDisplay()
      ],
    );
  }
}

class ZoomScaffoldMenuController extends StatefulWidget {

  final ZoomScaffoldBuilder builder;

  ZoomScaffoldMenuController({
    this.builder,
  });

  @override
  ZoomScaffoldMenuControllerState createState() {
    return new ZoomScaffoldMenuControllerState();
  }
}

class ZoomScaffoldMenuControllerState extends State<ZoomScaffoldMenuController> {

  MenuController menuController;

  @override
  void initState() {
    super.initState();

    menuController = getMenuController(context);
    menuController.addListener(_onMenuControllerChange);
  }

  @override
  void dispose() {
    menuController.removeListener(_onMenuControllerChange);
    super.dispose();
  }

  getMenuController(BuildContext context) {
    final scaffoldState = context.ancestorStateOfType(
        new TypeMatcher<_ZoomScaffoldState>()
    ) as _ZoomScaffoldState;
    return scaffoldState.menuController;
  }

  _onMenuControllerChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, getMenuController(context));
  }

}

typedef Widget ZoomScaffoldBuilder(
    BuildContext context,
    MenuController menuController
    );

class Layout {
  final WidgetBuilder contentBuilder;

  Layout({
    this.contentBuilder,
  });
}

class MenuController extends ChangeNotifier {
  final TickerProvider vsync;
  final AnimationController _animationController;
  MenuState state = MenuState.closed;

  MenuController({
    this.vsync,
  }) : _animationController = new AnimationController(vsync: vsync) {
    _animationController
      ..duration = const Duration(milliseconds: 250)
      ..addListener(() {
        notifyListeners();
      })
      ..addStatusListener((AnimationStatus status) {
        switch (status) {
          case AnimationStatus.forward:
            state = MenuState.opening;
            break;
          case AnimationStatus.reverse:
            state = MenuState.closing;
            break;
          case AnimationStatus.completed:
            state = MenuState.open;
            break;
          case AnimationStatus.dismissed:
            state = MenuState.closed;
            break;
        }
        notifyListeners();
      });
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  get percentOpen {
    return _animationController.value;
  }

  open() {
    _animationController.forward();
  }

  close() {
    _animationController.reverse();
  }

  toggle() {
    if (state == MenuState.open) {
      close();
    } else if (state == MenuState.closed) {
      open();
    }
  }
}

enum MenuState {
  closed,
  opening,
  open,
  closing,
}

