import 'package:flutter/material.dart';
import 'package:simple_bloc_app/blocs/common/bloc_provider.dart';
import 'package:simple_bloc_app/blocs/main/main_bloc.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final MainBloc bloc = BlocProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("My first BLoC app"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
              stream: bloc.outCounter,
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                return Text(
                  "${snapshot.data ?? 0}",
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
            InkWell(
              child: Text("Checkout next screen",
                  style: TextStyle(color: Colors.blue)),
              onTap: () => bloc.onGoToNextScreenButton(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // use either event stream or simple method call
        onPressed: () => bloc.onIncrementButton(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
