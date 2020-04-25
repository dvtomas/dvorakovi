"
A DvorakTest is a test class for testing the behavior of Dvorak
"
Class {
	#name : #DvorakTest,
	#superclass : #TestCase,
	#category : #Dvorakovi
}

{ #category : #tests }
DvorakTest >> testSklonovanyVek [

	self 
		assert: (Dvorak sklonovanyVek: 10)
		equals: 'je mi 10 let'.
		
	self 
		assert: (Dvorak sklonovanyVek: 1)
		equals: 'je mi 1 rok'.
		
	self 
		assert: (Dvorak sklonovanyVek: 2)
		equals: 'jsou mi 2 roky'.
		
	self 
		assert: (Dvorak sklonovanyVek: 3)
		equals: 'jsou mi 3 roky'.
		
	self 
		assert: (Dvorak sklonovanyVek: 4)
		equals: 'jsou mi 4 roky'.
		
	self 
		assert: (Dvorak sklonovanyVek: 5)
		equals: 'je mi 5 let'.
		
	self 
		assert: (Dvorak sklonovanyVek: 6)
		equals: 'je mi 6 let'.
		
	self 
		assert: (Dvorak sklonovanyVek: 0)
		equals: 'je mi 0 let'.
		
	self 
		assert: (Dvorak sklonovanyVek: 11)
		equals: 'je mi 11 let'.
]
