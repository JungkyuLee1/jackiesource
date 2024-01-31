import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ScrollNotifController extends GetxController {
  var scrollMessage = ''.obs;
  var scrollNotificationMessage = ''.obs;
  late ScrollController scrollController;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    scrollListener();
  }

  void scrollListener() {
    scrollController.addListener(() {
      if (scrollController.offset>=
              scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {
        scrollMessage.value = 'Reached at Bottom';
      }

      if (scrollController.offset <=
              scrollController.position.minScrollExtent &&
          !scrollController.position.outOfRange) {
        scrollMessage.value = 'Reached at Top';
      }
    });
  }

  void scrollUp() {
    scrollController.animateTo(scrollController.offset - 50,
        duration: Duration(milliseconds: 500), curve: Curves.linear);
    // scrollController.jumpTo(scrollController.offset-50);
  }

  void scrollDown() {
    scrollController.animateTo(scrollController.offset + 50,
        duration: Duration(milliseconds: 500), curve: Curves.linear);
    // scrollController.jumpTo(scrollController.offset+50);
  }

  void start() {
    scrollNotificationMessage.value = 'Started';
  }

  void updateScroll() {
    scrollNotificationMessage.value = 'Updated';
  }

  void end() {
    scrollNotificationMessage.value = 'Ended';
  }
}
