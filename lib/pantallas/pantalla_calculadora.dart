import "package:flutter/material.dart";
import "package:get/get.dart";
import 'package:calculadora/controladores/calculadora_controlador.dart';
import 'package:calculadora/widgets/math_result.dart';
import 'package:calculadora/widgets/call_button.dart';

class PantallaCalculadora extends StatelessWidget{
  final calculadora = Get.put(CalculadoraControlador());

@override
Widget build(BuildContext context){
  return Scaffold(
    body: SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal:10),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            MathResults(),

            //primera fila de botones
            Row(
              mainAxisAlignment: MainAxisAlignt.center,
              children: [
                Expanded(
                  child: CalculatorButton(
                    text: 'AC',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => calculatorCtrl.resetAll();
                  ),
                ),
                Expanded(
                  child: CalculatorButton(
                    text: '+/-',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => calculatorCtrl.changeNegativePositive();
                  ),
                ),
                Expanded(
                  child: CalculatorButton(
                    text: 'DEL',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => calculatorCtrl.deleteLastEntry();
                  ),
                ),
                Expanded(
                  child: CalculatorButton(
                    text: '/',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => calculatorCtrl.selectOperation('/');
                  ),
                ),
              ],
            )
          ],
        ),
      )

      //segu 
    ),
  )
}
  
}