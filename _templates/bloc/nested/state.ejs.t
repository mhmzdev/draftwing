---
to: lib/blocs/<%= h.changeCase.snake(name) %>/state.dart
---
<% pascal = h.changeCase.pascal(name) %>
<% rootClass = h.changeCase.pascal(name)+"State" %>
part of 'bloc.dart';
<%= props = "" %>
<%= constructor = "" %>
<%= defConstructor = "" %>
<%= equatable = "" %>
<%= copyWithArgs = "" %>
<%= copyWithBody = "" %>

<% args.forEach(function(arg, index){ %>

<% module = h.changeCase.pascal(arg.module) %>
<% cModule = h.changeCase.camel(arg.module) %>
<% model = h.changeCase.pascal(arg.model) %>
<% props += "\tfinal BlocState<"+model+"> "+cModule+";\n" %>
<% constructor += "\t\trequired this."+cModule+",\n" %>
<% defConstructor += "\t\t\t"+cModule+" = BlocState(),\n" %>
<% equatable += "\t\t"+cModule+",\n" %>
<% copyWithArgs += "\t\tBlocState<"+model+">? "+cModule+",\n" %>
<% copyWithBody += "\t\t\t"+cModule+": "+cModule+" ?? this."+cModule+",\n" %>

<% }); %>

@immutable
class <%= rootClass %> extends Equatable {
	// --- nested states --- //
<%- props %>
	// --- state data --- //
	final List<Object> dataList;
	final int dataCount;

	const <%= rootClass %>({
<%- constructor %>		this.dataList = const [],
		this.dataCount = 0,
	});

	<%= rootClass %>.def()
		: // root-def-constructor
<%- defConstructor %>			dataList = const [],
			dataCount = 0;

	<%= rootClass %> copyWith({
<%- copyWithArgs %>		List<Object>? dataList,
		int? dataCount,
	}) {
		return <%= rootClass %>(
<%- copyWithBody %>			dataList: dataList ?? this.dataList,
			dataCount: dataCount ?? this.dataCount,
		);
	}

	@override
	List<Object?> get props => [
		// root-state-props
<%- equatable %>
	];
}
