import 'package:crud/components/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:teste/data/dummy_users.dart';

class UserList extends StateLessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    Map users = {...DUMMY_USERS};
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuários'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i))));
  }
}