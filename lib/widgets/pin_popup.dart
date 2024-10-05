import 'package:flutter/material.dart';
import 'package:mobile_chat_flutter/widgets/form.dart';


class PinPopupWidget extends StatelessWidget {
  var codePinController;
  var onPressed;
  String message;
  PinPopupWidget({super.key, required this.codePinController, required this.onPressed, this.message = ''});
  final pin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.white,
        child: Container(
          width: 85,
          height: 30,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      message,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Calibri",
                        fontSize: 12,
                        color: Color.fromARGB(255, 83, 83, 83),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    getTextFormField(controller: pin, hintName: '',),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 60,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(border: Border.all(color: Colors.white12, width: .75)),
                      child: Text(
                        'Annuler',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: onPressed,
                    child: Container(
                      alignment: Alignment.center,
                      width: 60,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.red, border: Border.all(color: Colors.red, width: .5)),
                      child: Text(
                        'Confirmer',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
