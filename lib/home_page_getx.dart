import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement_job/controller/counter_controller.dart';


class HomePageGetx extends StatelessWidget {
  HomePageGetx({Key? key}) : super(key: key);
final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print('Rebuilding widget');
    return Scaffold(
      appBar: AppBar(

        title: Text('GetX With Obs'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
             () {
               print('Rebuild with Obx');
               return  Text(
                 controller.counter.toString(),
                 style: Theme.of(context).textTheme.headline4,
               );
             }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
