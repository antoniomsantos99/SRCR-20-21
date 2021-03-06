:- use_module(library(lists)).
:- use_module(library(date)).


:- op(900,xfy,'::').

% ---------------------------------
% FUNCOES AUXILIARES
% ---------------------------------
% Apresenta todas as solucoes
solucoes(T,Q,S) :- findall(T,Q,S).

% Inserção de conhecimento
insercao(Q) :- assert(Q).
insercao(Q) :- retract(Q), !, fail.

% Remoção de conhecimento
remocao(Q) :- retract(Q).
remocao(Q) :- assert(Q), !, fail.

% Testa se todos os predicados são verdadeiros
testaPredicados([]).
testaPredicados([I|L]) :- I, testaPredicados(L).

% Insere novo conhecimento na base de conhecimento
novoConhecimento(T) :- solucoes(I, +T::I, L),
               insercao(T),
               testaPredicados(L).

% Retira conhecimento da base de conhecimento
removeConhecimento(T) :- solucoes(I, -T::I, L),
                remocao(T),
                testaPredicados(L).

% Vê se um genero é válido
genderValido('M').
genderValido('F').

% Elimina elementos repetidos de uma lista 
repetidos([],[]).
repetidos([X|L],[X|NL]) :- removerElem(L,X,TL), repetidos(TL,NL).

removerElem([],_,[]).
removerElem([X|L],X,NL) :- removerElem(L,X,NL).
removerElem([X|L],Y,[X|NL]) :- X \== Y, removerElem(L,Y,NL).

% Verifica se um elemento pertence a uma lista
pertence(A,[A|_]).
pertence(A,[_|XS]) :- pertence(A,XS).

% Verifica se duas listas têm elementos em comum
temElementosComum([H|_], L2) :- pertence(H, L2).
temElementosComum([_|T], L2) :- temElementosComum(T, L2).

% Calcular a idade
calcularIdade(IdU,R) :- utente(IdU,_,_,_,DNasc,_,_,_,_,_,_),
                        split_string(DNasc, "-", "", Sp),
                        nth0(0,Sp,Ano), nth0(1,Sp,Mes), nth0(2,Sp,Dia),
                        get_date_time_value(year, AnoN), get_date_time_value(month, MesN), get_date_time_value(day, DiaN),
                        atom_number(Ano, Year), atom_number(Mes, Month), atom_number(Dia, Day),
                        atom_string(AnoN, YearN), atom_number(YearN, YearNN),
                        atom_string(MesN, MonthN), atom_number(MonthN, MonthNN),
                        atom_string(DiaN, DayN), atom_number(DayN, DayNN),
                        Age is (YearNN - Year),
                        (Month > MonthNN -> AgeN is Age-1 ;
                        Month < MonthNN -> AgeN is Age ;
                            (Day > DayNN -> AgeN is Age-1 ;
                            AgeN is Age)),
                        R = AgeN.

% Obter a data atual
get_date_time_value(Key, Value) :-
    get_time(Stamp),
    stamp_date_time(Stamp, DateTime, local),
    date_time_value(Key, DateTime, Value).

% retorna uma lista de todos os ids dos utentes
listaIdUtentes(L) :- findall(X,utente(X,_,_,_,_,_,_,_,_,_,_),L).

% Intersecao entre duas listas
intersecao([], _, []).
intersecao([H1|T1], L2, [H1|R]) :- member(H1, L2), intersecao(T1, L2, R).
intersecao([_|T1], L2, R) :- intersecao(T1, L2, R).



% Doencas correspondentes a fase 1 (50 ou mais anos)
doencas1Fase(IdU) :- utente(IdU,_,_,_,_,_,_,_,_,D,_),
                    A = ['Insuficiencia renal','Doenca renal cronica','Doenca coronaria','DPOC'],
                    temElementosComum(A,D).

% Doencas correspondentes a fase 2 (50 a 64 anos)
doencas2Fase(IdU) :- utente(IdU,_,_,_,_,_,_,_,_,D,_),
                    A = ['Diabetes','Neoplasia maligna ativa','Doenca renal cronica','Insuficiencia hepatica','Hipertensao arterial','Obesidade'],
                    temElementosComum(A,D).


nomeDoUtente(UId,X) :- utente(UId,X,_,_,_,_,_,_,_,_,_).


% Verifica se um elemento esta vacinado numa certa fase
checkVacinado(UId,F) :- vacinacao(_,UId,_,_,F).

vacinados(X) :- findall(UId,vacinacao(_,UId,_,_,_),X).


% Quantas vacinas recebeu
quantasVacinas(IDU, N) :- Id=IDU,findall(Id,vacinacao(_,Id,_,_,_),X),length(X,N).

% Parse de Data
parseData(K,A,M,D) :- split_string(K, "-", "", Sp),
                        nth0(0,Sp,Ano), nth0(1,Sp,Mes), nth0(2,Sp,Dia),
                        atom_number(Ano, Year), atom_number(Mes, Month), atom_number(Dia, Day),
                        (A is Year, M is Month, D is Day).

% Ve se data 1 é antes de data 2 (1 = True , 0 = False)
comparaDatas(A1,_,_,A2,_,_,0):- A1 > A2.
comparaDatas(A1,M1,_,A2,M2,_,0):- M1 > M2, A1 >= A2.
comparaDatas(A1,M1,D1,A2,M2,D2,0):- D1 > D2, A1 >= A2, M1 >= M2.
comparaDatas(_,_,_,_,_,_,1).

comparaDatasStr(X1,X2,R):- parseData(X1,A1,M1,D1), parseData(X2,A2,M2,D2), comparaDatas(A1,M1,D1,A2,M2,D2,R).

fase1DataI(DI) :- fase('F1',DI,_).
fase1DataF(DF) :- fase('F1',_,DF).
fase2DataI(DI) :- fase('F2',DI,_).
fase2DataF(DF) :- fase('F2',_,DF).
fase3DataI(DI) :- fase('F3',DI,_).
fase3DataF(DF) :- fase('F3',_,DF).

% Verifica a que fase pertence um certo dia
checkFase(D,R):- fase1DataI(DI1), comparaDatasStr(D,DI1,A1),
                fase1DataF(DF1), comparaDatasStr(D,DF1,A2),
                fase2DataI(DI2), comparaDatasStr(D,DI2,A3),
                fase2DataF(DF2), comparaDatasStr(D,DF2,A4),
                fase3DataI(DI3), comparaDatasStr(D,DI3,A5),
                fase3DataF(DF3), comparaDatasStr(D,DF3,A6),
                ((A1==0,A2==1) -> R is 1 ;
                (A3==0,A4==1) -> R is 2 ;
                (A5==0,A6==1) -> R is 3 ;
                R is 0).

%Verifica em fase é que um Utente foi vacinado
checkFaseUtente(UId,R):- vacinacao(_,UId,D,_,1), checkFase(D,R).

%valida o género
generoValido('M').
generoValido('F').








