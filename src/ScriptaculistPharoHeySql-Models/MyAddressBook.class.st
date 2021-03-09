Class {
	#name : #MyAddressBook,
	#superclass : #Object,
	#instVars : [
		'id',
		'contacts'
	],
	#category : #'ScriptaculistPharoHeySql-Models'
}

{ #category : #accessing }
MyAddressBook >> addContact: aContact [
	self contacts add: aContact. 
]

{ #category : #accessing }
MyAddressBook >> contacts [
	^ contacts ifNil: [ contacts := OrderedCollection new ]. 
]

{ #category : #accessing }
MyAddressBook >> id [
	^ id
]

{ #category : #accessing }
MyAddressBook >> id: anObject [
	id := anObject
]
