import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String headerTitle;
  final bool show;
  final Widget leadingChild;
  final Widget actionChild;
  final VoidCallback leading;
  final VoidCallback? action; 
  final EdgeInsetsGeometry? padding;
  final Color? color;
   DefaultAppBar({
    required this.headerTitle, 
    required this.show, 
    required this.leadingChild,
    required this.leading, 
    required this.actionChild, 
    this.action, 
    this.color = Colors.black,
    this.padding,
    super.key}): assert(padding == null || padding.isNonNegative);
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60.0), // Set the height of the AppBar
      child: Container(
        color: color,
        padding:padding, // Set the padding for the AppBar
        child: AppBar(
          surfaceTintColor: Colors.black,
          backgroundColor: color,
          centerTitle: true,
          leadingWidth: 65,
          leading: GestureDetector(
            onTap: () => leading(),
            child: leadingChild,
          ),
          title:  Text(
            !show ? '' : headerTitle,
            style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            GestureDetector(
              onTap: () => action!(),
              child: actionChild
            )
          ]
        )
      )
    );
  }
}