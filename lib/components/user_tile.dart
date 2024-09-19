import 'package:crud/models/user.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final User user;

  UserTile(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl!.isEmpty
        ? const CircleAvatar(
      child:Icon(Icons.person),
    )
  : CircleAvatar(
      backgroundImage: NetworkImage(user.avatarUrl!),
    );
    return ListTile(
    leading: avatar,
    title: Text(user.name!),
    subtitle: Text(user.email!),
    trailing: SizedBox(
      width: 100,
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
              color: Colors.orange,
          ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                  color: Colors.red)
        ],
      ),
    ));
  }
}










