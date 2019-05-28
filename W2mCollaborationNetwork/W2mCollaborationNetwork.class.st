"
The root WAComponent.
"
Class {
	#name : #W2mCollaborationNetwork,
	#superclass : #WAComponent,
	#instVars : [
		'user',
		'tierOneRequests',
		'tierTwoRequests',
		'tierThreeRequests',
		'loginForm'
	],
	#classVars : [
		'dataBase'
	],
	#category : #W2mCollaborationNetwork
}

{ #category : #testing }
W2mCollaborationNetwork class >> canBeRoot [
	^ true
]

{ #category : #accessing }
W2mCollaborationNetwork class >> dataBase [
	^ self dataBase
]

{ #category : #accessing }
W2mCollaborationNetwork class >> dataBase: aDb [
	 self dataBase: aDb.
]

{ #category : #initialization }
W2mCollaborationNetwork >> initialize [
	super initialize.
	dataBase := W2mDataBase new.
	loginForm := W2mLoginForm new.
	loginForm dataBase: dataBase.
]

{ #category : #initialization }
W2mCollaborationNetwork >> renderContentOn: html [
	html heading: 'Collaboration Network'.
	html strong: 'You can see here collaboration requests coming from one of your networks'.
	html break.
	dataBase allRequests do: [ :req | html render: req.].
	html text: 'User loged in:' + user userName.
	html break.
	html render: loginForm.
]

{ #category : #accessing }
W2mCollaborationNetwork >> tierOneRequests [
	^ tierOneRequests
]

{ #category : #accessing }
W2mCollaborationNetwork >> tierOneRequests: anObject [
	tierOneRequests := anObject
]

{ #category : #accessing }
W2mCollaborationNetwork >> tierThreeRequests [
	^ tierThreeRequests
]

{ #category : #accessing }
W2mCollaborationNetwork >> tierThreeRequests: anObject [
	tierThreeRequests := anObject
]

{ #category : #accessing }
W2mCollaborationNetwork >> tierTwoRequests [
	^ tierTwoRequests
]

{ #category : #accessing }
W2mCollaborationNetwork >> tierTwoRequests: anObject [
	tierTwoRequests := anObject
]

{ #category : #accessing }
W2mCollaborationNetwork >> user [
	^ user
]

{ #category : #accessing }
W2mCollaborationNetwork >> user: anObject [
	user := anObject
]
