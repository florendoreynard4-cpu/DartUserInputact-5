import 'dart:io';

double readNum(String label) {
  stdout.write('Enter $label: ');
  final input = stdin.readLineSync();
  final value = double.tryParse(input ?? '');
  if (value == null) {
    stderr.writeln('Invalid number for $label. Exiting.');
    exit(1);
  }
  return value;
}

void main() {
  final n1 = readNum('1st num');
  final n2 = readNum('2nd num');
  final n3 = readNum('3rd num');
  final n4 = readNum('4th num');

  final r1 = n1 + n3 + n2 * n1;
  final r2 = n2 + n3 / n1;
  final r3 = n4 + n1 * n4;
  final r4 = n1 / n2 + n3 * n4;
  final r5 = n4 + n2 / n2;
  print('\n== Here is the output ==');
  print('1st num + 3rd num + 2nd num * 1st num = $r1');
  print('2nd num + 3rd num / 1st num = $r2');
  print('4th num + 1st num * 4th num = $r3');
  print('1st num / 2nd num + 3rd num * 4th num= $r4');
  print('4th num + 2nd num / 2nd num = $r5');
}
