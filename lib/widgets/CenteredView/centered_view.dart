import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CenteredView extends StatefulWidget {
  final Widget child;
  const CenteredView({Key key, this.child}) : super(key: key);
  @override
  CenteredViewState createState() => CenteredViewState(this.child);
}

class CenteredViewState extends State<CenteredView> {
  final Widget child;
  CenteredViewState(this.child);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}