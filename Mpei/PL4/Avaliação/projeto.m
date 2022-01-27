%Iniciar a app
load('Namigos.mat', 'Namigos')
app()
function app()
id = 0;


while(id < 1 || id > 1000)
    prompt = "\n Please insert an id number(1-943)\n";
    id = input(prompt);
end

option = 0;
p = "Menu:" + "\n1-Your Friends"   +"\n2- Interests from most similiar user" + "\n3- Search Name" + "\n4- Find most similar users based in list of interests" + "\nExit";
while(option < 1 || option > 5)
    
    
    option = input(p);
    
    
end

switch(option)                                             % chose option to run    
        case 1
            amigos(id);
        case 2
            GetSuggestions(id,Jac,c,dic);
        case 3
            SearchTitle(Hashcodes,seed,dic);
        case 4
            fprintf('\nExit\n');
        otherwise
            fprintf('\nOpção Inválida.\n');    
    end






function amigos = amigos(id)
    userID = id;
    numbersOfFriends = sum(Namigos(1, :) ~=0);
    fprintf("Number of friends: %f", NumberOfFriends);
    fprintf("Friends: \n");
    for i = 1:numbersOfFriends
        fprintf("%f, \n", Namigos(id, numbersOfFriends));
    end
end
end