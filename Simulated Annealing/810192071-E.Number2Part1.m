%=================== Biocomputing HW#2-Number2Part1 =======================
%********************** Ali Rahimpour  810192071 **************************
%==========================================================================
clear all;
clc;
tic
data=textread('input.txt');
Temperature=999;
Threshold=.00005;
Rate=.899;
current_state=zeros(1,size(data,1));
m=sum(ismember(current_state,1));
tf=data(ismember(current_state,1),ismember(current_state,1));
current_fitness=m*(m-2)-sum(sum(tf));
best_fitness=current_fitness;
time1=tic();
while(Temperature>Threshold)
    neighborstate=current_state;
    neighborstate(randi(length(data)))=1-neighborstate(randi(length(data)));
    m=sum(ismember(neighborstate,1));
    tf=data(ismember(neighborstate,1),ismember(neighborstate,1));
    neighbor_fitness=m*(m-2)-sum(sum(tf));
	delta_fitness=current_fitness-neighbor_fitness;
    if delta_fitness>0
		current_state=neighborstate;
        current_fitness=neighbor_fitness;
        if best_fitness>current_fitness
            best_fitness=current_fitness;
            best_state=current_state;
        end
    elseif exp(delta_fitness/Temperature)>rand()
        current_state=neighborstate;
        current_fitness=neighbor_fitness;
        if best_fitness>current_fitness
            best_fitness=current_fitness;
            best_state=current_state;
        end
    end
    Temperature= Temperature*Rate;
end
time2=toc(time1);
answer=find(ismember(current_state,1));
best_state=find(ismember(current_state,1));
answer=answer';
best_state=best_state';
dlmwrite('output.txt',best_state,'newline','pc');
toc
%==========================================================================
%========================== HW#2-Number2Part1 =============================
%********************** Ali Rahimpour  810192071 **************************
%==========================================================================