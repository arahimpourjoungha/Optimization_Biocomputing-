%========================= Biocomputing HW#3 ==============================
%********************** Ali Rahimpour  810192071 **************************
%==========================================================================
clear all;
clc;
tic
data=textread('input.txt');
N_observer=[5];
N_target=[12];
obs_threshold=[0.5 0.6 0.4 0.7 0.9];
p_discover=[0.2 0.4 0.6 0.1 0.9];
location_observer=[0 0;1 2;0 2;4 5;1 3];
time_duration_target=[41 55;184 196;182 198;135 146;89 100;115 127;122 132;183 195;154 169;173 188;52 67;114 124];
location_target=[1 1;2 1;4 6;7 9;2 3;1 6;10 5;8 6;4 3;1 5;4 6;8 9];
%=========================================================================%

virtualPheromone=rand(numberOfCity,numberOfCity);


choosingPath=zeros(numberOfAnt,numberOfCity);
for i=1:numberOfAnt
    choosingPath(i,1)=1;
end

for k=1:1000
    evaporateRate=0.75;
    alpha=alpha+0.05;
    for i=2:numberOfCity
        for j=1:numberOfAnt
            choosingPath(j,i)=chooseNextCity(choosingPath(j,1:i-1)',i);
        end
    end
    updatePheromone(choosingPath);
    evaporate();
    
        PlotCities();
        pause(0.001);

    
end








toc
%==========================================================================
%================================ HW#2 ====================================
%********************** Ali Rahimpour  810192071 **************************
%==========================================================================