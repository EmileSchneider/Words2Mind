Class {
	#name : #W2mMindcloud,
	#superclass : #WAComponent,
	#classVars : [
		'thoughts'
	],
	#category : #W2mThoughtfinder
}

{ #category : #adding }
W2mMindcloud class >> addThought: aThought [
	thoughts add: aThought.
]

{ #category : #'as yet unclassified' }
W2mMindcloud class >> thoughts [
	^ thoughts.
]

{ #category : #adding }
W2mMindcloud >> addThought: thought [
	thoughts add: thought
]

{ #category : #initialization }
W2mMindcloud >> initialize [
	super initialize.
	thoughts := OrderedCollection new.
	
]

{ #category : #rendering }
W2mMindcloud >> renderContentOn: html [
	html heading: 'Mindcloud'.
	thoughts do: [ :thought | html render: thought. html break.].
]
