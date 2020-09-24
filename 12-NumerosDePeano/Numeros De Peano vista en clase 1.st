!classDefinition: #I category: #'Numeros De Peano'!
DenotativeObject subclass: #I
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros De Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'I class' category: #'Numeros De Peano'!
I class
	instanceVariableNames: ''!

!I class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 04:58:15'!
*unNumero
	^unNumero.! !

!I class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 04:40:03'!
+unSumando
 	^unSumando siguiente.! !

!I class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 04:54:02'!
-unSustrayendo
 	^self error:'no se admiten negativos'! !

!I class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 20:11:14'!
/ unNumero
	^ self error: self descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor ! !

!I class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 05:11:36'!
<= unNumero
	^true.! !

!I class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 20:11:25'!
descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor
	^'no se puede hacer esta division'! !

!I class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 04:42:29'!
siguiente
	
	^ObjectBuilder create: self name,'I' asChildOf: self collaboratorNames:''  in: 'Numeros De Peano'.! !


!classDefinition: #II category: #'Numeros De Peano'!
I subclass: #II
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros De Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'II class' category: #'Numeros De Peano'!
II class
	instanceVariableNames: ''!

!II class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 04:58:59'!
* unNumero
	^ unNumero + (self anterior*unNumero)! !

!II class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 04:43:28'!
+ unSumando
	^self anterior + unSumando siguiente.! !

!II class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 04:56:52'!
-unSustrayendo 
	unSustrayendo=I ifTrue:[^self anterior]
	ifFalse:[^self anterior-unSustrayendo anterior]! !

!II class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 05:15:51'!
/ unDivisor
	|res|
	
	self<=unDivisor ifTrue:[^self error:' no se puede dividir'].
	
	res := I.
		[(res*unDivisor) <= self] whileTrue:[
			res := res siguiente
			].
	^res anterior ! !

!II class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 05:12:50'!
<= unNumero
	unNumero = I
		ifTrue:[^false]
		ifFalse:[^ self anterior <= unNumero anterior]! !

!II class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 04:33:04'!
anterior
	self=II ifTrue:[^I] 
	ifFalse:[^ObjectBuilder create: self name allButFirst asChildOf: II collaboratorNames:''  in: 'Numeros De Peano'.]! !

!II class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 04:31:59'!
siguiente
	"^ObjectBuilder create: self name,'I' collaboratorNames:''  in:'Numeros De Peano' "
	"^self cloneNamed: self name,'I'."
	^ObjectBuilder create: self name,'I' asChildOf: II collaboratorNames:''  in: 'Numeros De Peano'.! !


!classDefinition: #III category: #'Numeros De Peano'!
II subclass: #III
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros De Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'III class' category: #'Numeros De Peano'!
III class
	instanceVariableNames: ''!

!III class methodsFor: 'as yet unclassified' stamp: 'j 9/17/2020 20:30:50'!
anterior
	^ObjectBuilder create: self name allButFirst asChildOf: I collaboratorNames:''  in: 'Numeros De Peano'.! !


!classDefinition: #IIII category: #'Numeros De Peano'!
II subclass: #IIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros De Peano'!


!classDefinition: #IIIII category: #'Numeros De Peano'!
II subclass: #IIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros De Peano'!


!classDefinition: #IIIIII category: #'Numeros De Peano'!
II subclass: #IIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros De Peano'!


!classDefinition: #IIIIIII category: #'Numeros De Peano'!
II subclass: #IIIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros De Peano'!


!classDefinition: #IIIIIIII category: #'Numeros De Peano'!
II subclass: #IIIIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros De Peano'!


!classDefinition: #IIIIIIIII category: #'Numeros De Peano'!
II subclass: #IIIIIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros De Peano'!
