grammar
compilationUnit 

	"^ (annotations optional, packageDeclaration) optional , importDeclaration star , typeDeclaration plus"
	^ super compilationUnit ==> [:nodes | PJCompilationUnitNode new 
		packageDeclaration: nodes first;
		imports: nodes second;
		types: nodes third;
		yourself
		]