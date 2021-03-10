Class {
	#name : #MyContactEditor,
	#superclass : #WAComponent,
	#instVars : [
		'contact'
	],
	#category : #ScriptaculistPharoHeySql
}

{ #category : #'instance creation' }
MyContactEditor class >> on: aContact [
^self new contact: aContact; yourself. 
]

{ #category : #actions }
MyContactEditor >> cancel [ 
self answer: false. 
]

{ #category : #accessing }
MyContactEditor >> contact [
	^ contact
]

{ #category : #accessing }
MyContactEditor >> contact: anObject [
	contact := anObject
]

{ #category : #rendering }
MyContactEditor >> renderContentOn: html [
html heading: 'Contact Details'.
html form with: [
	self renderLabel: 'First Name: ' withInput: [html textInput on: #firstName of: contact] on: html.
	self renderLabel: 'Surname: ' withInput: [html textInput on: #surname of: contact] on: html.
	self renderLabel: 'Date of Birth: ' withInput: [html dateInput on: #dateOfBirth of: contact] on: html.
	self renderLabel: 'Telephone: ' withInput: [html textInput on: #telephoneNumber of: contact] on: html.
	self renderLabel: 'Email: ' withInput: [html textInput on: #emailAddress of: contact] on: html.
	html span class: 'button'; with: [html submitButton on: #save of: self].
	html span class: 'button'; with: [html submitButton on: #cancel of: self].
]
]

{ #category : #rendering }
MyContactEditor >> renderLabel: aLabel withInput: anInputFieldBlock on: html [ 
"One of the most powerful things about seaside is the ability to factor your html into small callable methods. When creating a form I often repeat the same pattern for each input field; I create a div; I put a label for the field inside a “label” span; I put an input field inside a “field” span. So lets create a method that will do that for us"

html div class: 'row'; 
with: [  
	html span class: 'label'; with: aLabel. 
	html span class: 'field'; with: anInputFieldBlock 
]. 
]

{ #category : #actions }
MyContactEditor >> save [ 
self contact update. 
self answer: true. 
]