import 'package:todolist/widgets/group_form/group_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:todolist/widgets/groups/groups_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/groups': (context) => const GroupsWidget(),
        '/groups/form': (context) => const GroupFormWidget(),
      },
      initialRoute: '/groups',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
