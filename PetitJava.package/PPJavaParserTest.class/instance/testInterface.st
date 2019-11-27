tests
testInterface
	self parse: '@ColorAnnotation1
	@ColorAnnotation2
	public abstract interface IColor<Int, T extends A & B & C, U extends Comparable<? super U>> extends IColor1, IColor2, IColor3{ 
	
	 List<Color> getColors();
	 Color colour = com.org.net.giveMeAColor();
	 private double r;
    public double g;
	 protected double b;
    private double getR();
	 public double getG();
	}'.
	node := result types first.
	self assert: (node isKindOf: PJClassOrInterfaceDeclarationNode).
	self assert: node name equals: 'IColor'.
	self assert: (node modifiers allSatisfy: [ :n | n class = PJModifierNode ]).
	self assert: node modifiers first keyword equals: 'public'.
	self assert: node modifiers second keyword equals: 'abstract'.
	self assert: (node annotations allSatisfy: [ :n | n class = PJAnnotationNode ]).
	self assert: node annotations first typeName identifier equals: 'ColorAnnotation1'.
	self assert: node annotations second typeName identifier equals: 'ColorAnnotation2'.
	self assert: node notNil.