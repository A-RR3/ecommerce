import 'package:flutter/material.dart';

loadingState(bool key, Widget body) => key
    ? const Center(
        child: CircularProgressIndicator(),
      )
    : body;
