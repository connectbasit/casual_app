import 'package:casual_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'App launches',
        ($) async {
      await $.pumpWidgetAndSettle(const MyApp());

      expect($(MaterialApp), findsOneWidget);
    },
  );
}