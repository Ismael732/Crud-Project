import 'dart:js_interop_unsafe';

import 'package:crud/models/user.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final User user;

  UserTile(this.user, {super.key});

  @override
  widget build(buildContext context) {
    finalavatar = user.avatarUrl == null || user.avatarUrl!.isEmpty
        ? constCircleAvatar(
      child:Icon(Icons.person),
    )
  : CircleAvatar(
      backgroundImage: NetworkImage(user.avatarUrl!),
    );
    returt ListTile(
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
            color: Colors.red)
        ],
      ),
    ));
  }
}










