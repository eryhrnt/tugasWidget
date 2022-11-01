import 'package:flutter/material.dart';
import 'package:tugas_widget/widget/inherited_state.dart';

class Increment extends StatelessWidget {
  const Increment({super.key, required MaterialApp child});

  @override
  Widget build(BuildContext context) {
    return AddIncrement(child: IncrementPage());
  }
}

class IncrementPage extends StatelessWidget {
  const IncrementPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _parent = AddIncrement.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited Increment'),
      ),
      body: ValueListenableBuilder<int>(
        valueListenable: _parent.counter,
        builder: (context, value, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        _parent.counter.value++;
                      },
                      tooltip: 'increment',
                      child: const Icon(Icons.add),
                    ),
                    Text(
                      _parent.counter.value.toString(),
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        _parent.counter.value--;
                      },
                      tooltip: 'decrement',
                      child: const Icon(Icons.remove),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
