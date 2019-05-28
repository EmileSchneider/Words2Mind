Class {
	#name : #W2mRequest,
	#superclass : #WAComponent,
	#instVars : [
		'sender',
		'network',
		'content'
	],
	#category : #W2mCollaborationNetwork
}

{ #category : #accessing }
W2mRequest >> content [
	^ content
]

{ #category : #accessing }
W2mRequest >> content: anObject [
	content := anObject
]

{ #category : #accessing }
W2mRequest >> network [
	^ network
]

{ #category : #accessing }
W2mRequest >> network: anObject [
	network := anObject
]

{ #category : #rendering }
W2mRequest >> renderContentOn: html [
	html text: 'SENDER: '.
	html text: self sender.
	html break.
	html text:  'NETWORK: '.
	html text: self network.
	html break.
	html text:  'CONTENT: '.
	html text: self content.
		
]

{ #category : #accessing }
W2mRequest >> sender [
	^ sender
]

{ #category : #accessing }
W2mRequest >> sender: anObject [
	sender := anObject
]
