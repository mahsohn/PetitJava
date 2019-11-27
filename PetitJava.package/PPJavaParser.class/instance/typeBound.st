grammar
typeBound
	^ super typeBound ==> [:nodes |
		| result |
		result := OrderedCollection newFrom: { nodes first }.
		nodes second
			ifNotEmpty: [ (nodes second do: [ :n | result add: n second ]) ].
		result asArray 
		]