import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hekiii_food_express/main.dart';

void main() {
  testWidgets('app opens directly to the storefront', (tester) async {
    await tester.pumpWidget(const HekiiiFoodExpressApp());

    expect(find.text('Good food,'), findsOneWidget);
    expect(find.byKey(const ValueKey('app-logo')), findsOneWidget);
  });

  testWidgets('customer can edit profile details and delivery address', (
    tester,
  ) async {
    await tester.pumpWidget(const HekiiiFoodExpressApp());
    await tester.tap(find.text('Profile'));
    await tester.pumpAndSettle();

    expect(find.text('Personal details'), findsOneWidget);
    expect(find.text('Delivery address'), findsOneWidget);

    await tester.ensureVisible(find.byKey(const ValueKey('edit-profile')));
    await tester.tap(find.byKey(const ValueKey('edit-profile')));
    await tester.pumpAndSettle();
    await tester.enterText(
      find.byKey(const ValueKey('profile-name')),
      'Alex Morgan',
    );
    await tester.enterText(
      find.byKey(const ValueKey('profile-email')),
      'alex@example.com',
    );
    await tester.enterText(
      find.byKey(const ValueKey('profile-phone')),
      '555-0123',
    );
    await tester.tap(find.text('Save'));
    await tester.pumpAndSettle();

    expect(find.text('Alex Morgan'), findsWidgets);
    expect(find.text('alex@example.com'), findsWidgets);
    expect(find.text('555-0123'), findsOneWidget);

    await tester.ensureVisible(
      find.byKey(const ValueKey('profile-change-address')),
    );
    await tester.tap(find.byKey(const ValueKey('profile-change-address')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Work · Cebu IT Park'));
    await tester.pumpAndSettle();
    expect(find.text('Work · Cebu IT Park'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Orders placed'),
      250,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text('0'), findsOneWidget);
  });

  testWidgets('customer can search the menu', (tester) async {
    await tester.pumpWidget(const HekiiiFoodExpressApp());

    expect(find.byKey(const ValueKey('app-logo')), findsOneWidget);
    expect(find.text('Good food,'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'Tonkotsu');
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.text('Tonkotsu Ramen'),
      300,
      scrollable: find.byType(Scrollable).first,
    );

    expect(find.text('Tonkotsu Ramen'), findsOneWidget);
    expect(find.text('Classic Cheeseburger'), findsNothing);
  });

  testWidgets('customer can search the expanded menu', (tester) async {
    await tester.pumpWidget(const HekiiiFoodExpressApp());

    await tester.enterText(find.byType(TextField), 'Mango Cheesecake');
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.text('Mango Cheesecake'),
      300,
      scrollable: find.byType(Scrollable).first,
    );

    expect(find.text('Mango Cheesecake'), findsOneWidget);
  });

  testWidgets('customer can find Filipino dishes', (tester) async {
    await tester.pumpWidget(const HekiiiFoodExpressApp());

    await tester.enterText(find.byType(TextField), 'Chicken Adobo');
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.text('Chicken Adobo Plate'),
      300,
      scrollable: find.byType(Scrollable).first,
    );

    expect(find.text('Chicken Adobo Plate'), findsOneWidget);
  });

  testWidgets('customer can add an item and place an order', (tester) async {
    await tester.pumpWidget(const HekiiiFoodExpressApp());

    await tester.tap(find.byKey(const ValueKey('delivery-location-selector')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Add another location'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextFormField), 'Ayala Center Cebu');
    await tester.tap(find.text('Save location'));
    await tester.pumpAndSettle();
    expect(find.text('Ayala Center Cebu'), findsOneWidget);

    final addButton = find.byKey(const ValueKey('add-classic-burger'));
    await tester.scrollUntilVisible(
      addButton,
      300,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    await tester.tap(addButton);
    await tester.pumpAndSettle();

    expect(find.text('View your cart'), findsOneWidget);
    await tester.tap(find.text('View your cart'));
    await tester.pumpAndSettle();
    expect(find.text('Your order'), findsOneWidget);
    expect(find.text('Classic Cheeseburger'), findsNWidgets(2));

    await tester.tap(find.text('Place order'));
    await tester.pumpAndSettle();
    expect(find.text('Order placed! Your food is on its way.'), findsOneWidget);
    expect(find.text('View your cart'), findsNothing);
    expect(find.text('Your orders'), findsOneWidget);
    expect(find.text('Order #1'), findsOneWidget);
    expect(find.text('1 × Classic Cheeseburger'), findsOneWidget);
    expect(find.text('Deliver to Ayala Center Cebu'), findsOneWidget);
  });
}
