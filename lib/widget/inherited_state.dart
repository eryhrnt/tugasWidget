import 'package:flutter/material.dart';

class AddIncrement extends InheritedWidget {
  AddIncrement({
    super.key,
    required super.child,
  });

  final ValueNotifier<int> counter = ValueNotifier<int>(0);

  static AddIncrement of(BuildContext context) {
    final AddIncrement? result =
        context.dependOnInheritedWidgetOfExactType<AddIncrement>();
    assert(result != null, 'No Increment');
    return result!;
  }

  // void _addNumber() {
  //   counter.value++;
  //   print('plus');
  // }

  @override
  bool updateShouldNotify(AddIncrement oldWidget) => true;
}