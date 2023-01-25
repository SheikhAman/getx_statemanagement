import'package:get/get.dart';

class CounterController extends GetxController{

  // we can use like this in getX initialize variable with value
  // obs makes the value observable/reactive. Obs return Rx types
   RxInt counter = 0.obs;

   incrementCounter(){
      counter++;
      print(counter);
   }









}