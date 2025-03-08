import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:package_shimmer/src/shimmer_container.dart';

void main() {
  testWidgets('ShimmerContainer renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const ShimmerContainer(child: Text('Loading...')));
    expect(find.text('Loading...'), findsOneWidget);
  });
}
