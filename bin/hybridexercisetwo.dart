import 'package:hybridexercisetwo/lucky.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please provide at least one name.');
    return;
  }

  for (var name in arguments) {
    // Capitalize the first letter of the name
    final capitalized =
        '${name[0].toUpperCase()}${name.substring(1).toLowerCase()}';

    // Create an instance of the Lucky class
    final lucky = Lucky();

    // Print the message with the lucky number
    print('Hello $capitalized. Your lucky number is ${lucky.luckyNumber}.');
  }
}
