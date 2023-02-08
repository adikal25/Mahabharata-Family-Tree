male(kuru).
male(shantanu).
male(bhishma).
male(chitrangada).
male(vichitravirya).
male(parashara).
male(vyasa).
male(dhritarashtra).
male(shakuni).
male(pandu).
male(yudishtira).
male(bhima).
male(arjuna).
male(nakula).
male(sahadeva).
male(duryodhana).
male(dushasana).
male("98_sons").
male(abhimanyu).
male(parikshith).

female(ganga).
female(satyavati).
female(ambika).
female(ambalika).
female(gandhari).
female(kunti).
female(madri).
female(draupadi).
female(subhadra).
female(srutakirti).
female(dussala).
female(uttara).


parent(kuru,shantanu).
parent(shantanu,bhishma).
parent(shantanu,chitrangada).
parent(ganga,bhishma).
parent(satyavati,chitrangada).
parent(shantanu,vichitravirya).
parent(satyavati,vichitravirya).
parent(parashara,vyasa).
parent(satyavati,vyasa).
parent(vyasa,dhritarashtra).
parent(ambika,dhritarashtra).
parent(vyasa,pandu).
parent(ambalika,pandu).
parent(pandu,yudishtira).
parent(pandu,bhima).
parent(pandu,arjuna).
parent(kunti,yudishtira).
parent(kunti,bhima).
parent(kunti,arjuna).
parent(pandu,nakula).
parent(pandu,sahadeva).
parent(madri,nakula).
parent(madri,sahadeva).
parent(dhritarashtra,duryodhana).
parent(dhritarashtra,dussala).
parent(dhritarashtra,dushasana).
parent(dhritarashtra,"98_sons").
parent(gandhari,duryodhana).
parent(gandhari,dussala).
parent(gandhari,dushasana).
parent(gandhari,"98_sons").
parent(arjuna,srutakirti).
parent(arjuna,abhimanyu).
parent(draupadi,srutakirti).
parent(subhadra,abhimanyu).
parent(abhimanyu,parikshith).
parent(uttara,parikshith).






sibling(shakuni,gandhari).






couple(shantanu,ganga).
couple(shantanu,satyavati).
couple(parashara,satyavati).
couple(vichitravirya,ambika).
couple(vyasa,ambalika).
couple(vyasa,ambika).
couple(pandu,kunti).
couple(pandu,madri).
couple(dhritarashtra,gandhari).
couple(arjuna,draupadi).
couple(arjuna,subhadra).
couple(abhimanyu,uttara).



ancestor(X,Y):- parent(X,Y).
ancestor(X,Y):- parent(Z,Y),ancestor(X,Z).
sibling(X,Y):- father(Z,X),father(Z,Y),mother(W,X),mother(W,Y),X\=Y.
father(X,Y):- parent(X,Y),male(X).
mother(X,Y):- parent(X,Y),female(X).
stepMother(X,Y):-father(Z,Y),mother(W,Y),couple(Z,X),X\=W.
stepFather(X,Y):-mother(W,Y),father(Z,Y),couple(X,W),X\=Z.
brother(X,Y):- sibling(X,Y),male(X).
sister(X,Y):- sibling(X,Y),female(X).
stepsibling(X,Y):- mother(Z,X),mother(Z,Y),father(W,X),father(V,Y),W\=V,X\=Y.
stepBrother(X,Y):- father(Z,X),father(Z,Y),mother(W,X), mother(V,Y),male(X),W\=V, X\=Y.
stepSister(X,Y):- father(Z,X),father(Z,Y),mother(W,X), mother(V,Y),female(X),W\=V, X\=Y.
grandfather(X,Y):- parent(Z,Y),parent(X,Z),male(X).
grandmother(X,Y):- parent(Z,Y),parent(X,Z),female(X).
maternalUncle(X,Y):- mother(Z,Y),brother(X,Z).
maternalaunt(X,Y):- mother(Z,Y),sister(X,Z).
maternalUncleWife(X,Y):-mother(Z,Y),brother(W,Z),couple(X,W).
maternalauntHusband(X,Y):-mother(Z,Y),sister(Z,W),couple(X,W).
paternaluncle(X,Y):- father(Z,Y),brother(Z,X).
paternalaunt(X,Y):- father(Z,Y),brother(X,Z),female(X),male(Z).
paternaluncleWife(X,Y):-paternalUncle(W,Y),couple(W,X).
paternalauntHusband(X,Y):-paternalAunt(W,Y),couple(X,W).






































