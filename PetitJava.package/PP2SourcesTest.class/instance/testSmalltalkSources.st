as yet unclassified
testSmalltalkSources
	| s1 s2 |
	[
		PP2Sources reset.
		s1 := PP2Sources current smalltalkSourcesProfiling.
		PP2Sources reset.
		s2 := PP2Sources current smalltalkSourcesProfiling.
		
		self assert: s1 equals: s2.
	] ensure: [ 
		PP2Sources current smalltalkAllUrl asFileReference ensureDelete 
	]	