grammar
importDeclaration 
	^ super importDeclaration ==> [:nodes | 
		| nameFirst nameRest isAsterisk name names qualifiers size |
		nameFirst := nodes third.
		nameRest := nodes fourth.
		names := nameRest first.
		isAsterisk := nameRest second notNil.
		name := isAsterisk ifTrue: [ '*' ] ifFalse: [ nameRest first last second name].
		qualifiers := OrderedCollection new.
		qualifiers add: nameFirst.
		size := isAsterisk ifTrue: [ names size ] ifFalse: [ names size - 1 ].
		names from: 1 to: size do: [ :a | qualifiers add: a second].
		
		PJImportDeclarationNode new 
			isStatic: nodes second notNil;
			nameNode: name;
			qualifiers: qualifiers asArray;
			isAsterisk: isAsterisk;
			yourself
		]