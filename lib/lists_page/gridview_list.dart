import 'package:flutter/cupertino.dart';
import 'package:learn_english_for_chilren/utils/appImage.dart';

class GridviewList {
  String name;
  String  item1;
  GridviewList({required this.name,required this.item1});
   static List<GridviewList> listGridView=[
     GridviewList(name: 'Alphabit', item1:AppImage.alphabit,
     ),
     GridviewList(name: 'Number', item1:AppImage.number,
     ),
     GridviewList(name: 'Grammar', item1:AppImage.grammar,
     ),
     GridviewList(name: 'Practice', item1:AppImage.exam,
     ),


   ];

}