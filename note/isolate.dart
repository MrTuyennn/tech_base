import 'dart:isolate';

Future<void> runIsolateExample() async {
  final receivePort = ReceivePort();

  await Isolate.spawn(isolateEntry, receivePort.sendPort);

  final result = await receivePort.first;
  print('Result from isolate.spawn: $result');
}

void isolateEntry(SendPort sendPort) {
  int sum = 0;
  for (int i = 0; i < 100000000; i++) {
    sum += i;
  }
  sendPort.send(sum);
}

// Future<int> runComputeExample() async {
//   return compute(calculateSum, 100000000);
// }

// int calculateSum(int max) {
//   int sum = 0;
//   for (int i = 0; i < max; i++) {
//     sum += i;
//   }
//   return sum;
// }

void main() {
  runIsolateExample();
}
