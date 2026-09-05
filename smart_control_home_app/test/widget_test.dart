import 'package:flutter_test/flutter_test.dart';
import 'package:smart_control_home_app/main.dart';

void main() {
  testWidgets('Home screen renders its initial state', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Home status'), findsOneWidget);
    expect(find.text('Night mode'), findsOneWidget);
    expect(find.text('Favorites'), findsOneWidget);
    expect(find.text('No favorite devices yet'), findsOneWidget);
  });
}
