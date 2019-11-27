grammar
typeList
	^ super typeList ==> [:nodes |
		nodes second
			ifNotNil: [ (nodes second collect: [ :n | n second ]) addFirst: nodes first ]
			ifNil: [ { nodes first } ]
		]