import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inminutes/utils/network.dart';

class AccountService {
  Future<dynamic> getProfileDetails(context) {
    final completer = Completer<dynamic>();

    HttpRequest('/customers/me', context: context, shouldPopOnError: false,
        onSuccess: (_, result) async {
      completer.complete(result['data']);
    }, onFailure: (_, result) {
      completer.complete(result['data']);

      return;
    }).send();

    return completer.future;
  }
}
