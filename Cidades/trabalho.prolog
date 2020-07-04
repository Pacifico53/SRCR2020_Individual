%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% SIST. REPR. CONHECIMENTO E RACIOCINIO - MiEI/3

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Programacão em logica 
% Resolução de problemas de pesquisa

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% SICStus PROLOG: Declaracoes iniciais

:- set_prolog_flag( discontiguous_warnings,off ).
:- set_prolog_flag( single_var_warnings,off ).
:- set_prolog_flag( unknown,fail ).

:-dynamic cidade/6.
:-dynamic adjacente/3.

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
%Cidade TODO ADICIONAR CIDADES


%TODO---------------------------------pesquisa em profundidade primeiro

resolve_pp(Nodo, Dst, [Nodo|Caminho]) :-
	profundidadeprimeiro(Nodo, Dst, Caminho).


profundidadeprimeiro(Dst, Dst, [_]).

profundidadeprimeiro(Nodo, Dst, [ProxNodo|Caminho]) :-
	adjacente(Nodo, ProxNodo,_),
	profundidadeprimeiro(ProxNodo, Dst, Caminho).


%---------------------------------filtra operadoras 

resolve_operadoras(Nodo, Dst,L, [Nodo|Caminho]) :-
	operadoras(Nodo, Dst, L, Caminho).
	
operadoras(Dst, Dst, B, [_]) :- findall((O),paragem(Dst,_,_,_,_,_,O,_,_,_,_),L),
										 conf_list(B,L).

operadoras(Nodo, Dst, B, [ProxNodo|Caminho]) :-
	adjacente(Nodo, ProxNodo,_),
	findall((O),paragem(Nodo,_,_,_,_,_,O,_,_,_,_),L),
	conf_list(B,L),
	operadoras(ProxNodo, Dst, B, Caminho).


%---------------------------------pesquisa sem operadoras

resolve_sem_operadoras(Nodo, Dst,L, [Nodo|Caminho]) :-
	sem_operadoras(Nodo, Dst, L, Caminho).

sem_operadoras(Dst, Dst, B, [Dst|_]) :- findall((O),paragem(Dst,_,_,_,_,_,O,_,_,_,_),L),
										 nao(conf_list(B,L)).

sem_operadoras(Nodo, Dst, B, [ProxNodo|Caminho]) :-
	adjacente(Nodo, ProxNodo,_),
	findall((O),paragem(Nodo,_,_,_,_,_,O,_,_,_,_),L),
	nao(conf_list(B,L)),
	sem_operadoras(ProxNodo, Dst, B, Caminho).

%---------------------------------pesquisa com paragem com maior numero de carreiras

resolve_maior(Nodo, Dst, [Nodo|Caminho], M) :-
	maior(Nodo, Dst, Caminho, M).


maior(Dst, Dst,[_],0).

maior(Nodo, Dst, [ProxNodo|Caminho],P) :-
	adjacente(Nodo, ProxNodo,_),
	maior(ProxNodo, Dst, Caminho,M),
	findall((C),paragem(Nodo,_,_,_,_,_,_,C,_,_,_),L),
	comp(L,N),
	N>=M,
	P is N.

maior(Nodo, Dst, [ProxNodo|Caminho],P) :-
	adjacente(Nodo, ProxNodo,_),
	maior(ProxNodo, Dst, Caminho,M),
	findall((C),paragem(Nodo,_,_,_,_,_,_,C,_,_,_),L),
	comp(L,N),
	M>N,
	P is M.

%---------------------------------pesquisa com menor número de paragens

todos(A,B,L) :- findall((S),resolve_pp(A,B,S),L).

melhor(A,B,L,Custo) :- findall((S,C),(resolve_pp(A,B,S), length(S,C)),L), minimo(L,(S,Custo)).

minimo([(P,X)],(P,X)).
minimo([_,X|L],(Py,Y)) :- minimo(L,(Py,Y)), X>Y.
minimo([Px,X|L],(Px,X)) :- minimo(L,(_,Y)), X=<Y.


%---------------------------------pesquisa só com publicidade

resolve_pub(Nodo, Dst,L, [Nodo|Caminho]) :-
	pub(Nodo, Dst, L, Caminho).

pub(Dst, Dst, B, [_]) :- findall((_),paragem(Dst,_,_,_,_,_,_,_,_,_,_),L),
									pertence(B,L).

pub(Nodo, Dst, B, [ProxNodo|Caminho]) :-
	adjacente(Nodo, ProxNodo,_),
	findall((_),paragem(Nodo,_,_,_,_,_,_,_,_,_,_),L),
	pertence(B,L),
	pub(ProxNodo, Dst, B, Caminho).


%---------------------------------pesquisa só com abrigo

resolve_abrigo(Nodo, Dst,L, [Nodo|Caminho]) :-
	abrigo(Nodo, Dst, L, Caminho).

abrigo(Dst, Dst, B, [_]) :- findall((A),paragem(Dst,_,_,_,A,_,_,_,_,_,_),L),
									nao(pertence(B,L)).								   

abrigo(Nodo, Dst, B, [ProxNodo|Caminho]) :-
	adjacente(Nodo, ProxNodo,_),
	findall((A),paragem(Nodo,_,_,_,A,_,_,_,_,_,_),L),
	nao(pertence(B,L)),
	abrigo(ProxNodo, Dst, B, Caminho).

%---------------------------------funcs auxiliares

comp([H|_],N) :- length(H,N).

nao(Q):- Q,!,fail.
nao(_).

conf_list([H|_],L) :- pertence(H,L).

conf_list([_|T],L) :- conf_list(T,L).

pertence(X,[X|_]).
pertence(X,[_|T]):- pertence(X,T).
