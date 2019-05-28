Class {
	#name : #W2mDataBase,
	#superclass : #Object,
	#instVars : [
		'allRequests',
		'allUser',
		'currentUser'
	],
	#category : #W2mCollaborationNetwork
}

{ #category : #adding }
W2mDataBase >> addRequest: request [
	allRequests add: request.
]

{ #category : #accessing }
W2mDataBase >> allRequests [
	^ allRequests
]

{ #category : #accessing }
W2mDataBase >> allRequests: anObject [
	allRequests := anObject
]

{ #category : #accessing }
W2mDataBase >> allUser [
	^ allUser
]

{ #category : #accessing }
W2mDataBase >> allUser: anObject [
	allUser := anObject
]

{ #category : #'as yet unclassified' }
W2mDataBase >> getMessageFor: aUser [
	| requests |
	requests := OrderedCollection new.
	allRequests do: [ :req | req network = 'tierOne' ifTrue: [
			(aUser school = req user school) ifTrue: [ 
				requests add: req.
				 ]
			].
		req network = 'tierTwo' ifTrue: [
			(aUser district = req user district) ifTrue: [ 
				requests add: req. ]
			].
		req network = 'tierThree' ifTrue: [
			(aUser district = req user district) ifFalse: [ 
				requests add: req. ]
			]
		].
	^ requests.
]

{ #category : #initialization }
W2mDataBase >> initialize [
	super initialize.
	allRequests := OrderedCollection new.
	allUser := OrderedCollection new.
	allUser add: ((W2mUser new) userName: 'user1'; email: 'user1@mail.com'; password: 'password1'; school: 'school11'; district: 'district1').
	allUser add: ((W2mUser new) userName: 'user7'; email: 'user1@mail.com'; password: 'password7'; school: 'school11'; district: 'district1').
	allUser add: ((W2mUser new) userName: 'user2'; email: 'user1@mail.com'; password: 'password2'; school: 'school12'; district: 'district1').
	allUser add: ((W2mUser new) userName: 'user3'; email: 'user1@mail.com'; password: 'password3'; school: 'school21'; district: 'district2').
	allUser add: ((W2mUser new) userName: 'user4'; email: 'user1@mail.com'; password: 'password4'; school: 'school22'; district: 'district2').
	allUser add: ((W2mUser new) userName: 'user5'; email: 'user1@mail.com'; password: 'password5'; school: 'schoolA1'; district: 'districtA').
	allUser add: ((W2mUser new) userName: 'user6'; email: 'user1@mail.com'; password: 'password6'; school: 'schoolA2'; district: 'districtA').
	
	allRequests add: ((W2mRequest new) sender: 'user1'; network: 'tierOne'; content: 'user1 tierOne request').
]

{ #category : #removing }
W2mDataBase >> removeRequest: request [
	allRequests remove: request.
]
