import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'reusablecard.dart';
import 'brain.dart';
class resultpage extends StatelessWidget {
  resultpage({ @required this.FinalresultSenstence, @required this.bmiResult , @required this.Finalbmi});
  final String? bmiResult;
  final String? FinalresultSenstence;
  final String? Finalbmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("BMI CALCULTOR "),),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[
            Expanded(
              child: Container(

                margin: EdgeInsets.only(right:120),
                padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
                child: Text('Your Result', style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 35,),),
              ),
            ),
            Expanded(
              flex: 5,
              child: Reusable_Container(
                colour: KactiveCardColour,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 20),
                        child: Text( bmiResult.toString(), style:KResultTextStyle)),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(


                          child: Text( Finalbmi.toString() ,style: kBMITextStyle,
                    ),
                        ),
                    Expanded(

                      child: RichText(
                      text: TextSpan( text: "Normal BMI range: \n " ,style: TextStyle( color: Colors.grey ,letterSpacing: 1),
                      children: <TextSpan>[
                        TextSpan( text: "18,5 - 25 kg/m2" ,style: TextStyle(color: Colors.white,  ),)
                      ]),
                    ),),
                    Expanded(


                      child:Container(
                       // padding: EdgeInsets.only(top: 20),
                        child: Text(  FinalresultSenstence.toString(),
                            textAlign: TextAlign.center,
                            style:kBodyTextStyle),
                      ),
                    )

                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: KbottomCardColour,
                margin: EdgeInsets.only(top: 30),
                width: double.infinity,
                height: 60,
                child: Center(
                    child: Text(
                      "RE-CALCULATER YOUR BMI",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
