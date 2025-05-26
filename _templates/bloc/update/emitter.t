---
inject: true
after: mixin _<%= h.changeCase.pascal(name) %>Emitter
to: lib/blocs/<%= h.changeCase.snake(name) %>/emitter.dart
---
<% pascal = h.changeCase.pascal(name) %>
<% args.forEach(function(arg){ %>
<% pModule = h.changeCase.pascal(arg.module) %>
<% cModule = h.changeCase.camel(arg.module) %>
<% model = h.changeCase.pascal(arg.model) %>

	void _<%= cModule %>Loading(Emitter<<%= pascal %>State> emit) {
		emit(
			state.copyWith(
				<%= cModule %>: state.<%= cModule %>.copyWith(
					action: BlocAction.loading,
				),
			),
		);
	}

	void _<%= cModule %>Success(<%= model %> data, Emitter<<%= pascal %>State> emit) {
		emit(
			state.copyWith(
				<%= cModule %>: state.<%= cModule %>.copyWith(
					action: BlocAction.success,
					data: data,
				),
			),
		);
	}

	void _<%= cModule %>Failed(Fault e, Emitter<<%= pascal %>State> emit) {
		emit(
			state.copyWith(
				<%= cModule %>: state.<%= cModule %>.copyWith(
					action: BlocAction.failed,
					fault: e,
				),
			),
		);
	}

<% }); %>