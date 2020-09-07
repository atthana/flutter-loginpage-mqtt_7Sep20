//External
import 'package:flutter/material.dart';

/// This class is used to make it clear in code that a loading animation is
/// being started or stopped.
class LoadingIndicator {
  static start(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(10),
            height: 80.0,
            width: 80.0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
              ],
            ),
          ),
        );
      },
    );
  }

  static stop(BuildContext context) {
    Navigator.of(context).pop();
  }
}
