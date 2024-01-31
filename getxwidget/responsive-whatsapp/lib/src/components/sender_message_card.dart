import 'package:flutter/material.dart';
import 'package:responsive_whatsapp/src/common/values/app_color.dart';
import 'package:get/get.dart';

class SenderMessageCard extends StatelessWidget {
  const SenderMessageCard({required this.message, required this.date, Key? key}) : super(key: key);

  final String message;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: Get.width-45
        ),
        child: Card(
          elevation: 1,
          color: senderMessageColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10,
                    right: 30,
                    top: 5,
                    bottom: 20
                ),
                child: Text(message, style: TextStyle(fontSize: 16),),
              ),
              Positioned(
                  bottom: 1,
                  right: 10,
                  child: Row(
                    children: [
                      Text(date, style: TextStyle(fontSize: 12, color: Colors.white60),),
                      SizedBox(width: 5,),
                      Icon(Icons.done_all, size: 15, color: Colors.white60,)
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
