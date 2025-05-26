---
inject: true
to: lib/app.dart
after: // bloc-imports-start
before: // bloc-imports-end
skip_if: import '../new/blocs/<%= h.changeCase.snake(name) %>/bloc.dart';
---
import '../new/blocs/<%= h.changeCase.snake(name) %>/bloc.dart'; 