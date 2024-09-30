import 'dart:io';
import 'dart:math';

class Lucky {
  final int luckyNumber;

  Lucky() : luckyNumber = _generateLuckyNumber();

  // Private method to generate a random number between MIN and MAX
  static int _generateLuckyNumber() {
    // Get the MIN and MAX environment variables
    final min = int.parse(Platform.environment['MIN'] ?? '0');
    final max = int.parse(Platform.environment['MAX'] ?? '100');

    // Generate a random number between min and max
    return Random().nextInt(max - min + 1) + min;
  }
}
