Class {
	#name : #W2mThoughtfinder,
	#superclass : #WAComponent,
	#instVars : [
		'editor',
		'cloud'
	],
	#category : #W2mThoughtfinder
}

{ #category : #testing }
W2mThoughtfinder class >> canBeRoot [
	^ true
]

{ #category : #accessing }
W2mThoughtfinder >> cloud [
	^ cloud
]

{ #category : #accessing }
W2mThoughtfinder >> cloud: anObject [
	cloud := anObject
]

{ #category : #accessing }
W2mThoughtfinder >> editor [
	^ editor
]

{ #category : #accessing }
W2mThoughtfinder >> editor: anObject [
	editor := anObject
]

{ #category : #initialization }
W2mThoughtfinder >> initialize [ 
	super initialize.
	editor := W2mThoughtfinderEditor new.
	cloud := W2mMindcloud new.
]

{ #category : #rendering }
W2mThoughtfinder >> renderContentOn: html [
	html render: editor.
	html heading: '-------'.
	html render: cloud.
	
	
]
