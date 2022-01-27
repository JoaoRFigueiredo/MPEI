fdata = load('friends.txt');
dic = readcell('users.txt', 'Delimiter', ';');

friends = fdata(1:end, 1:2);
for i =1:1000
    ind = find(friends(:, 1) == i);
    for j = 1:length(ind)
    Namigos(i, j) = friends(ind(j),2);
    end
end
% sum(Namigos(1, :) ~=0)

save('Namigos.mat', 'Namigos', 'dic');