import 'package:flutter/material.dart';

import 'package:flutter_application_1/state_management_demo/demo/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() {
    debugPrint('1. Page 1 - CreateState Invoked');
    return _Page1State();
  }
}

class _Page1State extends State<Page1> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    debugPrint('2. Page 1 - InitState Invoked');
    setState(() {
      _counter = 0;
      debugPrint('3. Page 1 - SetState within the InitState Invoked');
    });
  }

  @override
  void didChangedependences() {
    super.didChangeDependencies();
    debugPrint('4. page 1 - DidChangeDependencies Invoked');
  }

  @override
  void didUpdateWidget(Page1 oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('5. Page 1 - DidUpdateWidget Invoked');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('6. Print 1 - Disposed Invoked');
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint('7. Page 1 - DeActivated Invoked');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('8. Print 1 - Build Invoked');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lifecycle Activity Demo - Page1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: const Text('You have clicked')),
          Text(
            _counter.toString(),
            style: const TextStyle(fontSize: 30),
          ),
          const Text('Times'),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const Page2()),
                ),
              );
            },
            child: const Text('Go To Next Page'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            debugPrint('9. Print 1 - setState within the Build Method Invoked');
            _counter++;
          });
        },
      ),
    );
  }
}
