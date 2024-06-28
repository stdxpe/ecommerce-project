import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter_slidable/flutter_slidable.dart";

class DismissibleDeleteWidget extends StatelessWidget {
  final Widget child;
  final String? uniqueKey;
  const DismissibleDeleteWidget({
    required this.child,
    this.uniqueKey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      direction: Axis.horizontal,
      closeOnScroll: true,
      useTextDirection: true,
      // key: ValueKey(uniqueKey),
      key: UniqueKey(),
      endActionPane: ActionPane(
        extentRatio: 0.30,
        motion: const ScrollMotion(),
        dragDismissible: false,
        dismissible: DismissiblePane(
          onDismissed: () {},
        ),
        children: [
          SlidableAction(
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
            icon: Icons.delete,
            label: 'Delete',
            autoClose: true,
            onPressed: (context) async {
              final controller = Slidable.of(context);
              var dismiss = await showDialog<bool>(
                context: context,
                builder: (context) {
                  return new CupertinoAlertDialog(
                    title: new Text('Delete'),
                    content: new Text('Item will be deleted'),
                    actions: <Widget>[
                      new CupertinoButton(
                        child: new Text('Cancel'),
                        onPressed: () => Navigator.of(context).pop(false),
                      ),
                      new CupertinoButton(
                        child: new Text('Ok'),
                        onPressed: () => Navigator.of(context).pop(true),
                      ),
                    ],
                  );
                },
              );

              if (dismiss!) {
                controller!.dismiss(
                  ResizeRequest(const Duration(milliseconds: 100), () {
                    /// TODO: Remove from the DB List
                    /// Write the code to really remove the widget from the tree.
                  }),
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
                // controller.dispose();
              }
            },
          ),
        ],
      ),
      child: child,
    );
  }
}
