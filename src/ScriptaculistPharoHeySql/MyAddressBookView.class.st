Class {
	#name : #MyAddressBookView,
	#superclass : #WAComponent,
	#instVars : [
		'addressBook'
	],
	#category : #ScriptaculistPharoHeySql
}

{ #category : #adding }
MyAddressBookView >> addContact [
| contactEditor contact |
contact := MyContact new. 
contactEditor := MyContactEditor on: contact. 
(self call: contactEditor) ifTrue: [ self addressBook addContact: contact ]. 
"this is all pretty straightforward except to point out that we will only add our new contact if the editor replies true (as a result of clicking save)"

]

{ #category : #accessing }
MyAddressBookView >> addressBook [
	^ addressBook ifNil: [ addressBook := MyAddressBook new ]. 
]

{ #category : #rendering }
MyAddressBookView >> renderContentOn: html [
	html heading level: 1; with: 'Contacts'. 
	self addressBook contacts do: [ :contact |
		html div class: ('row'); 
		with: [ 
			html anchor callback: [ self showContact: contact ]; 
			with: (contact firstName , ' ' , contact surname)
		]
	]. 
	html form: [ 
		html span class: 'button'; 
		with: [ html submitButton on: #addContact of: self ]
		"Note here the the on: aSymbol of: anObject is a convenience method that uses aSymbol to derive a label for the button and the method to perform."
	]. 
]

{ #category : #'as yet unclassified' }
MyAddressBookView >> showContact: aContact [
self call: (MyContactEditor on: aContact). 
"managing save and cancel for new contacts is easy. For editing it is a little more involved, we will implement a memento for the contact"
]
