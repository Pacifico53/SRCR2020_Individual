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

filtro_excluir(Inicio, Final,L, [Inicio|Path]) :-
    aux_excluir(Inicio, Final, L, Path).

aux_excluir(Final, Final, B, [Final|_]) :- findall((C),cidade(Dst,_,_,_,_,C),L),
                                        nao(conf_list(B,L)).

aux_excluir(Inicio, Final, B, [ProxNodo|Path]) :-
    ligacao(Inicio,ProxNodo,_),
    findall((C),cidade(Nodo,_,_,_,_,C),L),
    nao(conf_list(B,L)),
    aux_excluir(ProxNodo, Final, B, Path).

%---------------------------------Pesquisa com menor número de cidades percorridas

calc_length(P, [L,P]) :-
    length(P,L).

menos_cidades(A,B,S) :-
    findall(P, trajecto(A,B,P), Ps),
    maplist(calc_length, Ps, Ls),
    sort(Ls, [[_,S]|_]).

%---------------------------------Menor distancia

path_min(A, B, Path, Length) :-
        travel(A, B, [A], Q, Length).

travel(A, B, P, [B|P], L) :-
        ligacao(A, B, L).
travel(A, B, Visited, Path, L) :-
        ligacao(A, C, D),
        C \== B,
        \+member(C, Visited),
        travel(C, B, [C|Visited], Path, L1),
        L is D+L1.

shortest(A, B, Path, Length) :-
    setof([P,L],path_min(A, B, P, L), Set),
    Set = [_|_],
    minimal(Set, [Path,Length]).

minimal([F|R], M) :-
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

