import 'package:bmi_calculator/RoundButton.dart';
import 'result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard.dart';
import 'iconwidget.dart';
import 'constant.dart';
import 'brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}



enum genderNum { male, female }
int weight = 75;
int age = 19;
int height = 180;
genderNum? selectGender;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable_Container(
                    onPress: () {
                      setState(() {
                        selectGender = genderNum.male;
                        print(selectGender);
                      });
                    },
                    colour: selectGender == genderNum.male
                        ? KactiveCardColour
                        : KinactiveCardColour,
                    childCard: iconWidget(
                      Icongender: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable_Container(
                    onPress: () {
                      setState(() {
                        selectGender = genderNum.female;
                        print(selectGender);
                      });
                    },
                    colour: (selectGender == genderNum.female)
                        ? KactiveCardColour
                        : KinactiveCardColour,
                    childCard: iconWidget(
                      Icongender: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusable_Container(
              colour: KactiveCardColour,
              childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT ",
                      style: Ktextstyle,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: KheavyFontStyle,
                        ),
                        Text(
                          "Cm",
                          style: Ktextstyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xff8D8e98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                            print(height);
                          });
                        },
                        min: 120,
                        max: 220,
                      ),
                    )
                  ]),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable_Container(
                    colour: KactiveCardColour,
                    childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "WEIGHT",
                            style: Ktextstyle,
                          ),
                          Text(
                            weight.toString(),
                            style: KheavyFontStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                icon: FontAwesomeIcons.minus,
                                Pressed: () {
                                  setState(() {
                                    weight -= 1;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundButton(
                                icon: FontAwesomeIcons.add,
                                Pressed: () {
                                  setState(() {
                                    weight += 1;
                                  });
                                },
                              ),
                            ],
                          ),
                        ]),
                  ),
                ),
                Expanded(
                  child: Reusable_Container(
                      colour: KactiveCardColour,
                      childCard: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "AGE",
                              style: Ktextstyle,
                            ),
                            Text(
                              age.toString(),
                              style: KheavyFontStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundButton(
                                  icon: FontAwesomeIcons.minus,
                                  Pressed: () {
                                    setState(() {
                                      age -= 1;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                RoundButton(
                                  icon: FontAwesomeIcons.add,
                                  Pressed: () {
                                    setState(() {
                                      age += 1;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ])),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              brain calc = brain(height: height,weight: weight);

              Navigator.push(
                  context,
                  (MaterialPageRoute(builder: (context) {
                    return resultpage(
                      Finalbmi: calc.BMIcalculation(),
                      bmiResult: calc.getResults(),
                      FinalresultSenstence: calc.getResultinSenstence(),


                    );
                  })));
            },
            child: Container(
              color: KbottomCardColour,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: Kbottomheight,
              child: Center(
                  child: Text(
                "CALCUlATE",
                style: KLargeButtonTextStyle
              )),
            ),
          )
        ],
      ),
    );
  }
}
