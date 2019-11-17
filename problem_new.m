
clear;
close all;

%% definition of objects in problem file
loc1 = location;
loc1.name = 'loc1';
loc2 = location;
loc2.name = 'loc2';
loc = [loc1;loc2];

r1 = robot;
r1.name = 'r1';
r = [r1];

c1 = container;
c1.name = 'c1';
c2 = container;
c2.name = 'c2';
c3 = container;
c3.name = 'c3';
pallet = container;
pallet.name = 'pallet';
c = [c1;c2;c3;pallet];

crane1 = crane;
crane1.name = 'crane1';
cr = [crane1];

p1 = pile;
p1.name = 'p1';
p2 = pile; 
p2.name = 'p2';
p = [p1;p2];
%% defining initial state
init = ["attached p1 loc1";"attached p2 loc1";"in c1 p1";"in c3 p1";"top c3 p1";...
    "on c3 c1";"on c1 pallet";"in c2 p2";"top c2 p2";"on c2 pallet";"belong crane1 loc1";...
    "empty crane1";"adjacent loc1 loc2";"adjacent loc2 loc1";"at r1 loc2";"occupied loc2";"not(occupied loc1)";"unloaded r1"];

%% defining goal state
goal = ["loaded r1 c3";"at r1 loc2"];

%% Executing forward search algorithm

[plan, expectation]= fwd_sch(init,goal,loc,r,c,cr,p);

