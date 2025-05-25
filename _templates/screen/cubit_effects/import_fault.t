---
inject: true
before: part
to: lib/ui/screens/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>.dart
skip_if: fault/faults.dart
---
import 'package:draftwing/services/fault/faults.dart';