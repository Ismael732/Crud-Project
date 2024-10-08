import 'package:crud/components/user_tile.dart';
import 'package:crud/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:crud/provider/users.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Usuários'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.user_form);
                },
                icon: const Icon(Icons.add))
          ],
        ),
        body: ListView.builder(
            itemCount: users.count,
            itemBuilder: (ctx, i) => UserTile(users.byIndex(i))));
  }
}
