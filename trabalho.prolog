%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% SIST. REPR. CONHECIMENTO E RACIOCINIO - MiEI/3
% TRABALHO INDIVIDUAL

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% SISTEMA DE TRANSPORTES DO CONCELHO DE OEIRAS
% OBJECTIVOS:
% -> Calcular um trajecto entre dois pontos;
% -> Selecionar apenas algumas das operadores de transporte para um determinado percurso;
% -> Excluir um ou mais operadores de transporte para o percurso;
% -> Identificar quais as paragens com maior numero de carreiras num determinado percurso;
% -> Escolher o menor percurso (usando criterio menor numero de paragens);
% -> Escolher o percurso mais rapido (usando criterio da distancia);
% -> Escolher o percurso que passe apenas por abrigos com publicidade;
% -> Escolher o percurso que passe apenas por paragens abrigadas;
% -> Escolher um ou mais pontos intermedios por onde o percurso devera passar.

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% SICStus PROLOG: Declaracoes iniciais

:- set_prolog_flag( discontiguous_warnings,off ).
:- set_prolog_flag( single_var_warnings,off ).
%:- set_prolog_flag( unknown,fail ).

:- use_module(library(csv)).


%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% SICStus PROLOG: definicoes iniciais

:- op( 900,xfy,'::' ).
:- op( 900,xfy,'e'  ).
:- op( 900,xfy,'ou' ).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Meta predicados.

:- dynamic ponto/2.
:- dynamic paragem/16.

importCSV :-
    csv_read_file('paragenscsv.csv', Data, [functor(paragem), separator(0',)]), %'
    maplist(assert, Data).

