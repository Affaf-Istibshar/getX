import 'package:get/get.dart';

class NotifyController extends GetxController{
  RxBool notifications = false.obs;
  setNotifications (bool value){
   notifications.value = value;
  }
}