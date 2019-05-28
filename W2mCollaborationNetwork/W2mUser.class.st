Class {
	#name : #W2mUser,
	#superclass : #Object,
	#instVars : [
		'userName',
		'email',
		'password',
		'district',
		'school'
	],
	#category : #W2mCollaborationNetwork
}

{ #category : #accessing }
W2mUser >> district [
	^ district
]

{ #category : #accessing }
W2mUser >> district: anObject [
	district := anObject
]

{ #category : #accessing }
W2mUser >> email [
	^ email
]

{ #category : #accessing }
W2mUser >> email: anObject [
	email := anObject
]

{ #category : #accessing }
W2mUser >> password [
	^ password
]

{ #category : #accessing }
W2mUser >> password: anObject [
	password := anObject
]

{ #category : #accessing }
W2mUser >> school [
	^ school
]

{ #category : #accessing }
W2mUser >> school: anObject [
	school := anObject
]

{ #category : #accessing }
W2mUser >> userName [
	^ userName
]

{ #category : #accessing }
W2mUser >> userName: anObject [
	userName := anObject
]
