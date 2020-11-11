import 'package:flutter/material.dart';
import 'package:loginui/exercise/exercise.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ExerciseList extends StatelessWidget {
  
final List<Exercise> availableList;

ExerciseList({this.availableList});

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     height: 250.0,
  //     child: ListView.builder(
  //       itemBuilder: (ctx, index) {
  //         return Container(
  //           height: 200.0,
  //           width: 200.0,
  //           margin: EdgeInsets.all(8.0),
  //           child: Card(
  //             elevation: 6.0,
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.spaceAround,
  //               children: <Widget>[
  //                 Text(availableList[index].name),
  //                 Container(
  //                   height: 120.0,
  //                   child: Image.asset(
  //                     availableList[index].imageUrl,
  //                     fit: BoxFit.cover,
  //                   ),
  //                 ),
  //                 Text("Duration: ${availableList[index].duration}"),
  //               ],
  //             ),
  //           ),
  //         );
  //       },
  //       itemCount: availableList.length,
  //       scrollDirection: Axis.horizontal,
  //     ),
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return Container(
      //main contanier
      width: double.infinity,
      height: 350.0,
      child: Swiper(
        //swiper container begins
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.only(top: 0),
            height: 300.0,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 10.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    availableList[index].imageUrl,
                    fit: BoxFit.cover,
                    height: 335,
                  ),
                ],
              ),
            ),
          );
        },
        autoplay: false,
        itemCount: availableList.length,
        scale: 0.5,
        viewportFraction: 0.6,
      ),
    );
  }
}
