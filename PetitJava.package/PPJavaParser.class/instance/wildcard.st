grammar-literals-string
wildcard
	^ super wildcard
		==> [ :nodes | 
			| node nodeType|
			node := nodes second first inputValue.
			nodeType := nodes second second.
			node = 'super' ifTrue: [ 
				PJWildcardTypeNode new superType: nodeType
			]
			ifFalse: [ 
				node = 'extends' ifTrue: [ 
					PJWildcardTypeNode new extendedType: nodeType
				]
				ifFalse: [ self error: 'wildcard must be super or extends, given: ', node ]
			]
		]