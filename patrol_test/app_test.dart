import 'package:casual_app/index.dart';
import 'package:casual_app/main.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'App launches',
        ($) async {
      await $.pumpWidgetAndSettle(const MyApp());

      await $(#comment).tap();
      await $(#CommentScreen).waitUntilVisible();
      await $(ListTile).at(4).scrollTo().tap();
      await $(#snackBar).waitUntilVisible();

      await $(#quote).tap();
      await $(#QuoteScreen).waitUntilVisible();
      await $(ListTile).at(4).scrollTo().tap();
      await $(#snackBar).waitUntilVisible();

      await $(#recipe).tap();
      await $(#RecipeScreen).waitUntilVisible();
      await $(ListTile).at(1).scrollTo().tap();
      await $(#snackBar).waitUntilVisible();


        },
  );
}