import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:contador/main.dart'; // Certifique-se de que o caminho para o seu arquivo main.dart esteja correto

void main() {
  testWidgets('Counter increments and decrements', (WidgetTester tester) async {
    // Construa o aplicativo e acione um frame.
    await tester.pumpWidget(MyApp()); // Remover 'const'

    // Verifique se o contador começa em 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    expect(find.text('Pode Entrar!'), findsOneWidget);

    // Toque no botão 'Entrou' e acione um frame.
    await tester.tap(find.text('Entrou'));
    await tester.pump();

    // Verifique se o contador foi incrementado.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
    expect(find.text('Pode Entrar!'), findsOneWidget);

    // Toque no botão 'Saiu' e acione um frame.
    await tester.tap(find.text('Saiu'));
    await tester.pump();

    // Verifique se o contador foi decrementado.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    expect(find.text('Pode Entrar!'), findsOneWidget);
  });
}
