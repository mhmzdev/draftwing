---
inject: true
to: lib/app.dart
after: // bloc-initiate-start
before: // bloc-initiate-end
skip_if: "BlocProvider[(]create: [(]_[)] => <%= h.changeCase.pascal(name) %>Bloc[())]"
---
        BlocProvider(create: (_) => <%= h.changeCase.pascal(name) %>Bloc()), 