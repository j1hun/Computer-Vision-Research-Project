
%% load & plot data
load ldDataS1_1.mat

cm=zeros(length(ldDataS.Z), 3);
[zz, al, cl]=unique(ldDataS.Z);
g=jet(length(zz));
cm=g(cl, :);

figure; 
scatter3(ldDataS.X, ldDataS.Y, ldDataS.Z, [], cm, 'filled');
axis('equal');

%% save data
a = get(gca,'Children');
xdata = get(a, 'XData');
ydata = get(a, 'YData');
zdata = get(a, 'ZData');