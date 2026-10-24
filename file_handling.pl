% write
write_file:-
    open('file.txt', write , Stream),
    write(Stream, 'Hello My Friend!'),
    close(Stream).

% read file
read_file:-
    open('file.txt', read , Stream),
    read_string(Stream, _, Content),
    write(Content),
    close(Stream).