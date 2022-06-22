import 'dart:math';

class brain {
  brain({this.weight,this.height});
  final height;
  final weight;
  double _bmi=0;
String BMIcalculation (){

  _bmi =weight/pow(height/100, 2);
  print(_bmi);

  return _bmi.toStringAsFixed(1);

}
String getResults(){
  if(_bmi> 25)
    return "Over weight ";
  else if (_bmi>18.5)
    return " Normal";
  else
    return " Week";
}
String getResultinSenstence ()
{
  if(_bmi> 25)
    return "You have a higher than normal weight .try  to Excerise everyday";
  else if (_bmi>18.5)
    return " You have a normal body weight. Good job!";
  else
    return " You have a  lower than normal weight. You can eat a bit more!";
}
}
