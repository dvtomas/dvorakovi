Class {
	#name : #DvorakPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'buttonLeft',
		'buttonRight',
		'story'
	],
	#category : #Dvorakovi
}

{ #category : #examples }
DvorakPresenter class >> defaultSpec [

	^ SpBoxLayout newHorizontal
			add: #buttonLeft expand: false;
			add: #story expand: true;
			add: #buttonRight expand: false;
			yourself

]

{ #category : #examples }
DvorakPresenter class >> open [
	^ self new openWithSpec
]

{ #category : #examples }
DvorakPresenter >> initializePresenters [

	buttonLeft := self newButton icon: (self iconNamed: #glamorousLeft); disable.
	buttonRight := self newButton icon: (self iconNamed: #glamorousRight); yourself.
	story := self newButton label: 'Story'.
]
