Class {
	#name : #W2mThoughtfinderThought,
	#superclass : #WAComponent,
	#instVars : [
		'text',
		'creationDate'
	],
	#category : #W2mThoughtfinder
}

{ #category : #accessing }
W2mThoughtfinderThought >> creationDate [
	^ creationDate
]

{ #category : #accessing }
W2mThoughtfinderThought >> creationDate: anObject [
	creationDate := anObject
]

{ #category : #rendering }
W2mThoughtfinderThought >> renderContentOn: html [
	html text: 'A Thought created: '.
	html text: (self creationDate).
	html break.
	html strong: (self text).

]

{ #category : #accessing }
W2mThoughtfinderThought >> text [
	^ text
]

{ #category : #accessing }
W2mThoughtfinderThought >> text: anObject [
	text := anObject
]
