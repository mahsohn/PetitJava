visitor-doubleDispatching
visitParameterDeclaratorNode: aParameterDeclaratorNode
	self visitNode: aParameterDeclaratorNode identifier.
	self visitNodes: aParameterDeclaratorNode modifiers