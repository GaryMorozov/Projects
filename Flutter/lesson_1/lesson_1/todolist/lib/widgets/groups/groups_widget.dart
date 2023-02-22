import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

class GroupsWidget extends StatelessWidget {
  const GroupsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Группы'),
      ),
      body: const _GroupList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _GroupList extends StatefulWidget {
  const _GroupList({Key? key}) : super(key: key);

  @override
  State<_GroupList> createState() => _GroupListState();
}

class _GroupListState extends State<_GroupList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 100,
        separatorBuilder: (BuildContext context, int index) {
          return _GroupListRowWidget(
            indexInList: index,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return const Divider(height: 1);
        });
  }
}

class _GroupListRowWidget extends StatelessWidget {
  final int indexInList;
  const _GroupListRowWidget({
    Key? key,
    required this.indexInList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Привет!'),
      trailing: Icon(Icons.chevron_right),
    );
  }
}
