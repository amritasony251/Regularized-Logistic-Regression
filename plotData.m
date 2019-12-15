function plotData(X, y)
pos = find(y==1);
neg = find(y==0);
   
plot(X(pos,1),X(pos,2),'+');
hold on;   
plot(X(neg,1),X(neg,2),'o');


hold off;

end
