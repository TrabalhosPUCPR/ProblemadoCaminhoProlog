% EX 1:
conectado(1,2). 
conectado(3,4). 
conectado(5,6). 
conectado(7,8). 
conectado(9,10). 
conectado(12,13). 
conectado(13,14). 
conectado(15,16). 
conectado(17,18). 
conectado(19,20). 
conectado(4,1). 
conectado(6,3). 
conectado(4,7). 
conectado(6,11). 
conectado(14,9). 
conectado(11,15). 
conectado(16,12). 
conectado(14,17). 
conectado(16,19). 

possiveisdestinosfinais(X) :- conectado(X, Y), write(('Possivel destino':Y)),nl, possiveisdestinosfinais(Y).

% EX 2:
cliente(robertinho).
possuibomcredito(robertinho).
item(batata).
estoquedoItem(batata, 5).
precodoItem(batata, 2).

fazerOrdem(C, I) :- cliente(C), possuibomcredito(C), item(I), estoquedoItem(I, Y), Y > 0, precodoItem(I, V), write("Preco total" : V).

% EX 3:
celcius(X, Y) :- Y is ((X-32)*5)/9.
fahrenheit(X, Y) :- Y is (X * 1.8) + 32.


/** <examples>
?- possiveisdestinosfinais(1).
?- possiveisdestinosfinais(16).
?- celcius(98, F).
?- fahrenheit(98, F).
?- fazerOrdem(robertinho, batata).
*/










