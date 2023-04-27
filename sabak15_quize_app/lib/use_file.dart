import 'package:sabak15_quize_app/model.dart';

class UseQuize{
  int index = 0; // QuizeModelди башкаруучу озгормо

  List <QuizeModel> surooJoop = [ // 
QuizeModel(suroo: 'Кыргызстанда 7 область барбы?', joop: true),
QuizeModel(suroo: 'Сулайман Тоо Жалал-Абад облусундабы?', joop: false),
QuizeModel(suroo: 'Маймыл бакка чыга алабы?', joop: true),
QuizeModel(suroo: 'Google корпорациасынын кенсеси Кыргызстанда жайгашканбы?', joop: false),
QuizeModel(suroo: 'Балык сууда жашайбы?', joop: true),
QuizeModel(suroo: 'Кыргызстандын борбор шаары Баткен шаарыбы?', joop: false),
  ];

String surooAluu(){ // суроолду алган функция бердик
return surooJoop[index].suroo;
}
bool joopAluu(){
  return surooJoop[index].joop;
}
  void nextQuestion(){
    if (index<= surooJoop.length){ // QuizeModelдин узундугунун озгорушуно функция
   index++; // узундугунун озгорушуно +1 чонойот
    }
  }
bool isFinished(){
  if(surooJoop[index]==surooJoop.last){
    return true;
  }else{
  return false;
  }
}
void indexZero(){
  index = 0;
}
}