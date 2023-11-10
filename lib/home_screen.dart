
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstatemanagment/login_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //initialize controller Counter example
  // final CounterController controller = Get.put(CounterController());
  //dependency injection
  // final SliderController sliderController = Get.put(SliderController());
  // double opacity = .4;
  // final NotifyController notifyController = Get.put(NotifyController());
  // bool notifications = false;
  // List<String> fruitsList = ['apple', 'mangoes', 'banana', 'peach'];
  // List<String> tempFruitList = [];
  // final FavController favController = Get.put(FavController());
  // ImageController controller = Get.put(ImageController());
  final LoginController controller = Get.put(LoginController());
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Getx state managment'),
        ),
        body:
           Padding(padding: EdgeInsets.symmetric(horizontal: 20),
           child:  Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               TextFormField(
                 controller: controller.emailController.value,
                 decoration: const InputDecoration(
                   hintText: 'Email',
                 ),
               ),
               TextFormField(
                 controller: controller.passwordController.value,
                 decoration: const InputDecoration(
                   hintText: 'Password',
                 ),
               ),
               const SizedBox(height: 50,),
               Obx(() {
                 return InkWell(
                   onTap: (){
                     controller.loginApi();
                   },
                   child: controller.loading.value ? CircularProgressIndicator() : Container(
                     height: 45,
                     color: Colors.green,
                     child: const Center(
                       child: Text('Login'),
                     ),
                   ),
                 );
               })
             ],
           ),
  ) // Obx(() {
        //   return Column(
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       CircleAvatar(
        //           radius: 40,
        //           backgroundImage: controller.imagePath.isNotEmpty
        //               ? FileImage(File(controller.imagePath.toString()))
        //               : null),
        //       TextButton(
        //           onPressed: () {
        //             controller.getImage();
        //           },
        //           child: Text(
        //             'Pick Image'
        //           ))
        //     ],
        //   );
        // })
    );
    // // ListView.builder(
    // //     itemCount: favController.fruitsList.length,
    // //     itemBuilder: (context, index) {
    // //       return Card(
    // //         child: ListTile(
    // //             onTap: () {
    // //               if (favController.tempList.contains(
    // //                   favController.fruitsList[index].toString())) {
    // //                 favController.tempList
    // //                     .remove(favController.fruitsList[index].toString());
    // //               } else {
    // //                 favController.tempList
    // //                     .add(favController.fruitsList[index].toString());
    // //               }
    // //               // if(tempFruitList.contains(fruitsList[index].toString())){
    // //               //   tempFruitList.remove(fruitsList[index].toString());
    // //               // }
    // //               // else{
    // //               //   tempFruitList.add(fruitsList[index].toString());
    // //               // }
    // //               //   tempFruitList.add(fruitsList[index].toString());
    // //               // setState(() {});
    // //             },
    // //             title: Text(favController.fruitsList[index].toString()),
    // //             trailing: Obx(() {
    // //               return Icon(
    // //                 Icons.favorite,
    // //                 color: favController.tempList.contains(
    // //                         favController.fruitsList[index].toString())
    // //                     ? Colors.redAccent
    // //                     : Colors.grey,
    // //               );
    // //             })),
    // //       );
    // //     })
    // // Column(
    // //   children: [
    // //
    // //     // Row(
    // //     //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    // //     //   children: [
    // //     //     const Text('Notification'),
    // //     //     Obx(() {
    // //     //       return Switch(
    // //     //         value: notifyController.notifications.value,
    // //     //         onChanged: (value) {
    // //     //           notifyController.setNotifications(value);
    // //     //           // notifications = value;
    // //     //           // setState(() {});
    // //     //         },
    // //     //       );
    // //     //     })
    // //     //   ],
    // //     // )
    // //     // Obx(() => Container(
    // //     //       height: 200,
    // //     //       width: 250,
    // //     //       color: Colors.amberAccent
    // //     //           .withOpacity(sliderController.opacity.value),
    // //     //     )),
    // //     // Obx(() => Slider(
    // //     //     value: sliderController.opacity.value,
    // //     //     onChanged: (value) {
    // //     //       // print(value);
    // //     //       // opacity = value;
    // //     //       // setState(() {});
    // //     //       sliderController.setOpacity(value);
    // //     //     })),
    // //   ],
    // // ),
    // // (
    // // appBar: AppBar(
    // //   title: const Text('GetX State Managment'),
    // // ),
    // // body:
    // // // Column(
    // // //   mainAxisAlignment: MainAxisAlignment.center,
    // // //   children: [
    // // //     Center(
    // // //       //OBX function to observe or listen change
    // // //       child: Obx((){
    // // //         print('rebuild');
    // // //         return Text(
    // // //           controller.counter.toString(),
    // // //           style: const TextStyle(fontSize: 60),
    // // //         );
    // // //       })
    // // //     ),
    // // //     // Expanded(
    // // //     //     child: ListView.builder(
    // // //     //         itemCount: 10000,
    // // //     //         itemBuilder: (context, index) {
    // // //     //           return ListTile(
    // // //     //             title: Text(index.toString()),
    // // //     //           );
    // // //     //         }))
    // // //   ],
    // // // ),
    // // floatingActionButton: FloatingActionButton(
    // //   onPressed: () {
    // //    controller.incrementCounter();
    // //   },
    // // ),
    // );
  }
}
