Class {
	#name : #W2mThoughtfinderEditor,
	#superclass : #WAComponent,
	#instVars : [
		'thought'
	],
	#category : #W2mThoughtfinder
}

{ #category : #testing }
W2mThoughtfinderEditor class >> canBeRoot [
	^ true 
]

{ #category : #'as yet unclassified' }
W2mThoughtfinderEditor >> createNewThought [
	^ W2mThoughtfinder new.
]

{ #category : #initialization }
W2mThoughtfinderEditor >> initialize [
	super initialize.
	thought := W2mThoughtfinderThought new.
]

{ #category : #rendering }
W2mThoughtfinderEditor >> renderContentOn: html [
	|text|
	html heading: 'Thought Editor'.
	html strong: 'Edit your thoughts here'.
	html form: [ 
		html textInput 
			callback: [ :value | thought text: value. text := value. ];
			value: thought text.
		html submitButton 
			callback: [ thought creationDate: (DateAndTime now). ];
			with: 'Save'.
		html submitButton 
			callback: [ thought := W2mThoughtfinderThought new ];
			with: 'Create new thought'.
		html submitButton 
			callback: [  W2mMindcloud addThought: (thought creationDate: (DateAndTime now))];
			with: 'Add to Mindcloud'.
		 ].
	html render: thought.
]
