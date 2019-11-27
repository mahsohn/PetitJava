grammar
typeArguments
	^ super typeArguments ==> [:nodes | 
		| result |
			result := OrderedCollection newFrom: { nodes second first}.
			nodes second second do: [ :n | result add: n second ].
			result asArray 
		]