pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(hello_world).

    test(hello_world, condition(true)) :-
        hello_world('Hello World!').

    test(hello_world, condition(false)) :-
        hello_world('Hello Fred!').

    test(empty_board) :-
        count_neighbors(empty_board, 0).

:- end_tests(hello_world).
