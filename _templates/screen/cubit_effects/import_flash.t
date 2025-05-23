---
inject: true
before: part
to: lib/ui/screens/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>.dart
skip_if: utils/flash.dart
---
import 'package:draftwing/utils/flash.dart';