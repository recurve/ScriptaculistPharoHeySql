Class {
	#name : #MyContactDetailsView,
	#superclass : #MyBaseComponent,
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
MyContactDetailsView >> produceThumbnailIfAvailableOn: html [
contact photo notNil & contact photoMimeType notNil
ifTrue: [html image document: contact photo mimeType: contact photoMimeType;
altText: 'Picture of ' , contact fullName]
]

{ #category : #accessing }
MyContactDetailsView >> renderContentOn: html [
	self renderContentOnAdvanced: html. 
	"self renderContentOnSimple: html. "
	
"There are two ways. Advanced has extra toggle of show hide. Simple doesn't change the label"
]

{ #category : #accessing }
MyContactDetailsView >> renderContentOnAdvanced: html [
	html anchor
		id: contact identifier , 'show';
		style: 'margin-left:40px';
		onClick:
			(html scriptaculous effect
				id: contact identifier;
				toggleBlind;
				onBeforeStart: (html scriptaculous element id: (contact identifier , 'show'); toggle);
				onAfterFinish: (html scriptaculous element id: (contact identifier , 'hide'); toggle));
		with: 'Show Detail'.
	html anchor
		id: contact identifier , 'hide';
		style: 'margin-left:40px;display:none';
		onClick:
			(html scriptaculous effect
				id: contact identifier;
				toggleBlind;
				onBeforeStart: (html scriptaculous element id: (contact identifier , 'hide'); toggle);
				onAfterFinish: (html scriptaculous element id: (contact identifier , 'show'); toggle));
		with: 'Hide Detail'.
	self renderDetailsDiv: contact identifier on: html

	"What we’ve done here is added a new hyperlink “Toggle Detail” which when clicked will call a Scriptaculous #toggleBlind effect on the div who’s id attribute is the contacts identifier."
	"http://book.seaside.st/book/web-20/scriptaculous/add-effect"

]

{ #category : #accessing }
MyContactDetailsView >> renderContentOnSimple: html [
	html anchor
		style: 'margin-left: 40px';
		onClick:
			(html scriptaculous effect
				id: contact identifier;
				toggleBlind);
		with: 'Toggle Detail'.
		
	self renderDetailsDiv: contact identifier on: html. 
	
	"What we’ve done here is added a new hyperlink “Toggle Detail” which when clicked will call a Scriptaculous #toggleBlind effect on the div who’s id attribute is the contacts identifier."
	"http://book.seaside.st/book/web-20/scriptaculous/add-effect"

]

{ #category : #accessing }
MyContactDetailsView >> renderDetailsDiv: aString on: html [
html div id: aString;
style: 'display: none';
with: [ 
	self produceThumbnailIfAvailableOn: html. 
	html render: 'Name: ', contact fullName.
	html break.
	html render: 'Birthday: ', contact dateOfBirth asDate printString.
	html break.
	html render: 'Telephone: ', contact telephoneNumber.
	html break.
	html render: 'Email: '. contact emailAddress.
	html break.
]
]
