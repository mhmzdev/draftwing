---
inject: true
before: part
to: lib/ui/screens/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>.dart
skip_if: brain/brain.dart
---
import 'package:brain/brain.dart';