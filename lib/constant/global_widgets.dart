import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
defaultBottomSheet(BuildContext context, Widget widget){
  showModalBottomSheet(
    context: context, 
    isScrollControlled: true,
    clipBehavior: Clip.antiAlias,
    builder: (BuildContext context){
      return FractionallySizedBox(
        heightFactor: 0.9,
        child:widget
      );
  });
}

loading(BuildContext context){
  showCupertinoDialog(
    context: context,
    builder: (BuildContext context) {
      return const CupertinoAlertDialog(
        content: Column(
          children: [
            CupertinoActivityIndicator(),
            SizedBox(height: 16),
            Text('Loading...'),
          ],
        ),
      );
    },
  );
}

