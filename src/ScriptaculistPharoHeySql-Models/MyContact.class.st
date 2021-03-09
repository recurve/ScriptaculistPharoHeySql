Class {
	#name : #MyContact,
	#superclass : #Object,
	#instVars : [
		'id',
		'firstName',
		'surname',
		'dateOfBirth',
		'telephoneNumber',
		'emailAddress'
	],
	#category : #'ScriptaculistPharoHeySql-Models'
}

{ #category : #accessing }
MyContact >> dateOfBirth [
	^ dateOfBirth ifNil: [ dateOfBirth := Date today ]. 
]

{ #category : #accessing }
MyContact >> dateOfBirth: anObject [
	dateOfBirth := anObject
]

{ #category : #accessing }
MyContact >> emailAddress [
	^ emailAddress
]

{ #category : #accessing }
MyContact >> emailAddress: anObject [
	emailAddress := anObject
]

{ #category : #accessing }
MyContact >> firstName [
	^ firstName
]

{ #category : #accessing }
MyContact >> firstName: anObject [
	firstName := anObject
]

{ #category : #accessing }
MyContact >> id [
	^ id
]

{ #category : #accessing }
MyContact >> id: anObject [
	id := anObject
]

{ #category : #accessing }
MyContact >> surname [
	^ surname
]

{ #category : #accessing }
MyContact >> surname: anObject [
	surname := anObject
]

{ #category : #accessing }
MyContact >> telephoneNumber [
	^ telephoneNumber
]

{ #category : #accessing }
MyContact >> telephoneNumber: anObject [
	telephoneNumber := anObject
]
