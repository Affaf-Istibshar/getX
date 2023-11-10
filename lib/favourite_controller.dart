import 'package:get/get.dart';

class FavController extends GetxController{
    RxList<String> fruitsList = ['apple', 'mangoes', 'banana', 'peach'].obs;
    RxList tempList = [].obs;
    addToFav(String value){
     tempList.add(value);
    }
   removeToFav(String value){
     tempList.remove(value);
    }
}