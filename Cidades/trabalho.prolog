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
:-dynamic ligacao/5.

%---------------------------------pesquisa em profundidade primeiro

resolve_pp(Nodo, Dst, [Nodo|Caminho]) :-
    profundidadeprimeiro(Nodo, Dst, Caminho).

profundidadeprimeiro(Dst, Dst, [Caminho]).

profundidadeprimeiro(Nodo, Dst, [ProxNodo|Caminho]) :-
    ligacao(Nodo,_,ProxNodo,_,_),
    profundidadeprimeiro(ProxNodo, Dst, Caminho).


%---------------------------------filtra caracteristicas

resolve_caracteristicas(Nodo, Dst,L, [Nodo|Caminho]) :-
    caracteristicas(Nodo, Dst, L, Caminho).

caracteristicas(Dst, Dst, B, [Caminho]) :- findall((O),cidade(Dst,_,_,_,_,O),L),
                                        conf_list(B,L).

caracteristicas(Nodo, Dst, B, [ProxNodo|Caminho]) :-
    ligacao(Nodo,_,ProxNodo,_,_),
    findall((O),cidade(Nodo,_,_,_,_,O),L),
    conf_list(B,L),
    caracteristicas(ProxNodo, Dst, B, Caminho).

%---------------------------------pesquisa sem caracteristicas

resolve_sem_caracteristicas(Nodo, Dst,L, [Nodo|Caminho]) :-
    sem_caracteristicas(Nodo, Dst, L, Caminho).

sem_caracteristicas(Dst, Dst, B, [Dst|_]) :- findall((O),cidade(Dst,_,_,_,_,O),L),
                                         nao(conf_list(B,L)).

sem_caracteristicas(Nodo, Dst, B, [ProxNodo|Caminho]) :-
    ligacao(Nodo,_,ProxNodo,_),
    findall((O),cidade(Nodo,_,_,_,_,O),L),
    nao(conf_list(B,L)),
    sem_caracteristicas(ProxNodo, Dst, B, Caminho).

%---------------------------------pesquisa com cidade com maior numero de carreiras
/*
resolve_maior(Nodo, Dst, [Nodo|Caminho], M) :-
    maior(Nodo, Dst, Caminho, M).


maior(Dst, Dst,[_],0).

maior(Nodo, Dst, [ProxNodo|Caminho],P) :-
    ligacao(Nodo,_,ProxNodo,_),
    maior(ProxNodo, Dst, Caminho,M),
    findall((C),cidade(Nodo,_,_,_,_,_,_,C,_,_,_),L),
    comp(L,N),
    N>=M,
    P is N.

maior(Nodo, Dst, [ProxNodo|Caminho],P) :-
    ligacao(Nodo, ProxNodo,_),
    maior(ProxNodo, Dst, Caminho,M),
    findall((C),cidade(Nodo,_,_,_,_,_,_,C,_,_,_),L),
    comp(L,N),
    M>N,
    P is M.
*/
%---------------------------------pesquisa com menor número de paragens

todos(A,B,L) :- findall((S),resolve_pp(A,B,S),L).

melhor(A,B,L,Custo) :- findall((S,C),(resolve_pp(A,B,S), length(S,C)),L), minimo(L,(S,Custo)).

minimo([(P,X)],(P,X)).
minimo([_,X|L],(Py,Y)) :- minimo(L,(Py,Y)), X>Y.
minimo([Px,X|L],(Px,X)) :- minimo(L,(_,Y)), X=<Y.

%---------------------------------pesquisa só com publicidade
/*
resolve_pub(Nodo, Dst,L, [Nodo|Caminho]) :-
    pub(Nodo, Dst, L, Caminho).

pub(Dst, Dst, B, [Caminho]) :- findall((O),cidade(Dst,_,_,_,_,P,_,_,_,_,_),L),
                                    pertence(B,L).

pub(Nodo, Dst, B, [ProxNodo|Caminho]) :-
    ligacao(Nodo, ProxNodo,_),
    findall((O),cidade(Nodo,_,_,_,_,P,_,_,_,_,_),L),
    pertence(B,L),
    pub(ProxNodo, Dst, B, Caminho).


%---------------------------------pesquisa só com abrigo

resolve_abrigo(Nodo, Dst,L, [Nodo|Caminho]) :-
    abrigo(Nodo, Dst, L, Caminho).

abrigo(Dst, Dst, B, [Caminho]) :- findall((A),cidade(Dst,_,_,_,A,_,_,_,_,_,_),L),
                                    nao(pertence(B,L)).


abrigo(Nodo, Dst, B, [ProxNodo|Caminho]) :-
    ligacao(Nodo, ProxNodo,_),
    findall((A),cidade(Nodo,_,_,_,A,_,_,_,_,_,_),L),
    nao(pertence(B,L)),
    abrigo(ProxNodo, Dst, B, Caminho).

*/
%---------------------------------funcs auxiliares

comp([H|T],N) :- length(H,N).

nao(Q):- Q,!,fail.
nao(Q).

conf_list([H|T],L) :- pertence(H,L).

conf_list([_|T],L) :- conf_list(T,L).

pertence(X,[X|T]).
pertence(X,[_|T]):- pertence(X,T).

