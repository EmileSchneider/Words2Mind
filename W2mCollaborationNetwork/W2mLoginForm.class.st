Class {
	#name : #W2mLoginForm,
	#superclass : #WAComponent,
	#instVars : [
		'email',
		'password',
		'dataBase'
	],
	#category : #W2mCollaborationNetwork
}

{ #category : #accessing }
W2mLoginForm >> dataBase: aDatabase [
	dataBase := aDatabase.
]

{ #category : #rendering }
W2mLoginForm >> renderContentOn: html [
	html heading: 'Login'.
	html text: 'email'.
	html form: [ 
		html textInput callback: [ :value | email := value]
		 ].
	html text: 'password'.
	html form: [ 
		html textInput callback: [ :value | password := value]
		 ].
	html submitButton callback: [ (W2mCollaborationNetwork dataBase allUser do: [ :u | 
			(self email = u email) ifTrue: 
			[(self password = u password) ifTrue: 
			[W2mCollaborationNetwork user: u]]])].  
]
