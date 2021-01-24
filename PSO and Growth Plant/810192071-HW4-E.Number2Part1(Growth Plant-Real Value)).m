%========================= Biocomputing HW#4-Number2part1(real value) ==============================
%*************************** Ali Rahimpour  810192071 **************************
%=====================================Plant Growth=====================================
%========================================Input==================================%
tic
input=[10,3;100,100];
output=[5,6,4.5,6.2;8,9,7.3,8.6;1,2,0.8,1.8;4,6,3.9,6;7,8,7.2,8.5;9,10,9.1,10.2;25,1,25.6,1;12,11,11.5,10.9;6,12,6,12;13,14,13.2,13.7];
[sensor,sh]=size(output);
beacon=3;
Ms=input(1,1);
Mb=beacon;
L=Ms;
xmin=[0,0];
xmax=input(2,:);
Lminx=21;
Lminy=21;
Lmin=30;
xi0=[6,2,10];
yi0=[3,1,12];
xism=output(:,1);
yism=output(:,2);
%===========================================================================%
kmax=200;
%===========================================================================%
gamma=0.9;
alpha=1.2;
xmin=0;
ymin=0;
xmax=input(2,1);
ymax=input(2,2);
d=input(1,2);
PM=0;
%===========================================================================%
 for k=1:kmax
    for j=1:d 
for i=1:Ms 
    for k=1:Ms
    if xi0(j)>xmax 
        xi0(j)=xmax;
    elseif yi0(j)>ymax
        yi0(j)=ymax;
        elseif xi0(j)<xmin
        xi0(j)=xmin;
        elseif yi0(j)<ymin
        yi0(j)=ymin;
    end
    PM0=(xi0(j)-xism(i))+(yi0(j)-yism(k)); 
    PM=PM+PM0;
end
%===========================================================================%
end
PMt(1,j)=PM;
    end
%===========================================================================%
for j=1:d 
for i=1:Ms 
    for k=1:Ms
        Pmix=(xi0(j)-xism(i))/PMt(1,j);
        Pmiy=(yi0(j)-yism(k))/PMt(1,j);
absPM=sqrt((Pmix^2+Pmiy^2));
if absPM > (30/PMt(1,j))&& xi0(j)<xism(i)&& yi0(j)<yism(k)
    xi0(j)=alpha*xi0(j)
    yi0(j)=alpha*yi0(j)
elseif  absPM > (30/PMt(1,j))&& xi0(j)>xism(i)&& yi0(j)>yism(k)
    xi0(j)=gamma*xi0(j)
    yi0(j)=gamma*yi0(j)
elseif absPM > (30/PMt(1,j))&& xi0(j)<xism(i) 
    xi0(j)=alpha*xi0(j)
elseif absPM > (30/PMt(1,j)) && yi0(j)<yism(k)
    yi0(j)=alpha*yi0(j)
    elseif  absPM > (30/PMt(1,j))&& xi0(j)>xism(i)
    xi0(j)=gamma*xi0(j)
    elseif  absPM > (30/PMt(1,j))&& yi0(j)>yism(k)
    yi0(j)=gamma*yi0(j)
end
    end
end
end
                
 end
 plot(xism,yism,'bs','LineWidth',2,'MarkerSize',2);
 hold on;
 plot(xi0,yi0,'rs','LineWidth',2,'MarkerSize',2);
axis([0 20 0 20])
 xlabel('position1')
 ylabel('position2')
 title('Real Positions of Beacons with showing the sensors')
 toc
 
 
%==========================================================================
%================================ HW#4 ====================================
%********************** Ali Rahimpour  810192071 **************************
%==========================================================================
 


