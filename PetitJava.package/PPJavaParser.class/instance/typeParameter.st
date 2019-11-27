grammar
typeParameter 
	^ super typeParameter ==> [:nodes |
		PJTypeParameterNode new
			name: nodes first name;
			typeBound: (nodes second ifNotNil: [ nodes second second ] ifNil: [ nil ]);
			yourself
		]