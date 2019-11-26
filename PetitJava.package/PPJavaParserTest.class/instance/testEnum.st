tests
testEnum
	self parse: '@ColorAnnotation1
	@ColorAnnotation2
	public abstract enum Color implements IColor1, IColor2, IColor3{ 
    RED, GREEN, BLUE;
	 private double r;
    private double g;
	 private double b;
    Color(double r, double g, double b) {
        this.r = r;
        this.g = g;
		  this.b = b;
    }
    private double getR() { return r; }
	 public double getG() { return g; }
	 public double getB() { return b; }
	}'.
	node := result types first.
	self assert: (node isKindOf: PJEnumDeclarationNode).
	self assert: node name equals: 'Color'.
	self assert: (node modifiers allSatisfy: [ :n | n class = PJModifierNode ]).
	self assert: node modifiers first keyword equals: 'public'.
	self assert: node modifiers second keyword equals: 'abstract'.
	self assert: (node annotations allSatisfy: [ :n | n class = PJAnnotationNode ]).
	self assert: node annotations first typeName identifier equals: 'ColorAnnotation1'.
	self assert: node annotations second typeName identifier equals: 'ColorAnnotation2'.
	self assert: (node entries size) equals: 3.
	self assert: (node entries allSatisfy: [ :e | e class = PJEnumConstantDeclarationNode ]).
	self assert: node entries first name name equals: 'RED'.
	self assert: node entries second name name equals: 'GREEN'.
	self assert: node entries third name name equals: 'BLUE'.
	self assert: (node implementedTypes size) equals: 3.
	self assert: (node implementedTypes allSatisfy: [ :e | e class = PJIdentifierNode ]).
	self assert: node implementedTypes first name equals: 'IColor1'.
	self assert: node implementedTypes second name equals: 'IColor2'.
	self assert: node implementedTypes third name equals: 'IColor3'.
	self assert: node members size equals: 7.
	(node members selectEvery: [ :i | i <= 3 ]) do: [ :n | 
		self assert: n class equals: PJFieldDeclarationNode 
	].
	self assert: node members fourth class equals: PJConstructorDeclarationNode.
	(node members selectEvery: [ :i | i >=5 ]) do: [ :n | 
		self assert: n class equals: PJMethodDeclarationNode 
	].
	self assert: node notNil.