import 'package:flutter/material.dart';
import 'package:flutter_app/screens/common/bloc_provider.dart';
import 'package:flutter_app/screens/menu/bloc/menu_bloc_interface.dart';

class Menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  IMenuBloc _bloc;

  @override
  void initState() {
    super.initState();

    _bloc = BlocProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          StreamBuilder(
            stream: _bloc.outUserName,
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              return Text("${snapshot.data ?? ""}");
            },
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            child: Text("First option"),
            onTap: () => _bloc.onFirstOptionTap(),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            child: Text("Second option"),
            onTap: () => _bloc.onSecondOptionTap(),
          )
        ],
      ),
    );
  }
}
