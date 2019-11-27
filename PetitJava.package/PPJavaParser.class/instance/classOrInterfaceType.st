grammar-literals-string
classOrInterfaceType 
	^ super classOrInterfaceType ==> [ :nodes |  
		| result |
		result := PJClassOrInterfaceTypeNode new 
			name: nodes first;
			typeArguments: nodes second;
			yourself.
		nodes third ifNotEmpty: [ 
			nodes third do: [ :n |  
				result := PJClassOrInterfaceTypeNode new 
					name: n second;
					typeArguments: n third;
					scope: result;
					yourself
			]
		].
		result
	]
		
