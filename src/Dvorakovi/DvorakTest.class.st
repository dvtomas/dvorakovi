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
		equals: '10 let'.
		
	self fail: 'Dodelat testy!'.
	
]
