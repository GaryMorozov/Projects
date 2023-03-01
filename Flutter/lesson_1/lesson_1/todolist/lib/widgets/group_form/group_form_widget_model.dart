import 'package:flutter/material.dart';

class GroupFormWidgetModel {}

class Name extends InheritedWidget {
  const Name({super.key, required this.child}) : super(child: child);

  final Widget child;

  static Name? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Name>();
  }

  @override
  bool updateShouldNotify(Name oldWidget) {
    return true;
  }
}
}
