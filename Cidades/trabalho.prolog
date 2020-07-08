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
:-dynamic ligacao/3.

%---------------------------------Trajecto entre duas cidades:

trajecto(Inicio, Final, Path) :-
    trajecto(Inicio, Final, [], Path).

trajecto(Inicio, Inicio, _, [Inicio]).
trajecto(Inicio, Final, Visitados, [Inicio|Nodos]) :-
    \+ member(Inicio, Visitados),
    Inicio \== Final,
    ligacao(Inicio, Nodo, _),
    trajecto(Nodo, Final, [Inicio|Visitados], Nodos).

%---------------------------------Filtro cidades com caracteristicas/ Filtro minor

filtra_cidades(Inicio, Final, Filter, Path) :-
    filtra_cidades(Inicio, Final, Filter, [], Path).

filtra_cidades(Inicio, Inicio,_ ,_ , [Inicio]).
filtra_cidades(Inicio, Final, Filter, Visitados, [Inicio|Nodos]) :-
    \+ member(Inicio, Visitados),
    Inicio \== Final,
    ligacao(Inicio, Nodo, _),
    cidade(Nodo,_,_,_,_,Filter),
    filtra_cidades(Nodo, Final, Filter, [Inicio|Visitados], Nodos).


%---------------------------------Exclui cidades

% filtra_cidades(Inicio, Final, Filter, Path) :-
%     filtra_cidades(Inicio, Final, Filter, [], Path).
%
% filtra_cidades(Inicio, Inicio,_ ,_ , [Inicio]).
% filtra_cidades(Inicio, Final, Filter, Visitados, [Inicio|Nodos]) :-
%     \+ member(Inicio, Visitados),
%     Inicio \== Final,
%     ligacao(Inicio, Nodo, _),
%     nao(cidade(Nodo,_,_,_,_,Filter)),
%     filtra_cidades(Nodo, Final, Filter, [Inicio|Visitados], Nodos).

filtro_excluir(Nodo, Dst,L, [Nodo|Caminho]) :-
    aux_excluir(Nodo, Dst, L, Caminho).

aux_excluir(Dst, Dst, B, [Dst|_]) :- findall((O),cidade(Dst,_,_,_,_,O),L),
                                         nao(conf_list(B,L)).

aux_excluir(Nodo, Dst, B, [ProxNodo|Caminho]) :-
    ligacao(Nodo,ProxNodo,_),
    findall((O),cidade(Nodo,_,_,_,_,O),L),
    nao(conf_list(B,L)),
    aux_excluir(ProxNodo, Dst, B, Caminho).

%---------------------------------Cidade com maior numero de ligacoes
/*
resolve_maior(Nodo, Dst, [Nodo|Caminho], M) :-
    maior(Nodo, Dst, Caminho, M).


maior(Dst, Dst,[_],0).

maior(Nodo, Dst, [ProxNodo|Caminho],P) :-
    ligacao(Nodo,ProxNodo,_),
    maior(ProxNodo, Dst, Caminho,M),
    findall((C),cidade(Nodo,_,_,_,_,_,_,C,_,_,_),L),
    comp(L,N),
    N>=M,
    P is N.

maior(Nodo, Dst, [ProxNodo|Caminho],P) :-
    ligacao(Nodo,ProxNodo,_),
    maior(ProxNodo, Dst, Caminho,M),
    findall((C),cidade(Nodo,_,_,_,_,_,_,C,_,_,_),L),
    comp(L,N),
    M>N,
    P is M.
*/
%---------------------------------Pesquisa com menor número de cidades percorridas

all_trajectos(A,B,L) :- findall((S),trajecto(A,B,S),L).

menos_cidades(A,B,L,Custo) :- findall((S,C),(trajecto(A,B,S), length(S,C)),L), minimo(L,(S,Custo)).

minimo([(P,X)],(P,X)).
minimo([_,X|L],(Py,Y)) :- minimo(L,(Py,Y)), X>Y.
minimo([Px,X|L],(Px,X)) :- minimo(L,(_,Y)), X=<Y.

prepend_length(P, [L,P]) :-
    length(P,L).

shortest_path(A,B,S) :-
    findall(P, trajecto(A,B,P), Ps),
    maplist(prepend_length, Ps, Ls),
    sort(Ls, [[_,S]|_]).



%---------------------------------Pesquisa cidades minor

filtra_minor(Nodo, Dst,L, [Nodo|Caminho]) :-
    aux_minor(Nodo, Dst, L, Caminho).

aux_minor(Dst, Dst, B, [Caminho]) :- findall((O),cidade(Dst,_,_,_,_,'minor'),L),
                                    pertence(B,L).

aux_minor(Nodo, Dst, B, [ProxNodo|Caminho]) :-
    ligacao(Nodo,ProxNodo,_),
    findall((O),cidade(Nodo,_,_,_,_,P,_,_,_,_,_),L),
    pertence(B,L),
    aux_minor(ProxNodo, Dst, B, Caminho).

%---------------------------------Menor distancia

% path_min(Inicio, Final, Path, Length) :-
%     path_min(Inicio, Final, [], Path, Length).
%
% path_min(Inicio, Inicio, _, [Inicio], L).
% path_min(Inicio, Final, Visitados, [Inicio|Nodos], L) :-
%     \+ member(Inicio, Visitados),
%     Inicio \== Final,
%     ligacao(Inicio, Nodo, D),
%     path_min(Nodo, Final, [Inicio|Visitados], Nodos, L1),
%     L is D+L1.
path_min(A,B,Path,Len) :-
        travel(A,B,[A],Q,Len).

travel(A,B,P,[B|P],L) :-
        ligacao(A,B,L).
travel(A,B,Visited,Path,L) :-
        ligacao(A,C,D),
        C \== B,
        \+member(C,Visited),
        travel(C,B,[C|Visited],Path,L1),
        L is D+L1.

shortest(A,B,Path,Length) :-
    setof([P,L],path_min(A,B,P,L),Set),
    Set = [_|_],
    minimal(Set,[Path,Length]).

minimal([F|R],M) :-
    min(R,F,M).

% minimal path

min([],M,M).
min([[P,L]|R],[_,M],Min) :- L < M, !, min(R,[P,L],Min).
min([_|R],M,Min) :- min(R,M,Min).

%---------------------------------funcs auxiliares

comp([H|T],N) :- length(H,N).

nao(Q):- Q,!,fail.
nao(Q).

conf_list([H|T],L) :- pertence(H,L).

conf_list([_|T],L) :- conf_list(T,L).

pertence(X,[X|T]).
pertence(X,[_|T]):- pertence(X,T).

