%Atoms

kazimierzIISprawiedliwy.
leszekBialy.
konradIMazowiecki.
boleslawVWstydliwy.
boleslaw1.
kazimierzI.
siemowit1.
leszczekCzarny.
siemomysl.
wladyslawILokietek.
kazimierzII.
siemowit2.
leszek.
przemysl.
kazimierzIII.
kazimierzIIIWielki.
wladyslawGarbaty.
boleslaw2.
wladyslawBialy.
ksiazetaMazowieccy.


%Facts
 
man(kazimierzIISprawiedliwy).
man(leszekBialy).
man(konradIMazowiecki).
man(boleslawVWstydliwy).
man(boleslaw1).
man(kazimierzI).
man(siemowit1).
man(leszczekCzarny).
man(siemomysl).
man(wladyslawILokietek).
man(kazimierzII).
man(siemowit2).
man(leszek).
man(przemysl).
man(kazimierzIII).
man(kazimierzIIIWielki).
man(wladyslawGarbaty).
man(boleslaw2).
man(wladyslawBialy).
man(ksiazetaMazowieccy).

woman(theWifeOfKazimierzIIISprawiedliwy).
woman(theWifeOfKonradIMazowiecki).
woman(theWifeOfSiemowit1).
woman(theWifeOfKazimierzI).
woman(tTheWifeOfSiemomysl).
woman(theWifeOfWladyslawILokietek).
woman(theWifeOfSiemowit2).
woman(theWifeOfKazimierzIII).

death(kazimierzIISprawiedliwy, 1194).
death(leszekBialy, 1227).
death(konradIMazowiecki, 1247).
death(boleslawVWstydliwy, 1279).
death(boleslaw1, 1248).
death(kazimierzI, 1267).
death(siemowit1, 1262).
death(leszczekCzarny, 1288).
death(siemomysl, 1287).
death(wladyslawILokietek, 1333).
death(kazimierzII, 1294).
death(siemowit2, 1312).
death(leszek, 1340).
death(przemysl, 1339).
death(kazimierzIII, 1347).
death(kazimierzIIIWielki, 1370).
death(wladyslawGarbaty, 1351).
death(boleslaw2, 1328).
death(wladyslawBialy, 1388).


/*  child (child, parent).  */

child(leszekBialy, kazimierzIISprawiedliwy).
child(konradIMazowiecki, kazimierzIISprawiedliwy).
child(boleslaw1, konradIMazowiecki).
child(kazimierzI, konradIMazowiecki).
child(siemowit1, konradIMazowiecki).
child(ksiazetaMazowieccy, siemowit1).
child(leszekCzarny, kazimierzI).
child(siemomysl, kazimierzI).
child(wladyslawILokietek, kazimierzI).
child(kazimierzII, kazimierzI).
child(siemowit2, kazimierzI).
child(leszek, siemomysl).
child(przemysl, siemomysl).
child(kazimierzIII, siemomysl).
child(kazimierzIIIWielki, wladyslawILokietek).
child(wladyslawGarbaty, siemowit2).
child(boleslaw2, siemowit2).
child(wladyslawBialy, kazimierzIII).

/*  grandchild (grandchild, grandparent).  */

grandchild(boleslaw1, kazimierzIISprawiedliwy).
grandchild(kazimierz, kazimierzIISprawiedliwy).
grandchild(siemowit1, kazimierzIISprawiedliwy).
grandchild(leszekCzarny, konradIMazowiecki).
grandchild(siemomysl, konradIMazowiecki).
grandchild(wladyslawILokietek, konradIMazowiecki).
grandchild(kazimierzII, konradIMazowiecki).
grandchild(siemowit2, konradIMazowiecki).
grandchild(ksiazeta_mazowieccy, konradIMazowiecki).
grandchild(leszek, kazimierzI).
grandchild(przemysl, kazimierzI).
grandchild(kazimierzIII, kazimierzI).
grandchild(kazimierzIIIWielki, kazimierzI).
grandchild(wladyslawGarbaty, kazimierzI).
grandchild(boleslaw2,kazimierzI).
grandchild(wladyslawBialy, siemomysl).


% Rules

members :- man(X), format(' ~w\n', [X]),fail.
when_they_died:- death(X,Y), format(' ~w died in ~w\n', [X,Y]),fail.

parent(X,Y) :- child(Y,X).
sibling(X,Y) :- child(X,Z), child(Y,Z), X\= Y.
ancestor(X,Y) :- parent(X,Y); ( parent(X,Z), ancestor(Z,Y) ).
descendand(X,Y) :- ancestor(Y,X).
grandfather(X,Y) :- grandchild(Y,X).

children_of_kazimierzIISprawiedliwy :- child(X,kazimierzIISprawiedliwy), format(' ~w\n',[X]),fail.
children_of_konradIMazowiecki :- child(X,konradIMazowiecki),  format('~w\n',[X]),fail.
children_of_kazimierzI :- child(X,kazimierzI), format(' ~w\n',[X]),fail.
children_of_siemomysl :- child(X,siemomysl), format(' ~w\n',[X]),fail.
children_of_siemowit2 :- child(X,siemowit2), format(' ~w\n',[X]),fail.
children_of_wladyslawILokietek :- child(X,wladyslawILokietek), format(' ~w\n',[X]),fail.
children_of_kazimierzIII :- child(X,kazimierzIII), format(' ~w\n',[X]),fail.


description :- write('The picture presents the family tree of the Kuyavian Piast dynasty: '),nl,
	members;
    write('The head of the dynasty is Kazimierz II Sprawiedliwy. '),nl,
    write('Who had two sons: '),nl,
    children_of_kazimierzIISprawiedliwy,
    write('Konrad I Mazowiecki had three sons: '),nl,
    children_of_konradIMazowiecki;
    write('Boleslaw did not have sons. Siemowit descendants were the dukes of Mazovia '),nl,
    write('Kazimierz I had five sons. Their names are: '),nl,
    children_of_kazimierzI;
    write('Siemomysl had three sons: '),nl,
    children_of_siemomysl;
    write('and one grandson '),nl,
    children_of_kazimierzIII;
    write('Wladyslaw I Lokietek had one son:'),nl,                        
    children_of_wladyslawILokietek;
    write('Siemowit had two sons:'),nl,                                          
    children_of_siemowit2;                                                
    write('The last living Kuyavian Piast was Wladyslaw Bialy.'),nl.                                                                         
