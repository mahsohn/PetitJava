grammar
typeParameters
	^ super typeParameters ==> [:nodes |
		| result |
		result := OrderedCollection newFrom: { nodes second }.
		nodes third ifNotEmpty: [ nodes third do: [ :n | result add: n second ] ].
		result asArray
		]