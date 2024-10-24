import "package:flutter/material.dart";
import "package:get/get.dart";
import 'package:calculadora/controladores/calculadora_controlador.dart';
import 'package:calculadora/widgets/math_result.dart';
import 'package:calculadora/widgets/call_button.dart';

class PantallaCalculadora extends StatelessWidget {
  final calculatorCtrl = Get.put(CalculadoraControlador());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),
              MathResults(),

              //primera fila de botones
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton(
                      text: 'AC',
                      bgColor: const Color(0xffA5A5A5),
                      onPressed: () => calculatorCtrl.resetAll(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '+/-',
                      bgColor: const Color(0xffA5A5A5),
                      onPressed: () => calculatorCtrl.cambiarNegativoPositivo(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: 'DEL',
                      bgColor: const Color(0xffA5A5A5),
                      onPressed: () => calculatorCtrl.deleteLastEntry(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '/',
                      bgColor: const Color(0xffA5A5A5),
                      onPressed: () => calculatorCtrl.selectOperation('/'),
                    ),
                  ),
                ],
              ),

                // Segunda fila de botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CalculatorButton(
                    text: '7',
                    onPressed: () => calculatorCtrl.addNumber('7'),
                  ),
                ),
                Expanded(
                  child: CalculatorButton(
                    text: '8',
                    onPressed: () => calculatorCtrl.addNumber('8'),
                  ),
                ),
                Expanded(
                  child: CalculatorButton(
                    text: '9',
                    onPressed: () => calculatorCtrl.addNumber('9'),
                  ),
                ),
                Expanded(
                  child: CalculatorButton(
                    text: 'X',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => calculatorCtrl.selectOperation('X'),
                  ),
                ),
              ],
            ),

            // Tercera fila de botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CalculatorButton(
                    text: '4',
                    onPressed: () => calculatorCtrl.addNumber('4'),
                  ),
                ),
                Expanded(
                  child: CalculatorButton(
                    text: '5',
                    onPressed: () => calculatorCtrl.addNumber('5'),
                  ),
                ),
                Expanded(
                  child: CalculatorButton(
                    text: '6',
                    onPressed: () => calculatorCtrl.addNumber('6'),
                  ),
                ),
                Expanded(
                  child: CalculatorButton(
                    text: '-',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => calculatorCtrl.selectOperation('-'),
                  ),
                ),
              ],
            ),

            // Cuarta fila de botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CalculatorButton(
                    text: '1',
                    onPressed: () => calculatorCtrl.addNumber('1'),
                  ),
                ),
                Expanded(
                  child: CalculatorButton(
                    text: '2',
                    onPressed: () => calculatorCtrl.addNumber('2'),
                  ),
                ),
                Expanded(
                  child: CalculatorButton(
                    text: '3',
                    onPressed: () => calculatorCtrl.addNumber('3'),
                  ),
                ),
                Expanded(
                  child: CalculatorButton(
                    text: '+',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => calculatorCtrl.selectOperation('+'),
                  ),
                ),
              ],
            ),

            // Última fila de botones (0, ., =)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2, // Mayor espacio para el botón '0' porque es grande
                  child: CalculatorButton(
                    text: '0',
                    big: true,
                    onPressed: () => calculatorCtrl.addNumber('0'),
                  ),
                ),
                Expanded(
                  flex: 1, // Espacio para el botón '.'
                  child: CalculatorButton(
                    text: '.',
                    onPressed: () => calculatorCtrl.addDecimalPoint(),
                  ),
                ),
                Expanded(
                  flex: 1, // Espacio para el botón '='
                  child: CalculatorButton(
                    text: '=',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => calculatorCtrl.calculateResult(),
               ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
}
