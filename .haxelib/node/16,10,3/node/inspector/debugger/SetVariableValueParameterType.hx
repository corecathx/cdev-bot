package node.inspector.debugger;

typedef SetVariableValueParameterType = {
	/**
		0-based number of scope as was listed in scope chain. Only 'local', 'closure' and 'catch' scope types are allowed. Other scopes could be manipulated manually.
	**/
	var scopeNumber : Float;
	/**
		Variable name.
	**/
	var variableName : String;
	/**
		New variable value.
	**/
	var newValue : node.inspector.runtime.CallArgument;
	/**
		Id of callframe that holds variable.
	**/
	var callFrameId : String;
};