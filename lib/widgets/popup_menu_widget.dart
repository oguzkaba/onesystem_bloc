// ignore_for_file: avoid_renaming_method_parameters

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContextMenuAction extends PopupMenuEntry<int> {
  @override
  double height = 100;

  ContextMenuAction({Key? key}) : super(key: key);

  @override
  bool represents(int? n) => n == 1 || n == -1;

  @override
  ContextMenuActionState createState() => ContextMenuActionState();
}

class ContextMenuActionState extends State<ContextMenuAction> {
  void _view() {
    Navigator.pop<int>(context, 1);
  }

  void _download() {
    Navigator.pop<int>(context, -1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
            leading: const Icon(Icons.visibility),
            title: const Text('View'),
            onTap: _view,
            trailing: const Icon(Icons.chevron_right)),
        ListTile(
            leading: const Icon(Icons.download),
            title: const Text('Download'),
            onTap: _download,
            trailing: const Icon(Icons.chevron_right))
      ],
    );
  }
}

// ignore: must_be_immutable
class ContextSubMenuAction extends PopupMenuEntry<int> {
  @override
  double height = 100;

  ContextSubMenuAction({Key? key}) : super(key: key);

  @override
  bool represents(int? n) => n == 1 || n == -1;

  @override
  ContextSubMenuActionState createState() => ContextSubMenuActionState();
}

class ContextSubMenuActionState extends State<ContextSubMenuAction> {
  void _view() {
    Navigator.pop<int>(context, 1);
  }

  void _download() {
    Navigator.pop<int>(context, -1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text('View'),
        const Divider(),
        ListTile(title: const Text('PR-Paint Report'), onTap: _view),
        ListTile(title: const Text('WL-WeldLog'), onTap: _download),
        ListTile(title: const Text('FR-Final Report'), onTap: _download)
      ],
    );
  }
}

// ignore: must_be_immutable
class ContextSubMenuAction1 extends PopupMenuEntry<int> {
  @override
  double height = 100;

  ContextSubMenuAction1({Key? key}) : super(key: key);

  @override
  bool represents(int? n) => n == 1 || n == -1;

  @override
  ContextSubMenuAction1State createState() => ContextSubMenuAction1State();
}

class ContextSubMenuAction1State extends State<ContextSubMenuAction1> {
  void _view() {
    Navigator.pop<int>(context, 1);
  }

  void _download() {
    Navigator.pop<int>(context, -1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text('Download'),
        const Divider(),
        ListTile(title: const Text('PR-Paint Report'), onTap: _view),
        ListTile(title: const Text('WL-WeldLog'), onTap: _download),
        ListTile(title: const Text('FR-Final Report'), onTap: _download)
      ],
    );
  }
}
