Class {
	#name : #MyContactDetailsView,
	#superclass : #WAComponent,
	#instVars : [
		'contact'
	],
	#category : #ScriptaculistPharoHeySql
}

{ #category : #'instance creation' }
MyContactDetailsView class >> on: aContact [
^self new contact: aContact; yourself. 
]

{ #category : #accessing }
MyContactDetailsView >> contact [
	^ contact
]

{ #category : #accessing }
MyContactDetailsView >> contact: anObject [
	contact := anObject
]

{ #category : #accessing }
MyContactDetailsView >> renderContentOn: html [
html anchor
style: 'margin-left: 40px';
onClick: (html scriptaculous effect id: (contact identifier); perform: #toggleBlind);
with: 'Toggle Detail'.

"What we’ve done here is added a new hyperlink “Toggle Detail” which when clicked will call a Scriptaculous #toggleBlind effect on the div who’s id attribute is the contacts identifier."
"http://book.seaside.st/book/web-20/scriptaculous/add-effect"

self renderDetailsDiv: contact identifier on: html
]

{ #category : #accessing }
MyContactDetailsView >> renderDetailsDiv: aString on: html [
html div id: aString;
style: 'display: none';
with: [ html render: 'Name: ', contact fullName.
html break.
html render: 'Birthday: ', contact dateOfBirth printString.
html break.
html render: 'Telephone: ', contact telephoneNumber.
html break.
html render: 'Email: '. contact emailAddress.
html break.
]
]
