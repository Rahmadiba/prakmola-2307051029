import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/main.dart';
import 'package:myapp/screens/login_screen.dart';

void main() {
  testWidgets('Login screen UI elements test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // We start at the root and navigate to the login screen.
    await tester.pumpWidget(const JustduitApp());

    // The initial route is LoginScreen, so it should be displayed.
    expect(find.byType(LoginScreen), findsOneWidget);

    // Verify the title is displayed
    expect(find.text('Hi, Welcome Back to Justduit'), findsOneWidget);

    // Verify the email text field is present by its hint text
    expect(find.text('Enter your email'), findsOneWidget);

    // Verify the password text field is present by its hint text
    expect(find.text('Enter your password'), findsOneWidget);

    // Verify the "Sign In Now" button is present by its text
    expect(find.text('Sign In Now'), findsOneWidget);

    // Verify the "Create New Account" button is present by its text
    expect(find.text('Create New Account'), findsOneWidget);
  });
}
