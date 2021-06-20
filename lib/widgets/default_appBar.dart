import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    Key key,
    @required this.titleText,
    this.action,
  }) : super(key: key);

  final String titleText;
  final action;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(titleText, style: TextStyle(color: Colors.white)),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: action);
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
