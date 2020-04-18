Class {
	#name : #Dvorak,
	#superclass : #Object,
	#instVars : [
		'jmeno',
		'prijmeni',
		'obrazek',
		'datumNarozeni'
	],
	#category : #Dvorakovi
}

{ #category : #'as yet unclassified' }
Dvorak class >> seJmenem: jmeno aPrijmenim: prijmeni aObrazkemZeSouboru: nazevSouboru aDatemNarozeni: datum [

"vytvori noveho Dvoraka, nastavi mu zadane jmeno a prijmeni a vrati ho."

|dvorak|
dvorak:= Dvorak new.
dvorak jmeno: jmeno.
dvorak prijmeni: prijmeni.
dvorak obrazekZeSouboru: nazevSouboru.
dvorak datumNarozeni: datum.
^dvorak.

]

{ #category : #accessing }
Dvorak >> datumNarozeni [

^datumNarozeni
]

{ #category : #'as yet unclassified' }
Dvorak >> datumNarozeni: aDate [

datumNarozeni := aDate.
]

{ #category : #accessing }
Dvorak >> jmeno [
^jmeno.
]

{ #category : #'as yet unclassified' }
Dvorak >> jmeno: aString [

jmeno := aString
]

{ #category : #accessing }
Dvorak >> jmenoAPrijmeni [

^jmeno,' ',prijmeni.
]

{ #category : #accessing }
Dvorak >> obrazek: aForm [

obrazek := aForm
]

{ #category : #'as yet unclassified' }
Dvorak >> obrazekZeSouboru: aString [

obrazek := Form fromFileNamed: aString.
]

{ #category : #accessing }
Dvorak >> predstavSe [

Transcript 
	show: self predstavovaciText;
	cr.
]

{ #category : #accessing }
Dvorak >> predstavSeDole [

Dvorak inform: self predstavovaciText.
]

{ #category : #accessing }
Dvorak >> predstavovaciText [

^'Ahoj, ja jsem ', self jmenoAPrijmeni, 'a narodil jsem se ',self datumNarozeni printString.
]

{ #category : #accessing }
Dvorak >> prijmeni [
^prijmeni.
]

{ #category : #accessing }
Dvorak >> prijmeni: aString [.

prijmeni := aString.
]

{ #category : #accessing }
Dvorak >> ukazSvojeTlacitko [

|b mensiObrazek|
b := SpPresenter new newButton.
mensiObrazek := (obrazek scaledToSize: 250@250).
b icon: mensiObrazek.
b label: self jmenoAPrijmeni.
b action: [self predstavSe. self predstavSeDole].
b openWithSpec.
]

{ #category : #accessing }
Dvorak >> vek [

 | crudeYears now birthThisYear |
	
	now := Date today.
	crudeYears := now year - datumNarozeni year.

	birthThisYear := 
		Date 
			year: now year 
			month: datumNarozeni monthIndex 
			day: datumNarozeni dayOfMonth.
			
	^(birthThisYear < now) 
		ifTrue: [ crudeYears ] 
		ifFalse: [ crudeYears - 1 ].
]
