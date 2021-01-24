%========================= Biocomputing HW#4-Number2part2(real value) ==============================
%*************************** Ali Rahimpour  810192071 **************************
%=====================================PSO=====================================
%====================================Input====================================%
tic
sensor=10;
beacon=3;
Ms=sensor;
Mb=beacon;
L=Ms;
xmin=[0,0];
xmax=[100,100];
Lmin=30;
xi=[5,8,1,4,7,9,25,12,6,13];
xib=[6,2,10];
yi=[6,9,2,6,8,10,1,11,12,14];
yib=[3,1,12];
xpbest=xib;
ypbest=yib;
xgbest=xib;
ygbest=yib;
vix=[1,1,1];
viy=[1,1,1];
%=============================================================================%
wmax=1.2;
wmin=0.2;
kmax=100;
%==============================================================================%
c1=1.494;
c2=1.494;
xmin=0;
ymin=0;
xmax=100;
ymax=100;
d=3;
%============================================================================%
 for k=1:kmax
     w=wmax-((wmax-wmin)/kmax)*k;
for i=1:Ms
    for j=1:d
    if xib(j)>xmax 
        xib(j)=xmax;
    elseif yib(j)>ymax
        yib(j)=ymax;
        elseif xib(j)<xmin
        xib(j)=xmin;
        elseif yib(j)<ymin
        yib(j)=ymin;
    end
    di=sqrt((xi(i)-xib(j))^2+(yi(i)-yib(j))^2);
     ft=(1/L)*di;
     if ft<=3
         xpbest(j)=xib(j);
         ypbest(j)=yib(j);
     else
     vix(j)=w*vix(j)+c1*lamda1*(pbest(j)-xib(j))+c2*lamba2*(gbest(j)-xib(j));
    viy(j)=w*viy(j)+c1*lamda1*(pbest(j)-yib(j))+c2*lamba2*(gbest(j)-yib(j));
xib(j)=xib(j)+vix(j);   
yib(j)=yib(j)+viy(j); 
end
%===========================================================================%
    end
 xgbest=xpbest
ygbest=ypbest
end
 end
plot(xi,yi,'bs','LineWidth',2,'MarkerSize',2);
 hold on;
 plot(xib,yib,'rs','LineWidth',2,'MarkerSize',2);
axis([0 20 0 20])
 xlabel('position1')
 ylabel('position2')
 title('Real Positions of Beacons with showing the sensors')
 toc
 
 
%==========================================================================
%================================ HW#4 ====================================
%********************** Ali Rahimpour  810192071 **************************
%==========================================================================
 


