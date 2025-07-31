import 'package:flutter/material.dart';

class MyPopUpMenu extends StatelessWidget {
  final List<PopupMenuItem> items;
  final Widget buttonChild;
  final ValueChanged<int>? onItemSelected;
  final String? tooltip;
  const MyPopUpMenu(
      {Key? key,
      required this.items,
      required this.buttonChild,
      this.onItemSelected,
      this.tooltip})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      tooltip: tooltip,
      child: buttonChild,
      onSelected: (value) {
        onItemSelected?.call(value as int);
      },
      itemBuilder: (context) {
        return items /*List.generate(items.length, (index) {
          return items[index]??PopupMenuItem(
            mouseCursor: MaterialStateMouseCursor.clickable,
            child: Text('button no $index'),
          );
        })*/
            ;
      },
    );
  }
}
