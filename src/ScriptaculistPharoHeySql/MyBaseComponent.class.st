Class {
	#name : #MyBaseComponent,
	#superclass : #WAComponent,
	#category : #ScriptaculistPharoHeySql
}

{ #category : #hooks }
MyBaseComponent >> style [ 
^'body { background-color: #fff;
font-family: "Trebuchet MS"}
div{
padding: 2px;
}

.row:nth-child(even) {background-color: #67d ; color: #fff;}
.row:nth-child(odd) {background-color: #99d ; color: #fff;}

.row img { float: left; margin-right: 1em; height: 5em; }

.row .edit-contact-link { text-decoration: underline; }

a{
color: #ccf;
font-weight: bold;
text-decoration: none;
}
h1{
color: orange;
}
.field{
margin-left:30px
}'. 
]
