function graphicsSLAM(x,count)
% Author: Erik Zamora, ezamora1981@gmail.com

N = round((size(x{end},1) - 3)/2);

for i=1:length(x)
    xrobot(:,i) = x{i}(1:3);
end
plot(xrobot(1,:),xrobot(2,:),'k.','Markersize',5)
xlabel('Longitude (m)'), ylabel('Latitude (m)')


hold on
plot(xrobot(1,1),xrobot(2,1),'g+',xrobot(1,end),xrobot(2,end),'go')

xmap = x{end};
for j=4:2:length(xmap)
    
    if count(round((j-3)/2)) < 40
        color = 'go';
    elseif count(round((j-3)/2)) < 80
        color = 'bo';
    else 
        color = 'ro';
    end
    plot(xmap(j),xmap(j+1),color)
end

hold off
axis([-5 20 -10 10])
grid on
