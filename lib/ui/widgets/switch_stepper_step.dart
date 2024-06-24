import 'package:flutter/material.dart';

class SwitchStepperStep {
  /// TODO: This method gotta be in Riverpod Provider?
  Step buildStep({
    required String title,
    String? content,
    required bool isCompleted,
  }) {
    return Step(
      title: Text(title),
      isActive: isCompleted ? true : false,
      state: StepState.complete,
      stepStyle: StepStyle(color: isCompleted ? Colors.red : Colors.grey),
      content: Container(
        // color: Colors.red.withOpacity(0.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (content != null) Text(content),
          ],
        ),
      ),
    );
  }
}
