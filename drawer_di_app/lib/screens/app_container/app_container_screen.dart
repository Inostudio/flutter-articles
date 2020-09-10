import 'package:flutter/material.dart';

class AppContainerContent {
  final Widget firstTab;
  final Widget secondTab;
  final Widget thirdTab;

  AppContainerContent(
      {@required this.firstTab,
      @required this.secondTab,
      @required this.thirdTab});
}

class AppContainerScreen extends StatefulWidget {
  final Widget _menu;
  final AppContainerContent _content;

  AppContainerScreen(
      {@required Widget menu, @required AppContainerContent content})
      : _menu = menu,
        _content = content;

  @override
  State<StatefulWidget> createState() => _AppContainerScreenState();
}

class _AppContainerScreenState extends State<AppContainerScreen> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> _bottomBarItems = [];
  List<Widget> _tabWidgets = [];

  @override
  void initState() {
    super.initState();

    _tabWidgets.add(widget._content.firstTab);
    _bottomBarItems.add(
        BottomNavigationBarItem(icon: Icon(Icons.map), title: Text("First")));

    _tabWidgets.add(widget._content.secondTab);
    _bottomBarItems.add(BottomNavigationBarItem(
        icon: Icon(Icons.extension), title: Text("Second")));

    _tabWidgets.add(widget._content.thirdTab);
    _bottomBarItems.add(BottomNavigationBarItem(
        icon: Icon(Icons.accessibility), title: Text("Third")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Drawer App"),
      ),
      body: SafeArea(
        child: _tabWidgets[_selectedIndex],
      ),
      drawer: Drawer(
        child: widget._menu,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomBarItems,
        currentIndex: _selectedIndex,
        onTap: (int value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
