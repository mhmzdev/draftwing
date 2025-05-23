---
to: lib/blocs/<%= h.changeCase.snake(name) %>/state.dart
---
part of 'bloc.dart';

enum <%= h.changeCase.pascal(name) %>Status { initial, loading, success, failure }

class <%= h.changeCase.pascal(name) %>State extends Equatable {
  final <%= h.changeCase.pascal(name) %>Status status;
<% args.forEach(function(arg){ %>
  final <%= h.changeCase.pascal(arg.model) %>? <%= h.changeCase.camel(arg.module) %>;
  final Fault? <%= h.changeCase.camel(arg.module) %>Fault;
<% }); %>

  const <%= h.changeCase.pascal(name) %>State({
    this.status = <%= h.changeCase.pascal(name) %>Status.initial,
<% args.forEach(function(arg){ %>
    this.<%= h.changeCase.camel(arg.module) %>,
    this.<%= h.changeCase.camel(arg.module) %>Fault,
<% }); %>
  });

  <%= h.changeCase.pascal(name) %>State.initial() : this();

  <%= h.changeCase.pascal(name) %>State.loading() : this(status: <%= h.changeCase.pascal(name) %>Status.loading);

  <%= h.changeCase.pascal(name) %>State.success({
<% args.forEach(function(arg){ %>
    <%= h.changeCase.pascal(arg.model) %>? <%= h.changeCase.camel(arg.module) %>,
<% }); %>
  }) : this(
          status: <%= h.changeCase.pascal(name) %>Status.success,
<% args.forEach(function(arg){ %>
          <%= h.changeCase.camel(arg.module) %>: <%= h.changeCase.camel(arg.module) %>,
<% }); %>
        );

  <%= h.changeCase.pascal(name) %>State.failure({
<% args.forEach(function(arg){ %>
    Fault? <%= h.changeCase.camel(arg.module) %>Fault,
<% }); %>
  }) : this(
          status: <%= h.changeCase.pascal(name) %>Status.failure,
<% args.forEach(function(arg){ %>
          <%= h.changeCase.camel(arg.module) %>Fault: <%= h.changeCase.camel(arg.module) %>Fault,
<% }); %>
        );

  <%= h.changeCase.pascal(name) %>State copyWith({
    <%= h.changeCase.pascal(name) %>Status? status,
<% args.forEach(function(arg){ %>
    <%= h.changeCase.pascal(arg.model) %>? <%= h.changeCase.camel(arg.module) %>,
    Fault? <%= h.changeCase.camel(arg.module) %>Fault,
<% }); %>
  }) {
    return <%= h.changeCase.pascal(name) %>State(
      status: status ?? this.status,
<% args.forEach(function(arg){ %>
      <%= h.changeCase.camel(arg.module) %>: <%= h.changeCase.camel(arg.module) %> ?? this.<%= h.changeCase.camel(arg.module) %>,
      <%= h.changeCase.camel(arg.module) %>Fault: <%= h.changeCase.camel(arg.module) %>Fault ?? this.<%= h.changeCase.camel(arg.module) %>Fault,
<% }); %>
    );
  }

  @override
  List<Object?> get props => [
    status,
<% args.forEach(function(arg){ %>
    <%= h.changeCase.camel(arg.module) %>,
    <%= h.changeCase.camel(arg.module) %>Fault,
<% }); %>
  ];
} 