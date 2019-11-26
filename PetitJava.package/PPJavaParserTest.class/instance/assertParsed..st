asserting
assertParsed: parseResult
	^self assert: ((parseResult isKindOf: PP2Failure) not)