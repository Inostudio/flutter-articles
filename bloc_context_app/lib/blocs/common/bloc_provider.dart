import 'package:flutter/material.dart';
import 'package:simple_bloc_app/blocs/common/bloc_base.dart';
import 'package:simple_bloc_app/blocs/common/bloc_context_base.dart';

class BlocProvider<T extends BlocBase> extends StatefulWidget {
  BlocProvider(
      {@required this.child,
      @required this.bloc,
      @required this.blocContext,
      Key key})
      : super(key: key);

  final T bloc;
  final Widget child;
  final BlocContextBase<T> blocContext;

  @override
  _BlocProviderState<T> createState() => _BlocProviderState<T>();

  static T of<T extends BlocBase>(BuildContext context) {
    final Type type = _typeOf<BlocProvider<T>>();
    final BlocProvider<T> provider = context.ancestorWidgetOfExactType(type);
    return provider.bloc;
  }

  static Type _typeOf<T>() => T;
}

class _BlocProviderState<T> extends State<BlocProvider<BlocBase>> {
  @override
  void initState() {
    super.initState();
    widget.blocContext.subscribe(widget.bloc, context);
  }

  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
