---
inject: true
before: part
to: lib/ui/screens/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>.dart
skip_if: full_screen_loader/full_screen_loader.dart
---
import 'package:draftwing/ui/widgets/design/full_screen_loader/full_screen_loader.dart';