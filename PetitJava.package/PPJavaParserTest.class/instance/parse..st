parsing
parse: aString 
	result := parser parse: aString.
	self assertParsed: result.
	^result