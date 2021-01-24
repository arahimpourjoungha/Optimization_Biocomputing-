%========================= Biocomputing HW#1 ==============================
%********************** Ali Rahimpour  810192071 **************************
%==========================================================================
%==========================  Input ===============================
clc
close all
clear all
M=100;
m=10;
n=10;
N=20;
X=[1 1 101;2 1 111;3 1 121;4 1 131;5 1 141;6 1 151;7 1 161;8 1 171;9 1 181;10 1 191;11 2 102;
12 2 112;13 2 122;14 2 132;15 2 142;16 2 152;17 2 162;18 2 172;19 2 182;20 2 192;21 3 103;22 3 113;23 3 123;24 3 133;25 3 143;
26 3 153;27 3 163;28 3 173;29 3 183;30 3 193;31 4 104;32 4 114;33 4 124;34 4 134;35 4 144;36 4 154;37 4 164;38 4 174;39 4 184;40 4 194;
41 5 105;42 5 115;43 5 125;44 5 135;45 5 145;46 5 155;47 5 165;48 5 175;49 5 185;50 5 195;51 6 106;52 6 116;53 6 126;54 6 136;55 6 146;56 6 156;
57 6 166;58 6 176;59 6 186;60 6 196;61 7 107;62 7 117;63 7 127;64 7 137;65 7 147;66 7 157;67 7 167;68 7 177;69 7 187;70 7 197;71 8 108;72 8 118;
73 8 128;74 8 138;75 8 148;76 8 158;77 8 168;78 8 178;79 8 188;80 8 198;81 9 109;82 9 119;83 9 129;84 9 139;85 9 149;86 9 159;87 9 169;88 9 179;89 9 189;
90 9 199;91 10 110;92 10 120;93 10 130;94 10 140;95 10 150;96 10 160;97 10 170;98 10 180;99 10 190;100 10 200];

J_constraint=[101 105;112 121;123 132;134 143;145 154;156 165;167 176;178 187;189 198;121 192;131 183;141 174;151 165;199 200;189 190;179 186;109 170;159 160;
149 150;139 140];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Representation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% ============================= population ================================
 X_initial=zeros(10);
sum=1;
%%
 X_initial1=zeros(10);
 X_initial2=zeros(10);
 X_initial3=zeros(10);
 X_initial4=zeros(10);
 X_initial5=zeros(10);
 X_initial6=zeros(10); 
 X_initial7=zeros(10);
 X_initial8=zeros(10);
 X_initial9=zeros(10);
 X_initial10=zeros(10); 
 X_initial11=zeros(10);
 X_initial12=zeros(10); 
 X_initial13=zeros(10);
 X_initial14=zeros(10);
 X_initial15=zeros(10);
 X_initial16=zeros(10);
 X_initial17=zeros(10);
 X_initial18=zeros(10);
 X_initial19=zeros(10);
 X_initial20=zeros(10);
 X_initial21=zeros(10);
 X_initial22=zeros(10);
 X_initial23=zeros(10);
 X_initial24=zeros(10);
 X_initial25=zeros(10);
 X_initial26=zeros(10);
 X_initial27=zeros(10);
 X_initial28=zeros(10);
 X_initial29=zeros(10);
 X_initial30=zeros(10);
 X_initial31=zeros(10);
 X_initial32=zeros(10);
 X_initial33=zeros(10);
 X_initial34=zeros(10);
 X_initial35=zeros(10);
 X_initial36=zeros(10);
 X_initial37=zeros(10);
 X_initial38=zeros(10);
 X_initial39=zeros(10);
 X_initial40=zeros(10);
 X_initial41=zeros(10);
 X_initial42=zeros(10);
 X_initial43=zeros(10);
 X_initial44=zeros(10);
 X_initial45=zeros(10);
 X_initial46=zeros(10);
 X_initial47=zeros(10);
 X_initial48=zeros(10);
 X_initial49=zeros(10);
 X_initial50=zeros(10);
 X_initial51=zeros(10);
 X_initial52=zeros(10);
 X_initial53=zeros(10);
 X_initial54=zeros(10);
 X_initial55=zeros(10);
 X_initial56=zeros(10);
 X_initial57=zeros(10);
 X_initial58=zeros(10);
 X_initial59=zeros(10);
 X_initial60=zeros(10);
 X_initial61=zeros(10);
 X_initial62=zeros(10);
 X_initial63=zeros(10);
 X_initial64=zeros(10);
 X_initial65=zeros(10);
 X_initial66=zeros(10);
 X_initial67=zeros(10);
 X_initial68=zeros(10);
 X_initial69=zeros(10);
 X_initial70=zeros(10);
 X_initial71=zeros(10);
 X_initial72=zeros(10);
 X_initial73=zeros(10);
 X_initial74=zeros(10);
 X_initial75=zeros(10);
 X_initial76=zeros(10);
 X_initial77=zeros(10);
 X_initial78=zeros(10);
 X_initial79=zeros(10);
 X_initial80=zeros(10);
 X_initial81=zeros(10);
 X_initial82=zeros(10);
 X_initial83=zeros(10);
 X_initial84=zeros(10);
 X_initial85=zeros(10);
 X_initial86=zeros(10);
 X_initial87=zeros(10);
 X_initial88=zeros(10);
 X_initial89=zeros(10);
 X_initial190=zeros(10);
 X_initial191=zeros(10);
 X_initial192=zeros(10);
 X_initial193=zeros(10);
 X_initial194=zeros(10);
 X_initial95=zeros(10);
 X_initial96=zeros(10);
 X_initial97=zeros(10);
 X_initial98=zeros(10);
 X_initial99=zeros(10);
 X_initial100=zeros(10);
 
%%
    for i=1:10
    X_initial(i,:)=X(sum:sum+9,3);
    sum=sum+10;
    end
  for j=1:10
ran1=randperm(10);
ran2=randperm(10);
ran3=randperm(10);
ran4=randperm(10);
ran5=randperm(10);
ran6=randperm(10);
ran7=randperm(10);
ran8=randperm(10);
ran9=randperm(10);
ran10=randperm(10);
      for k=1:10          
          X_initial1(j,k)=X_initial(j,ran1(k));
          X_initial2(j,k)=X_initial(j,ran1(k));
          X_initial3(j,k)=X_initial(j,ran1(k));
          X_initial4(j,k)=X_initial(j,ran1(k));
          X_initial5(j,k)=X_initial(j,ran1(k));
          X_initial6(j,k)=X_initial(j,ran1(k));
          X_initial7(j,k)=X_initial(j,ran1(k));
          X_initial8(j,k)=X_initial(j,ran1(k));
          X_initial9(j,k)=X_initial(j,ran1(k));
          X_initial10(j,k)=X_initial(j,ran1(k));
          %%
          X_initial11(j,k)=X_initial(j,ran2(k));
          X_initial12(j,k)=X_initial(j,ran2(k));
          X_initial13(j,k)=X_initial(j,ran2(k));
          X_initial14(j,k)=X_initial(j,ran2(k));
          X_initial15(j,k)=X_initial(j,ran2(k));
          X_initial16(j,k)=X_initial(j,ran2(k));
          X_initial17(j,k)=X_initial(j,ran2(k));
          X_initial18(j,k)=X_initial(j,ran2(k));
          X_initial19(j,k)=X_initial(j,ran2(k));
          X_initial20(j,k)=X_initial(j,ran2(k));
          %%
          X_initial21(j,k)=X_initial(j,ran3(k));
          X_initial22(j,k)=X_initial(j,ran3(k));
          X_initial23(j,k)=X_initial(j,ran3(k));
          X_initial24(j,k)=X_initial(j,ran3(k));
          X_initial25(j,k)=X_initial(j,ran3(k));
          X_initial26(j,k)=X_initial(j,ran3(k));
          X_initial27(j,k)=X_initial(j,ran3(k));
          X_initial28(j,k)=X_initial(j,ran3(k));
          X_initial29(j,k)=X_initial(j,ran3(k));
          X_initial30(j,k)=X_initial(j,ran3(k));
          %%
           X_initial31(j,k)=X_initial(j,ran4(k));
          X_initial32(j,k)=X_initial(j,ran4(k));
          X_initial33(j,k)=X_initial(j,ran4(k));
          X_initial34(j,k)=X_initial(j,ran4(k));
          X_initial35(j,k)=X_initial(j,ran4(k));
          X_initial36(j,k)=X_initial(j,ran4(k));
          X_initial37(j,k)=X_initial(j,ran4(k));
          X_initial38(j,k)=X_initial(j,ran4(k));
          X_initial39(j,k)=X_initial(j,ran4(k));
          X_initial40(j,k)=X_initial(j,ran4(k));
          %%
           X_initial41(j,k)=X_initial(j,ran5(k));
          X_initial42(j,k)=X_initial(j,ran5(k));
          X_initial43(j,k)=X_initial(j,ran5(k));
          X_initial44(j,k)=X_initial(j,ran5(k));
          X_initial45(j,k)=X_initial(j,ran5(k));
          X_initial46(j,k)=X_initial(j,ran5(k));
          X_initial47(j,k)=X_initial(j,ran5(k));
          X_initial48(j,k)=X_initial(j,ran5(k));
          X_initial49(j,k)=X_initial(j,ran5(k));
          X_initial50(j,k)=X_initial(j,ran5(k));
          %%
           X_initial51(j,k)=X_initial(j,ran6(k));
          X_initial52(j,k)=X_initial(j,ran6(k));
          X_initial53(j,k)=X_initial(j,ran6(k));
          X_initial54(j,k)=X_initial(j,ran6(k));
          X_initial55(j,k)=X_initial(j,ran6(k));
          X_initial56(j,k)=X_initial(j,ran6(k));
          X_initial57(j,k)=X_initial(j,ran6(k));
          X_initial58(j,k)=X_initial(j,ran6(k));
          X_initial59(j,k)=X_initial(j,ran6(k));
          X_initial60(j,k)=X_initial(j,ran6(k));
          %%
           X_initial61(j,k)=X_initial(j,ran7(k));
          X_initial62(j,k)=X_initial(j,ran7(k));
          X_initial63(j,k)=X_initial(j,ran7(k));
          X_initial64(j,k)=X_initial(j,ran7(k));
          X_initial65(j,k)=X_initial(j,ran7(k));
          X_initial66(j,k)=X_initial(j,ran7(k));
          X_initial67(j,k)=X_initial(j,ran7(k));
          X_initial68(j,k)=X_initial(j,ran7(k));
          X_initial69(j,k)=X_initial(j,ran7(k));
          X_initial70(j,k)=X_initial(j,ran7(k));
          %%
        
           X_initial71(j,k)=X_initial(j,ran8(k));
          X_initial72(j,k)=X_initial(j,ran8(k));
          X_initial73(j,k)=X_initial(j,ran8(k));
          X_initial74(j,k)=X_initial(j,ran8(k));
          X_initial75(j,k)=X_initial(j,ran8(k));
          X_initial76(j,k)=X_initial(j,ran8(k));
          X_initial77(j,k)=X_initial(j,ran8(k));
          X_initial78(j,k)=X_initial(j,ran8(k));
          X_initial79(j,k)=X_initial(j,ran8(k));
          X_initial80(j,k)=X_initial(j,ran8(k));
          %%
          
           X_initial81(j,k)=X_initial(j,ran9(k));
          X_initial82(j,k)=X_initial(j,ran9(k));
          X_initial83(j,k)=X_initial(j,ran9(k));
          X_initial84(j,k)=X_initial(j,ran9(k));
          X_initial85(j,k)=X_initial(j,ran9(k));
          X_initial86(j,k)=X_initial(j,ran9(k));
          X_initial87(j,k)=X_initial(j,ran9(k));
          X_initial88(j,k)=X_initial(j,ran9(k));
          X_initial89(j,k)=X_initial(j,ran9(k));
          X_initial90(j,k)=X_initial(j,ran9(k));
          %%
          X_initial91(j,k)=X_initial(j,ran10(k));
          X_initial92(j,k)=X_initial(j,ran10(k));
          X_initial93(j,k)=X_initial(j,ran10(k));
          X_initial94(j,k)=X_initial(j,ran10(k));
          X_initial95(j,k)=X_initial(j,ran10(k));
          X_initial96(j,k)=X_initial(j,ran10(k));
          X_initial97(j,k)=X_initial(j,ran10(k));
          X_initial98(j,k)=X_initial(j,ran10(k));
          X_initial99(j,k)=X_initial(j,ran10(k));
          X_initial100(j,k)=X_initial(j,ran10(k));
          
      end
  end

% =============================== fitness =================================
fit1=0;fit2=0;fit3=0;fit4=0;fit5=0;fit6=0;fit7=0;fit8=0;fit9=0;fit10=0;fit11=0;
fit12=0;fit13=0;fit14=0;fit15=0;fit16=0;fit17=0;fit18=0;fit19=0;fit20=0;fit21=0;fit22=0;
fit23=0;fit24=0;fit25=0;fit26=0;fit27=0;fit28=0;fit29=0;fit30=0;fit31=0;fit32=0;fit33=0;fit34=0;fit35=0;fit36=0;fit37=0;fit38=0;fit39=0;fit40=0;
fit41=0;fit42=0;fit43=0;fit44=0;fit45=0;fit46=0;fit47=0;fit48=0;fit49=0;fit50=0;fit51=0;fit51=0;fit52=0;fit53=0;fit54=0;fit55=0;
fit56=0;fit57=0;fit58=0;fit59=0;fit60=0;fit61=0;fit62=0;fit63=0;fit64=0;fit65=0;fit66=0;fit67=0;fit68=0;fit69=0;fit70=0;fit71=0;fit72=0;fit73=0;fit74=0;fit75=0;
fit76=0;fit77=0;fit78=0;fit79=0;fit80=0;fit81=0;fit82=0;fit83=0;fit84=0;fit85=0;fit86=0;fit87=0;fit88=0;fit89=0;fit90=0;fit91=0;fit92=0;fit93=0;fit94=0;fit95=0;fit96=0;fit97=0;fit98=0;fit99=0;fit100=0;

for iteration=1:430
tic    
    iteration
for o=1:20
    [rows1,cols1] =find( X_initial1==J_constraint(o,1));
     [rowss1,colss1] =find( X_initial1==J_constraint(o,2));
      [rows11,cols11] =find( X==J_constraint(o,1));
        [rowss11,colss11] =find(X==J_constraint(o,2));
      
        t_constraint=X(rows11,3)-X(rowss11,3);
    if cols1< colss1 
        fit1=fit1+1;
       
    else if t_constraint < 0 && cols1 == colss1
            fit1=fit1+1;
        end
    end
end
    %
    for o=1:20
    [rows2,cols2] =find(X_initial2==J_constraint(o,1));
     [rowss2,colss2] =find( X_initial2==J_constraint(o,2));
      [rows22,cols22] =find( X==J_constraint(o,1));
        [rowss22,colss22] =find(X==J_constraint(o,2));
        t_constraint=X(rows22,3)-X(rowss22,3);
    if cols2< colss2 
        fit2=fit2+1;
   
    else if t_constraint < 0 && cols2 == colss2
            fit2=fit2+1;
        end
    end
    end
    %
    for o=1:20
    [rows3,cols3] =find( X_initial3==J_constraint(o,1));
     [rowss3,colss3] =find( X_initial3==J_constraint(o,2));
     [rows33,cols33] =find( X==J_constraint(o,1));
        [rowss33,colss33] =find(X==J_constraint(o,2));
        t_constraint=X(rows33,3)-X(rowss33,3);
    if cols3< colss3 
        fit3=fit3+1;
   
    else if t_constraint < 0 && cols3 == colss3
            fit3=fit3+1;
        end
    end
    end
    %
    for o=1:20
    [rows4,cols4] =find( X_initial4==J_constraint(o,1));
     [rowss4,colss4] =find( X_initial4==J_constraint(o,2));
      [rows44,cols44] =find( X==J_constraint(o,1));
        [rowss44,colss44] =find(X==J_constraint(o,2));
        t_constraint=X(rows44,3)-X(rowss44,3);
    if cols4< colss4 
        fit4=fit4+1;
     
    else if t_constraint < 0 && cols4 == colss4
            fit4=fit4+1;
        end
    end
    end
    %
    for o=1:20
    [rows5,cols5] =find( X_initial5==J_constraint(o,1));
     [rowss5,colss5] =find( X_initial5==J_constraint(o,2));
     [rows55,cols55] =find( X==J_constraint(o,1));
        [rowss55,colss55] =find(X==J_constraint(o,2));
        t_constraint=X(rows55,3)-X(rowss55,3);
    if cols5< colss5 
        fit5=fit5+1;
      
    else if t_constraint < 0 && cols5 == colss5
            fit5=fit5+1;
        end
    end
    end
    %
    for o=1:20
    [rows6,cols6] =find( X_initial6==J_constraint(o,1));
     [rowss6,colss6] =find( X_initial6==J_constraint(o,2));
     [rows66,cols66] =find( X==J_constraint(o,1));
        [rowss66,colss66] =find(X==J_constraint(o,2));
        t_constraint=X(rows66,3)-X(rowss66,3);
    if cols6< colss6 
        fit6=fit6+1;
      
    else if t_constraint < 0 && cols6 == colss6
            fit6=fit6+1;
        end
    end
    end
    %
    for o=1:20
    [rows7,cols7] =find( X_initial7==J_constraint(o,1));
     [rowss7,colss7] =find( X_initial7==J_constraint(o,2));
     [rows77,cols77] =find( X==J_constraint(o,1));
        [rowss77,colss77] =find(X==J_constraint(o,2));
        t_constraint=X(rows77,3)-X(rowss77,3);
    if cols7< colss7 
        fit7=fit7+1;
    
    else if t_constraint < 0 && cols7 == colss7
            fit7=fit7+1;
        end
    end
    end
    %
    for o=1:20
    [rows8,cols8] =find( X_initial8==J_constraint(o,1));
     [rowss8,colss8] =find( X_initial8==J_constraint(o,2));
      [rows88,cols88] =find( X==J_constraint(o,1));
        [rowss88,colss88] =find(X==J_constraint(o,2));
        t_constraint=X(rows88,3)-X(rowss88,3);
    if cols8< colss8 
        fit8=fit8+1;
     
    else if t_constraint < 0 && cols8 == colss8
            fit8=fit8+1;
        end
    end
    end
    %
    for o=1:20
    [rows9,cols9] =find( X_initial9==J_constraint(o,1));
     [rowss9,colss9] =find( X_initial9==J_constraint(o,2));
     [rows99,cols99] =find( X==J_constraint(o,1));
        [rowss99,colss99] =find(X==J_constraint(o,2));
        t_constraint=X(rows99,3)-X(rowss99,3);
    if cols9< colss9 
        fit9=fit9+1;
      
    else if t_constraint < 0 && cols9 == colss9
            fit9=fit9+1;
        end
    end
    end
    %
    for o=1:20
    [rows10,cols10] =find( X_initial10==J_constraint(o,1));
     [rowss10,colss10] =find( X_initial10==J_constraint(o,2));
     [rows1010,cols1010] =find( X==J_constraint(o,1));
        [rowss1010,colss1010] =find(X==J_constraint(o,2));
        t_constraint=X(rows1010,3)-X(rowss1010,3);
    if cols10< colss10 
        fit10=fit10+1;
      
    else if t_constraint < 0 && cols10 == colss10
            fit10=fit10+1;
        end
    end
    end
    %
    for o=1:20
    [rows11,cols11] =find( X_initial11==J_constraint(o,1));
     [rowss11,colss11] =find( X_initial11==J_constraint(o,2));
     [rows1111,cols1111] =find( X==J_constraint(o,1));
        [rowss1111,colss1111] =find(X==J_constraint(o,2));
        t_constraint=X(rows1111,3)-X(rowss1111,3);
    if cols11< colss11 
        fit11=fit11+1;
      
    else if t_constraint < 0 && cols11 == colss11
            fit11=fit11+1;
        end
    end
    end
    %
    for o=1:20
    [rows12,cols12] =find( X_initial12==J_constraint(o,1));
     [rowss12,colss12] =find( X_initial12==J_constraint(o,2));
     [rows1212,cols1212] =find( X==J_constraint(o,1));
        [rowss1212,colss1212] =find(X==J_constraint(o,2));
        t_constraint=X(rows1212,3)-X(rowss1212,3);
    if cols12< colss12 
        fit12=fit12+1;
      
    else if t_constraint < 0 && cols12 == colss12
            fit12=fit12+1;
        end
    end
    end
    %
    for o=1:20
    [rows13,cols13] =find( X_initial13==J_constraint(o,1));
     [rowss13,colss13] =find( X_initial13==J_constraint(o,2));
       [rows1313,cols1313] =find( X==J_constraint(o,1));
        [rowss1313,colss1313] =find(X==J_constraint(o,2));
        t_constraint=X(rows1313,3)-X(rowss1313,3);
    if cols13< colss13 
        fit13=fit13+1;
    
    else if t_constraint < 0 && cols13 == colss13
            fit13=fit13+1;
        end
    end
    end
    %
    for o=1:20
    [rows14,cols14] =find( X_initial14==J_constraint(o,1));
     [rowss14,colss14] =find( X_initial14==J_constraint(o,2));
      [rows1414,cols1414] =find( X==J_constraint(o,1));
        [rowss1414,colss1414] =find(X==J_constraint(o,2));
        t_constraint=X(rows1414,3)-X(rowss1414,3);
    if cols14< colss14 
        fit14=fit14+1;
     
    else if t_constraint < 0 && cols14 == colss14
            fit14=fit14+1;
        end
    end
    end
    %
    for o=1:20
    [rows15,cols15] =find(X_initial15==J_constraint(o,1));
     [rowss15,colss15] =find( X_initial15==J_constraint(o,2));
     [rows1515,cols1515] =find( X==J_constraint(o,1));
        [rowss1515,colss1515] =find(X==J_constraint(o,2));
        t_constraint=X(rows1515,3)-X(rowss1515,3);
    if cols15< colss15 
        fit15=fit15+1;
      
    else if t_constraint < 0 && cols15 == colss15
            fit15=fit15+1;
        end
    end
    end
    %
    for o=1:20
    [rows16,cols16] =find( X_initial16==J_constraint(o,1));
    [rowss16,colss16] =find( X_initial16==J_constraint(o,2));
    [rows1616,cols1616] =find( X==J_constraint(o,1));
        [rowss1616,colss1616] =find(X==J_constraint(o,2));
        t_constraint=X(rows1616,3)-X(rowss1616,3);
    if cols16< colss16 
        fit16=fit16+1;
      
    else if t_constraint < 0 && cols16 == colss16
            fit16=fit16+1;
        end
    end
    end
    %
    for o=1:20
    [rows17,cols17] =find( X_initial17==J_constraint(o,1));
     [rowss17,colss17] =find( X_initial17==J_constraint(o,2));
       [rows1717,cols1717] =find( X==J_constraint(o,1));
        [rowss1717,colss1717] =find(X==J_constraint(o,2));
        t_constraint=X(rows1717,3)-X(rowss1717,3);
    if cols17< colss17 
        fit17=fit17+1;
  
    else if t_constraint < 0 && cols17 == colss17
            fit17=fit17+1;
        end
    end
    end
    %
    for o=1:20
    [rows18,cols18] =find( X_initial18==J_constraint(o,1));
     [rowss18,colss18] =find( X_initial18==J_constraint(o,2));
     [rows1818,cols1818] =find( X==J_constraint(o,1));
        [rowss1818,colss1818] =find(X==J_constraint(o,2));
        t_constraint=X(rows1818,3)-X(rowss1818,3);
    if cols18< colss18 
        fit18=fit18+1;
    
    else if t_constraint < 0 && cols18 == colss18
            fit18=fit18+1;
        end
    end
    end
    %
    for o=1:20
    [rows19,cols19] =find( X_initial19==J_constraint(o,1));
     [rowss19,colss19] =find( X_initial19==J_constraint(o,2));
     [rows1919,cols1919] =find( X==J_constraint(o,1));
        [rowss1919,colss1919] =find(X==J_constraint(o,2));
        t_constraint=X(rows1919,3)-X(rowss1919,3);
    if cols19< colss19 
        fit19=fit19+1;
      
    else if t_constraint < 0 && cols19 == colss19
            fit19=fit19+1;
        end
    end
    end
    %
    for o=1:20
    [rows20,cols20] =find( X_initial20==J_constraint(o,1));
     [rowss20,colss20] =find( X_initial20==J_constraint(o,2));
      [rows2020,cols2020] =find( X==J_constraint(o,1));
        [rowss2020,colss2020] =find(X==J_constraint(o,2));
        t_constraint=X(rows2020,3)-X(rowss2020,3);
    if cols20< colss20 
        fit20=fit20+1;
     
    else if t_constraint < 0 && cols20 == colss20
            fit20=fit20+1;
        end
    end
    end
    %
    for o=1:20
    [rows21,cols21] =find( X_initial21==J_constraint(o,1));
     [rowss21,colss21] =find( X_initial21==J_constraint(o,2));
      [rows2121,cols2121] =find( X==J_constraint(o,1));
        [rowss2121,colss2121] =find(X==J_constraint(o,2));
        t_constraint=X(rows2121,3)-X(rowss2121,3);
    if cols21< colss21 
        fit21=fit21+1;
     
    else if t_constraint < 0 && cols21 == colss21
            fit21=fit21+1;
        end
    end
    end
    %
    for o=1:20
    [rows22,cols22] =find( X_initial22==J_constraint(o,1));
     [rowss22,colss22] =find( X_initial22==J_constraint(o,2));
     [rows2222,cols2222] =find( X==J_constraint(o,1));
        [rowss2222,colss2222] =find(X==J_constraint(o,2));
        t_constraint=X(rows2222,3)-X(rowss2222,3);
    if cols22< colss22 
        fit22=fit22+1;
      
    else if t_constraint < 0 && cols22 == colss22
            fit22=fit22+1;
        end
    end
    end
    %
    for o=1:20
    [rows23,cols23] =find( X_initial23==J_constraint(o,1));
     [rowss23,colss23] =find( X_initial23==J_constraint(o,2));
       [rows2323,cols2323] =find( X==J_constraint(o,1));
        [rowss2323,colss2323] =find(X==J_constraint(o,2));
        t_constraint=X(rows2323,3)-X(rowss2323,3);
    if cols23< cols23 
        fit23=fit23+1;
   
    else if t_constraint < 0 && cols23 == colss23
            fit23=fit23+1;
        end
    end
    end
    %
    for o=1:20
    [rows24,cols24] =find( X_initial24==J_constraint(o,1));
     [rowss24,colss24] =find( X_initial24==J_constraint(o,2));
      [rows2424,cols2424] =find( X==J_constraint(o,1));
        [rowss2424,colss2424] =find(X==J_constraint(o,2));
        t_constraint=X(rows2424,3)-X(rowss2424,3);
    if cols24< colss24 
        fit24=fit24+1;
    else if t_constraint < 0 && cols24 == colss24
            fit24=fit24+1;
        end
    end
    end
    %
    for o=1:20
    [rows25,cols25] =find( X_initial25==J_constraint(o,1));
     [rowss25,colss25] =find( X_initial25==J_constraint(o,2));
      [rows2525,cols2525] =find( X==J_constraint(o,1));
        [rowss2525,colss2525] =find(X==J_constraint(o,2));
        t_constraint=X(rows2525,3)-X(rowss2525,3);
    if cols25< colss25 
        fit25=fit25+1;
     
    else if t_constraint < 0 && cols25 == colss25
            fit25=fit25+1;
        end
    end
    end
    %
    for o=1:20
    [rows26,cols26] =find( X_initial26==J_constraint(o,1));
     [rowss26,colss26] =find( X_initial26==J_constraint(o,2));
     [rows2626,cols2626] =find( X==J_constraint(o,1));
        [rowss2626,colss2626] =find(X==J_constraint(o,2));
        t_constraint=X(rows2626,3)-X(rowss2626,3);
    if cols26< colss26 
        fit26=fit26+1;
      
    else if t_constraint < 0 && cols26 == colss26
            fit26=fit26+1;
        end
    end
    end
    %
    for o=1:20
    [rows27,cols27] =find( X_initial27==J_constraint(o,1));
     [rowss27,colss27] =find( X_initial27==J_constraint(o,2));
     [rows2727,cols2727] =find( X==J_constraint(o,1));
        [rowss2727,colss2727] =find(X==J_constraint(o,2));
        t_constraint=X(rows2727,3)-X(rowss2727,3);
    if cols27< colss27 
        fit27=fit27+1;
      
    else if t_constraint < 0 && cols27 == colss27
            fit27=fit27+1;
        end
    end
    end
    %
    for o=1:20
    [rows28,cols28] =find( X_initial28==J_constraint(o,1));
     [rowss28,colss28] =find( X_initial28==J_constraint(o,2));
      [rows2828,cols2828] =find( X==J_constraint(o,1));
        [rowss2828,colss2828] =find(X==J_constraint(o,2));
        t_constraint=X(rows2828,3)-X(rowss2828,3);
    if cols28< colss28 
        fit28=fit28+1;
     
    else if t_constraint < 0 && cols28 == colss28
            fit28=fit28+1;
        end
    end
    end
    %
    for o=1:20
    [rows29,cols29] =find( X_initial29==J_constraint(o,1));
     [rowss29,colss29] =find( X_initial29==J_constraint(o,2));
      [rows2929,cols2929] =find( X==J_constraint(o,1));
        [rowss2929,colss2929] =find(X==J_constraint(o,2));
        t_constraint=X(rows2929,3)-X(rowss2929,3);
    if cols29< colss29 
        fit29=fit29+1;
     
    else if t_constraint < 0 && cols29 == colss29
            fit29=fit29+1;
        end
    end
    end
    %
    for o=1:20
    [rows30,cols30] =find( X_initial30==J_constraint(o,1));
     [rowss30,colss30] =find( X_initial30==J_constraint(o,2));
     [rows3030,cols3030] =find( X==J_constraint(o,1));
        [rowss3030,colss3030] =find(X==J_constraint(o,2));
        t_constraint=X(rows3030,3)-X(rowss3030,3);
    if cols30< colss30 
        fit30=fit30+1;
      
    else if t_constraint < 0 && cols30 == colss30
            fit30=fit30+1;
        end
    end
    end
    %
    for o=1:20
    [rows31,cols31] =find( X_initial31==J_constraint(o,1));
     [rowss31,colss31] =find( X_initial31==J_constraint(o,2));
      [rows3131,cols3131] =find( X==J_constraint(o,1));
        [rowss3131,colss3131] =find(X==J_constraint(o,2));
        t_constraint=X(rows3131,3)-X(rowss3131,3);
    if cols31< colss31 
        fit31=fit31+1;
     
    else if t_constraint < 0 && cols31 == colss31
            fit31=fit31+1;
        end
    end
    end
    %
    for o=1:20
    [rows32,cols32] =find( X_initial32==J_constraint(o,1));
     [rowss32,colss32] =find( X_initial32==J_constraint(o,2));
       [rows3232,cols3232] =find( X==J_constraint(o,1));
        [rowss3232,colss3232] =find(X==J_constraint(o,2));
        t_constraint=X(rows3232,3)-X(rowss3232,3);
    if cols32< colss32 
        fit32=fit32+1;
    
    else if t_constraint < 0 && cols32 == colss32
            fit32=fit32+1;
        end
    end
    end
    %
    for o=1:20
    [rows33,cols33] =find( X_initial33==J_constraint(o,1));
     [rowss33,colss33] =find( X_initial33==J_constraint(o,2));
     [rows3333,cols3333] =find( X==J_constraint(o,1));
        [rowss3333,colss3333] =find(X==J_constraint(o,2));
        t_constraint=X(rows3333,3)-X(rowss3333,3);
    if cols33< colss33 
        fit33=fit33+1;
      
    else if t_constraint < 0 && cols33 == colss33
            fit33=fit33+1;
        end
    end
    end
    %
    for o=1:20
    [rows34,cols34] =find( X_initial34==J_constraint(o,1));
     [rowss34,colss34] =find( X_initial34==J_constraint(o,2));
      [rows3434,cols3434] =find( X==J_constraint(o,1));
        [rowss3434,colss3434] =find(X==J_constraint(o,2));
        t_constraint=X(rows3434,3)-X(rowss3434,3);
    if cols34< colss34 
        fit34=fit34+1;
     
    else if t_constraint < 0 && cols34 == colss34
            fit34=fit34+1;
        end
    end
    end
    %
    for o=1:20
    [rows35,cols35] =find( X_initial35==J_constraint(o,1));
     [rowss35,colss35] =find( X_initial35==J_constraint(o,2));
      [rows3535,cols3535] =find( X==J_constraint(o,1));
        [rowss3535,colss3535] =find(X==J_constraint(o,2));
        t_constraint=X(rows3535,3)-X(rowss3535,3);
    if cols35< colss35 
        fit35=fit35+1;
     
    else if t_constraint < 0 && cols35 == colss35
            fit35=fit35+1;
        end
    end
    end
    %
    for o=1:20
    [rows36,cols36] =find( X_initial36==J_constraint(o,1));
     [rowss36,colss36] =find( X_initial36==J_constraint(o,2));
     [rows3636,cols3636] =find( X==J_constraint(o,1));
        [rowss3636,colss3636] =find(X==J_constraint(o,2));
        t_constraint=X(rows3636,3)-X(rowss3636,3);
    if cols36< colss36 
        fit36=fit36+1;
      
    else if t_constraint < 0 && cols36 == colss36
            fit36=fit36+1;
        end
    end
    end
    %
    for o=1:20
    [rows37,cols37] =find( X_initial37==J_constraint(o,1));
     [rowss37,colss37] =find( X_initial37==J_constraint(o,2));
      [rows3737,cols3737] =find( X==J_constraint(o,1));
        [rowss3737,colss3737] =find(X==J_constraint(o,2));
        t_constraint=X(rows3737,3)-X(rowss3737,3);
    if cols37< colss37 
        fit37=fit37+1;
    
    else if t_constraint < 0 && cols37 == colss37
            fit37=fit37+1;
        end
    end
    end
    %
    for o=1:20
    [rows38,cols38] =find( X_initial38==J_constraint(o,1));
     [rowss38,colss38] =find( X_initial38==J_constraint(o,2));
     [rows3838,cols3838] =find( X==J_constraint(o,1));
        [rowss3838,colss3838] =find(X==J_constraint(o,2));
        t_constraint=X(rows3838,3)-X(rowss3838,3);
    if cols38< colss38 
        fit38=fit38+1;
      
    else if t_constraint < 0 && cols2 == colss2
            fit38=fit38+1;
        end
    end
    
    end
    %
    for o=1:20
    [rows39,cols39] =find( X_initial39==J_constraint(o,1));
     [rowss439,colss39] =find( X_initial39==J_constraint(o,2));
     [rows3939,cols3939] =find( X==J_constraint(o,1));
        [rowss3939,colss3939] =find(X==J_constraint(o,2));
        t_constraint=X(rows3939,3)-X(rowss3939,3);
    if cols39< colss39 
        fit39=fit39+1;
      
    else if t_constraint < 0 && cols39 == colss39
            fit39=fit39+1;
        end
    end
    end
    %
    for o=1:20
    [rows40,cols40] =find( X_initial40==J_constraint(o,1));
     [rowss40,colss40] =find( X_initial40==J_constraint(o,2));
      [rows4040,cols4040] =find( X==J_constraint(o,1));
        [rowss4040,colss4040] =find(X==J_constraint(o,2));
        t_constraint=X(rows4040,3)-X(rowss4040,3);
    if cols40< colss40 
        fit40=fit40+1;
     
    else if t_constraint < 0 && cols40 == colss40
            fit40=fit40+1;
        end
    end
    end
    %
    for o=1:20
    [rows41,cols41] =find( X_initial41==J_constraint(o,1));
     [rowss41,colss41] =find( X_initial41==J_constraint(o,2));
          [rows4141,cols4141] =find( X==J_constraint(o,1));
        [rowss4141,colss4141] =find(X==J_constraint(o,2));
        t_constraint=X(rows4141,3)-X(rowss4141,3);
    if cols41< colss41 
        fit41=fit41+1;
 
    else if t_constraint < 0 && cols41 == colss41
            fit41=fit41+1;
        end
    end
    end
    %
    for o=1:20
    [rows42,cols42] =find( X_initial42==J_constraint(o,1));
     [rowss42,colss42] =find( X_initial42==J_constraint(o,2));
     [rows4242,cols4242] =find( X==J_constraint(o,1));
        [rowss4242,colss4242] =find(X==J_constraint(o,2));
        t_constraint=X(rows4242,3)-X(rowss4242,3);
    if cols42< colss42 
        fit42=fit42+1;
      
    else if t_constraint < 0 && cols42 == colss42
            fit42=fit42+1;
        end
    end
    end
    %
    for o=1:20
    [rows43,cols43] =find( X_initial43==J_constraint(o,1));
     [rowss43,colss43] =find( X_initial43==J_constraint(o,2));
     [rows4343,cols4343] =find( X==J_constraint(o,1));
        [rowss4343,colss4343] =find(X==J_constraint(o,2));
        t_constraint=X(rows4343,3)-X(rowss4343,3);
    if cols43< colss43 
        fit43=fit43+1;
      
    else if t_constraint < 0 && cols43 == colss43
            fit43=fit43+1;
        end
    end
    end
    %
    for o=1:20
    [rows44,cols44] =find( X_initial44==J_constraint(o,1));
     [rowss44,colss44] =find( X_initial44==J_constraint(o,2));
      [rows4444,cols4444] =find( X==J_constraint(o,1));
        [rowss4444,colss4444] =find(X==J_constraint(o,2));
        t_constraint=X(rows4444,3)-X(rowss4444,3);
    if cols44< colss44 
        fit44=fit44+1;
     
    else if t_constraint < 0 && cols44 == colss44
            fit44=fit44+1;
        end
    end
    end
    %
    for o=1:20
    [rows45,cols45] =find( X_initial45==J_constraint(o,1));
     [rowss45,colss45] =find( X_initial45==J_constraint(o,2));
     [rows4545,cols4545] =find( X==J_constraint(o,1));
        [rowss4545,colss4545] =find(X==J_constraint(o,2));
        t_constraint=X(rows4545,3)-X(rowss4545,3);
    if cols45< colss45 
        fit45=fit45+1;
      
    else if t_constraint < 0 && cols2 == colss2
            fit45=fit45+1;
        end
    end
    end
    %
    for o=1:20
    [rows46,cols46] =find( X_initial46==J_constraint(o,1));
     [rowss46,colss46] =find( X_initial46==J_constraint(o,2));
      [rows4646,cols4646] =find( X==J_constraint(o,1));
        [rowss4646,colss4646] =find(X==J_constraint(o,2));
        t_constraint=X(rows4646,3)-X(rowss4646,3);
    if cols46< colss46 
        fit46=fit46+1;
     
    else if t_constraint < 0 && cols2 == colss2
            fit46=fit46+1;
        end
    end
    end
    %
    for o=1:20
    [rows47,cols47] =find( X_initial47==J_constraint(o,1));
     [rowss47,colss47] =find( X_initial47==J_constraint(o,2));
      [rows4747,cols4747] =find( X==J_constraint(o,1));
        [rowss4747,colss4747] =find(X==J_constraint(o,2));
        t_constraint=X(rows4747,3)-X(rowss4747,3);
    if cols47< colss47 
        fit47=fit47+1;
     
    else if t_constraint < 0 && cols47 == colss47
            fit47=fit47+1;
        end
    end
    end
    %
    for o=1:20
    [rows48,cols48] =find( X_initial48==J_constraint(o,1));
     [rowss48,colss48] =find( X_initial48==J_constraint(o,2));
     [rows4848,cols4848] =find( X==J_constraint(o,1));
        [rowss4848,colss4848] =find(X==J_constraint(o,2));
        t_constraint=X(rows4848,3)-X(rowss4848,3);
    if cols48< colss48 
        fit48=fit48+1;
      
    else if t_constraint < 0 && cols48 == colss48
            fit48=fit48+1;
        end
    end
    end
    %
    for o=1:20
    [rows49,cols49] =find( X_initial49==J_constraint(o,1));
     [rowss50,colss49] =find( X_initial49==J_constraint(o,2));
     [rows4949,cols4949] =find( X==J_constraint(o,1));
        [rowss4949,colss4949] =find(X==J_constraint(o,2));
        t_constraint=X(rows4949,3)-X(rowss4949,3);
    if cols49< colss49 
        fit49=fit49+1;
      
    else if t_constraint < 0 && cols49 == colss49
            fit49=fit49+1;
        end
    end
    end
    %
    for o=1:20
    [rows50,cols50] =find( X_initial50==J_constraint(o,1));
     [rowss50,colss50] =find( X_initial50==J_constraint(o,2));
      [rows5050,cols5050] =find( X==J_constraint(o,1));
        [rowss5050,colss5050] =find(X==J_constraint(o,2));
        t_constraint=X(rows5050,3)-X(rowss5050,3);
    if cols50< colss50 
        fit50=fit50+1;
     
    else if t_constraint < 0 && cols50 == colss50
            fit50=fit50+1;
        end
    end
    end
    %
    for o=1:20
    [rows51,cols51] =find( X_initial51==J_constraint(o,1));
     [rowss51,colss51] =find( X_initial51==J_constraint(o,2));
      [rows5151,cols5151] =find( X==J_constraint(o,1));
        [rowss5151,colss5151] =find(X==J_constraint(o,2));
        t_constraint=X(rows5151,3)-X(rowss5151,3);
    if cols51< colss51 
        fit51=fit51+1;
     
    else if t_constraint < 0 && cols51 == colss51
            fit51=fit51+1;
        end
    end
    end
    %
    for o=1:20
    [rows52,cols52] =find( X_initial52==J_constraint(o,1));
     [rowss52,colss52] =find( X_initial52==J_constraint(o,2));
      [rows5252,cols5252] =find( X==J_constraint(o,1));
        [rowss5252,colss5252] =find(X==J_constraint(o,2));
        t_constraint=X(rows5252,3)-X(rowss5252,3);
    if cols52< colss52 
        fit52=fit52+1;
     
    else if t_constraint < 0 && cols52 == colss52
            fit52=fit52+1;
        end
    end
    end
    %
    for o=1:20
    [rows53,cols53] =find( X_initial53==J_constraint(o,1));
     [rowss53,colss53] =find( X_initial53==J_constraint(o,2));
     [rows5353,cols5353] =find( X==J_constraint(o,1));
        [rowss5353,colss5353] =find(X==J_constraint(o,2));
        t_constraint=X(rows5353,3)-X(rowss5353,3);
    if cols53< colss53 
        fit53=fit53+1;
      
    else if t_constraint < 0 && cols53 == colss53
            fit53=fit53+1;
        end
    end
    end
    %
    for o=1:20
    [rows54,cols54] =find( X_initial54==J_constraint(o,1));
     [rowss54,colss54] =find( X_initial54==J_constraint(o,2));
      [rows5454,cols5454] =find( X==J_constraint(o,1));
        [rowss5454,colss5454] =find(X==J_constraint(o,2));
        t_constraint=X(rows5454,3)-X(rowss5454,3);
    if cols54< colss54 
        fit54=fit54+1;
   
    else if t_constraint < 0 && cols54 == colss54
            fit54=fit54+1;
        end
    end
    end
    %
    for o=1:20
    [rows55,cols55] =find( X_initial55==J_constraint(o,1));
     [rowss55,colss55] =find( X_initial55==J_constraint(o,2));
      [rows5555,cols5555] =find( X==J_constraint(o,1));
        [rowss5555,colss5555] =find(X==J_constraint(o,2));
        t_constraint=X(rows5555,3)-X(rowss5555,3);
    if cols55< colss55 
        fit55=fit55+1;
     
    else if t_constraint < 0 && cols55 == colss55
            fit55=fit55+1;
        end
    end
    end
    %
    for o=1:20
    [rows56,cols56] =find( X_initial56==J_constraint(o,1));
     [rowss56,colss56] =find( X_initial56==J_constraint(o,2));
      [rows5656,cols5656] =find( X==J_constraint(o,1));
        [rowss5656,colss5656] =find(X==J_constraint(o,2));
        t_constraint=X(rows5656,3)-X(rowss5656,3);
    if cols56< colss56 
        fit56=fit56+1;
     
    else if t_constraint < 0 && cols56 == colss56
            fit56=fit56+1;
        end
    end
    end
    %
    for o=1:20
    [rows57,cols57] =find( X_initial57==J_constraint(o,1));
     [rowss57,colss57] =find( X_initial57==J_constraint(o,2));
     [rows5757,cols5757] =find( X==J_constraint(o,1));
        [rowss5757,colss5757] =find(X==J_constraint(o,2));
        t_constraint=X(rows5757,3)-X(rowss5757,3);
    if cols57< colss57 
        fit57=fit57+1;
      
    else if t_constraint < 0 && cols57 == colss57
            fit57=fit57+1;
        end
    end
    end
    %
    for o=1:20
    [rows58,cols58] =find( X_initial58==J_constraint(o,1));
     [rowss58,colss58] =find( X_initial58==J_constraint(o,2));
      [rows5858,cols5858] =find( X==J_constraint(o,1));
        [rowss5858,colss5858] =find(X==J_constraint(o,2));
        t_constraint=X(rows5858,3)-X(rowss5858,3);
    if cols58< colss58 
        fit58=fit58+1;
     
    else if t_constraint < 0 && cols58 == colss58
            fit58=fit58+1;
        end
    end
    end
    %
    for o=1:20
    [rows59,cols59] =find( X_initial59==J_constraint(o,1));
     [rowss59,colss59] =find( X_initial59==J_constraint(o,2));
      [rows5959,cols5959] =find( X==J_constraint(o,1));
        [rowss5959,colss5959] =find(X==J_constraint(o,2));
        t_constraint=X(rows5959,3)-X(rowss5959,3);
    if cols59< colss59 
        fit59=fit59+1;
      
    else if t_constraint < 0 && cols59 == colss59
            fit59=fit59+1;
        end
    end
    end
    %
    for o=1:20
    [rows60,cols60] =find( X_initial60==J_constraint(o,1));
     [rowss60,colss60] =find( X_initial60==J_constraint(o,2));
      [rows6060,cols6060] =find( X==J_constraint(o,1));
        [rowss6060,colss6060] =find(X==J_constraint(o,2));
        t_constraint=X(rows6060,3)-X(rowss6060,3);
    if cols60< colss60 
        fit60=fit60+1;
     
    else if t_constraint < 0 && cols60 == colss60
            fit60=fit60+1;
        end
    end
    end
    %
    for o=1:20
    [rows61,cols61] =find( X_initial61==J_constraint(o,1));
     [rowss61,colss61] =find( X_initial61==J_constraint(o,2));
     [rows6161,cols6161] =find( X==J_constraint(o,1));
        [rowss6161,colss6161] =find(X==J_constraint(o,2));
        t_constraint=X(rows6161,3)-X(rowss6161,3);
    if cols61< colss61 
        fit61=fit61+1;
      
    else if t_constraint < 0 && cols61 == colss61
            fit61=fit61+1;
        end
    end
    end
    %
    for o=1:20
    [rows62,cols62] =find( X_initial62==J_constraint(o,1));
     [rowss62,colss62] =find( X_initial62==J_constraint(o,2));
       [rows6262,cols6262] =find( X==J_constraint(o,1));
        [rowss6262,colss6262] =find(X==J_constraint(o,2));
        t_constraint=X(rows6262,3)-X(rowss6262,3);
    if cols62< colss62
        fit62=fit62+1;
    
    else if t_constraint < 0 && cols62 == colss62
            fit62=fit62+1;
        end
    end
    end
    %
    for o=1:20
    [rows63,cols63] =find( X_initial63==J_constraint(o,1));
     [rowss63,colss63] =find( X_initial63==J_constraint(o,2));
     [rows6363,cols6363] =find( X==J_constraint(o,1));
        [rowss6363,colss6363] =find(X==J_constraint(o,2));
        t_constraint=X(rows6363,3)-X(rowss6363,3);
    if cols63< colss63 
        fit63=fit63+1;
      
    else if t_constraint < 0 && cols63 == colss63
            fit63=fit63+1;
        end
    end
    end
    %
    for o=1:20
    [rows64,cols64] =find( X_initial64==J_constraint(o,1));
     [rowss64,colss64] =find( X_initial64==J_constraint(o,2));
     [rows6464,cols6464] =find( X==J_constraint(o,1));
        [rowss6464,colss6464] =find(X==J_constraint(o,2));
        t_constraint=X(rows6464,3)-X(rowss6464,3);
    if cols64< colss64 
        fit64=fit64+1;
      
    else if t_constraint < 0 && cols64 == colss64
            fit64=fit64+1;
        end
    end
    end
    %
    for o=1:20
    [rows65,cols65] =find( X_initial65==J_constraint(o,1));
     [rowss65,colss65] =find( X_initial65==J_constraint(o,2));
      [rows6565,cols6565] =find( X==J_constraint(o,1));
        [rowss6565,colss6565] =find(X==J_constraint(o,2));
        t_constraint=X(rows6565,3)-X(rowss6565,3);
    if cols65< cols65 
        fit65=fit65+1;
     
    else if t_constraint < 0 && cols65 == colss65
            fit65=fit65+1;
        end
    end
    end
    %
    for o=1:20
    [rows66,cols66] =find( X_initial66==J_constraint(o,1));
     [rowss66,colss66] =find( X_initial66==J_constraint(o,2));
     [rows6666,cols6666] =find( X==J_constraint(o,1));
        [rowss6666,colss6666] =find(X==J_constraint(o,2));
        t_constraint=X(rows6666,3)-X(rowss6666,3);
    if cols66< colss66 
        fit66=fit66+1;
      
    else if t_constraint < 0 && cols66 == colss66
            fit66=fit66+1;
        end
    end
    end
    %
    for o=1:20
    [rows67,cols67] =find( X_initial67==J_constraint(o,1));
     [rowss67,colss67] =find( X_initial67==J_constraint(o,2));
      [rows6767,cols6767] =find( X==J_constraint(o,1));
        [rowss6767,colss6767] =find(X==J_constraint(o,2));
        t_constraint=X(rows6767,3)-X(rowss6767,3);
    if cols67< colss67 
        fit67=fit67+1;
     
    else if t_constraint < 0 && cols67 == colss67
            fit67=fit67+1;
        end
    end
    end
    %
    for o=1:20
    [rows68,cols68] =find( X_initial68==J_constraint(o,1));
     [rowss68,colss68] =find( X_initial68==J_constraint(o,2));
     [rows6868,cols6868] =find( X==J_constraint(o,1));
        [rowss6868,colss6868] =find(X==J_constraint(o,2));
        t_constraint=X(rows6868,3)-X(rowss6868,3);
    if cols68< colss68 
        fit68=fit68+1;
     
    else if t_constraint < 0 && cols68 == colss68
            fit68=fit68+1;
        end
    end
    end
    %
    for o=1:20
    [rows,cols69] =find( X_initial69==J_constraint(o,1));
     [rowss69,colss69] =find( X_initial69==J_constraint(o,2));
      [rows6969,cols6969] =find( X==J_constraint(o,1));
        [rowss6969,colss6969] =find(X==J_constraint(o,2));
        t_constraint=X(rows6969,3)-X(rowss6969,3);
    if cols69< colss69 
        fit69=fit69+1;
    
    else if t_constraint < 0 && cols69 == colss69
            fit69=fit69+1;
        end
    end
    end
    %
    for o=1:20
    [rows70,cols70] =find( X_initial70==J_constraint(o,1));
     [rowss70,colss70] =find( X_initial70==J_constraint(o,2));
      [rows7070,cols7070] =find( X==J_constraint(o,1));
        [rowss7070,colss7070] =find(X==J_constraint(o,2));
        t_constraint=X(rows7070,3)-X(rowss7070,3);
    if cols70< colss70 
        fit70=fit70+1;
     
    else if t_constraint < 0 && cols70 == colss70
            fit70=fit70+1;
        end
    end
    end
    %
    for o=1:20
    [rows71,cols71] =find( X_initial71==J_constraint(o,1));
     [rowss71,colss71] =find( X_initial71==J_constraint(o,2));
      [rows7171,cols7171] =find( X==J_constraint(o,1));
        [rowss7171,colss7171] =find(X==J_constraint(o,2));
        t_constraint=X(rows7171,3)-X(rowss7171,3);
    if cols71< colss71 
        fit71=fit71+1;
    
    else if t_constraint < 0 && cols71 == colss71
            fit71=fit71+1;
        end
    end
    end
    %
   for o=1:20
    [rows72,cols72] =find( X_initial72==J_constraint(o,1));
     [rowss72,colss72] =find( X_initial72==J_constraint(o,2));
      [rows7272,cols7272] =find( X==J_constraint(o,1));
        [rowss7272,colss7272] =find(X==J_constraint(o,2));
        t_constraint=X(rows7272,3)-X(rowss7272,3);
    if cols72< colss72 
        fit72=fit72+1;
     
    else if t_constraint < 0 && cols72 == colss72
            fit72=fit72+1;
        end
    end
   end
    %
    for o=1:20
    [rows73,cols73] =find( X_initial73==J_constraint(o,1));
     [rowss73,colss73] =find( X_initial73==J_constraint(o,2));
     [rows7373,cols7373] =find( X==J_constraint(o,1));
        [rowss7373,colss7373] =find(X==J_constraint(o,2));
        t_constraint=X(rows7373,3)-X(rowss7373,3);
    if cols73< colss73 
        fit73=fit73+1;
      
    else if t_constraint < 0 && cols73 == colss73
            fit73=fit73+1;
        end
    end
    end
    %
    for o=1:20
    [rows74,cols74] =find( X_initial74==J_constraint(o,1));
     [rowss74,colss74] =find( X_initial74==J_constraint(o,2));
     [rows7474,cols7474] =find( X==J_constraint(o,1));
        [rowss7474,colss7474] =find(X==J_constraint(o,2));
        t_constraint=X(rows7474,3)-X(rowss7474,3);
    if cols74< colss74 
        fit74=fit74+1;
      
    else if t_constraint < 0 && cols74 == colss74
            fit74=fit74+1;
        end
    end
    end
    %
    for o=1:20
    [rows75,cols75] =find( X_initial75==J_constraint(o,1));
     [rowss75,colss75] =find( X_initial75==J_constraint(o,2));
      [rows7575,cols7575] =find( X==J_constraint(o,1));
        [rowss7575,colss7575] =find(X==J_constraint(o,2));
        t_constraint=X(rows7575,3)-X(rowss7575,3);
    if cols75< colss75 
        fit75=fit75+1;
     
    else if t_constraint < 0 && cols75 == colss75
            fit75=fit75+1;
        end
    end
    end
    %
    for o=1:20
    [rows76,cols76] =find( X_initial76==J_constraint(o,1));
     [rowss76,colss76] =find( X_initial76==J_constraint(o,2));
        [rows7676,cols7676] =find( X==J_constraint(o,1));
        [rowss7676,colss7676] =find(X==J_constraint(o,2));
        t_constraint=X(rows7676,3)-X(rowss7676,3);
    if cols76< colss76 
        fit76=fit76+1;
   
    else if t_constraint < 0 && cols76 == colss76
            fit76=fit76+1;
        end
    end
    end
    %
    for o=1:20
    [rows77,cols77] =find( X_initial77==J_constraint(o,1));
     [rowss77,colss77] =find( X_initial77==J_constraint(o,2));
     [rows7777,cols7777] =find( X==J_constraint(o,1));
        [rowss7777,colss7777] =find(X==J_constraint(o,2));
        t_constraint=X(rows7777,3)-X(rowss7777,3);
    if cols77< colss77 
        fit77=fit77+1;
      
    else if t_constraint < 0 && cols77 == colss77
            fit77=fit77+1;
        end
    end
    end
    %
    for o=1:20
    [rows78,cols78] =find( X_initial78==J_constraint(o,1));
     [rowss78,colss78] =find( X_initial78==J_constraint(o,2));
     [rows7878,cols7878] =find( X==J_constraint(o,1));
        [rowss7878,colss7878] =find(X==J_constraint(o,2));
        t_constraint=X(rows7878,3)-X(rowss7878,3);
    if cols78< colss78 
        fit78=fit78+1;
      
    else if t_constraint < 0 && cols78 == colss78
            fit78=fit78+1;
        end
    end
    end
    %
    for o=1:20
    [rows79,cols79] =find( X_initial79==J_constraint(o,1));
     [rowss79,colss79] =find( X_initial79==J_constraint(o,2));
     [rows7979,cols7979] =find( X==J_constraint(o,1));
        [rowss7979,colss7979] =find(X==J_constraint(o,2));
        t_constraint=X(rows7979,3)-X(rowss7979,3);
    if cols79< colss79 
        fit79=fit79+1;
     
    else if t_constraint < 0 && cols79 == colss79
            fit79=fit79+1;
        end
    end
    end
    %
    for o=1:20
    [rows80,cols80] =find( X_initial80==J_constraint(o,1));
     [rowss80,colss80] =find( X_initial80==J_constraint(o,2));
     [rows8080,cols8080] =find( X==J_constraint(o,1));
        [rowss8080,colss8080] =find(X==J_constraint(o,2));
        t_constraint=X(rows8080,3)-X(rowss8080,3);
    if cols80< colss80 
        fit80=fit80+1;
     
    else if t_constraint < 0 && cols80 == colss80
            fit80=fit80+1;
        end
    end
    end
    %
    for o=1:20
    [rows81,cols81] =find( X_initial81==J_constraint(o,1));
     [rowss81,colss81] =find( X_initial81==J_constraint(o,2));
     [rows8181,cols8181] =find( X==J_constraint(o,1));
        [rowss8181,colss8181] =find(X==J_constraint(o,2));
        t_constraint=X(rows8181,3)-X(rowss8181,3);
    if cols81< colss81 
        fit81=fit81+1;
    
    else if t_constraint < 0 && cols81 == colss81
            fit81=fit81+1;
        end
    end
    end
    %
    for o=1:20
    [rows82,cols82] =find( X_initial82==J_constraint(o,1));
     [rowss82,colss82] =find( X_initial82==J_constraint(o,2));
      [rows8282,cols8282] =find( X==J_constraint(o,1));
        [rowss8282,colss8282] =find(X==J_constraint(o,2));
        t_constraint=X(rows8282,3)-X(rowss8282,3);
    if cols82< colss82 
        fit82=fit82+1;
   
    else if t_constraint < 0 && cols82 == colss82
            fit82=fit82+1;
        end
    end
    end
    %
    for o=1:20
    [rows83,cols83] =find( X_initial83==J_constraint(o,1));
     [rowss83,colss83] =find( X_initial83==J_constraint(o,2));
      [rows8383,cols8383] =find( X==J_constraint(o,1));
        [rowss8383,colss8383] =find(X==J_constraint(o,2));
        t_constraint=X(rows8383,3)-X(rowss8383,3);
    if cols83< cols83 
        fit83=fit83+1;
   
    else if t_constraint < 0 && cols83 == colss83
            fit83=fit83+1;
        end
    end
    end
    
    %
    for o=1:20
    [rows84,cols84] =find( X_initial84==J_constraint(o,1));
     [rowss84,colss84] =find( X_initial84==J_constraint(o,2));
      [rows8484,cols8484] =find( X==J_constraint(o,1));
        [rowss8484,colss8484] =find(X==J_constraint(o,2));
        t_constraint=X(rows8484,3)-X(rowss8484,3);
    if cols84< colss84 
        fit84=fit84+1;
   
    else if t_constraint < 0 && cols84 == colss84
            fit84=fit84+1;
        end
    end
    end
    %
    
    for o=1:20
    [rows85,cols85] =find( X_initial85==J_constraint(o,1));
     [rowss85,colss85] =find( X_initial85==J_constraint(o,2));
     [rows8585,cols8585] =find( X==J_constraint(o,1));
        [rowss8585,colss8585] =find(X==J_constraint(o,2));
        t_constraint=X(rows8585,3)-X(rowss8585,3);
    if cols85< colss85 
        fit85=fit85+1;
   
    else if t_constraint < 0 && cols85 == colss85
            fit85=fit85+1;
        end
    end
    end
    %
    for o=1:20
    [rows86,cols86] =find( X_initial86==J_constraint(o,1));
     [rowss86,colss86] =find( X_initial86==J_constraint(o,2));
     [rows8686,cols8686]=find( X==J_constraint(o,1));
        [rowss8686,colss8686] =find(X==J_constraint(o,2));
        t_constraint=X(rows8686,3)-X(rowss8686,3);
    if cols86< colss86 
        fit86=fit86+1;
    
    else if t_constraint < 0 && cols86 == colss86
            fit86=fit86+1;
        end
    end
    end
    %
    for o=1:20
    [rows87,cols87] =find( X_initial87==J_constraint(o,1));
     [rowss87,colss87] =find( X_initial87==J_constraint(o,2));
        [rows8787,cols8787] =find( X==J_constraint(o,1));
        [rowss8787,colss8787] =find(X==J_constraint(o,2));
       t_constraint=X(rows8787,3)-X(rowss8787,3);
    if cols87< colss87 
        fit87=fit87+1;
    else if t_constraint < 0 && cols87 == colss87
            fit87=fit87+1;
        end
    end
    end
    %
    for o=1:20
    [rows88,cols88] =find( X_initial88==J_constraint(o,1));
     [rowss88,colss88] =find( X_initial88==J_constraint(o,2));
     [rows8888,cols8888] =find( X==J_constraint(o,1));
        [rowss8888,colss8888] =find(X==J_constraint(o,2));
        t_constraint=X(rows8888,3)-X(rowss8888,3);
    if cols88< colss88 
        fit88=fit88+1;
    
    else if t_constraint < 0 && cols88 == colss88
            fit88=fit88+1;
        end
    end
    end
    %
    for o=1:20
    [rows89,cols89] =find( X_initial89==J_constraint(o,1));
     [rowss89,colss89] =find( X_initial89==J_constraint(o,2));
     [rows8989,cols8989] =find( X==J_constraint(o,1));
        [rowss8989,colss8989] =find(X==J_constraint(o,2));
        t_constraint=X(rows8989,3)-X(rowss8989,3);
    if cols89< cols89 
        fit89=fit89+1;
   
    else if t_constraint < 0 && cols89 == colss89
            fit89=fit89+1;
        end
    end
    end
    %
    for o=1:20
    [rows90,cols90] =find( X_initial90==J_constraint(o,1));
     [rowss90,colss90] =find( X_initial90==J_constraint(o,2));
     [rows9090,cols9090] =find( X==J_constraint(o,1));
        [rowss9090,colss9090] =find(X==J_constraint(o,2));
        t_constraint=X(rows9090,3)-X(rowss9090,3);
    if cols90< cols90 
        fit90=fit90+1;
    
    else if t_constraint < 0 && cols90 == colss90
            fit90=fit90+1;
        end
    end
    end
    %
    for o=1:20
    [rows91,cols91] =find( X_initial91==J_constraint(o,1));
     [rowss91,colss91] =find( X_initial91==J_constraint(o,2));
     [rows9191,cols9191] =find( X==J_constraint(o,1));
        [rowss9191,colss9191] =find(X==J_constraint(o,2));
        t_constraint=X(rows9191,3)-X(rowss9191,3);
    if cols91< colss91 
        fit91=fit91+1;
    
    else if t_constraint < 0 && cols91 == colss91
            fit91=fit91+1;
        end
    end
    end
    %
    for o=1:20
    [rows92,cols92] =find( X_initial92==J_constraint(o,1));
     [rowss92,colss92] =find( X_initial92==J_constraint(o,2));
      [rows9292,cols9292] =find( X==J_constraint(o,1));
        [rowss9292,colss9292] =find(X==J_constraint(o,2));
        t_constraint=X(rows9292,3)-X(rowss9292,3);
    if cols92< colss92 
        fit92=fit92+1;
   
    else if t_constraint < 0 && cols92 == colss92
            fit92=fit92+1;
        end
    end
    end
    %
    for o=1:20
    [rows93,cols93] =find( X_initial93==J_constraint(o,1));
     [rowss93,colss93] =find( X_initial93==J_constraint(o,2));
     [rows9393,cols9393] =find( X==J_constraint(o,1));
        [rowss9393,colss9393] =find(X==J_constraint(o,2));
        t_constraint=X(rows9393,3)-X(rowss9393,3);
    if cols93< colss93 
        fit93=fit93+1;
   
    else if t_constraint < 0 && cols93 == colss93
            fit93=fit93+1;
        end
    end
    end
    %
    for o=1:20
    [rows94,cols94] =find( X_initial94==J_constraint(o,1));
     [rowss94,colss94] =find( X_initial94==J_constraint(o,2));
       [rows9494,cols9494] =find( X==J_constraint(o,1));
        [rowss9494,colss9494] =find(X==J_constraint(o,2));
        t_constraint=X(rows9494,3)-X(rowss9494,3);
    if cols94< colss94 
        fit94=fit94+1;
  
    else if t_constraint < 0 && cols94 == colss94
            fit94=fit94+1;
        end
    end
    end
    %
    for o=1:20
    [rows95,cols95] =find( X_initial95==J_constraint(o,1));
     [rowss95,colss95] =find( X_initial95==J_constraint(o,2));
     [rows9595,cols9595] =find( X==J_constraint(o,1));
        [rowss9595,colss9595] =find(X==J_constraint(o,2));
        t_constraint=X(rows9595,3)-X(rowss9595,3);
    if cols95< colss95 
        fit95=fit95+1;
    else if t_constraint < 0 && cols95 == colss95
            fit95=fit95+1;
        end
    end
    end
    %
    for o=1:20
    [rows96,cols96] =find( X_initial96==J_constraint(o,1));
     [rowss96,colss96] =find( X_initial96==J_constraint(o,2));
     [rows9696,cols9696] =find( X==J_constraint(o,1));
        [rowss9696,colss9696] =find(X==J_constraint(o,2));
        t_constraint=X(rows9696,3)-X(rowss9696,3);
    if cols96< colss96 
        fit96=fit96+1;
    
    else if t_constraint < 0 && cols96 == colss96
            fit96=fit96+1;
        end
    end
    end
    %
    for o=1:20
    [rows97,cols97] =find( X_initial97==J_constraint(o,1));
     [rowss97,colss97] =find( X_initial97==J_constraint(o,2));
     [rows9797,cols9797] =find( X==J_constraint(o,1));
        [rowss9797,colss9797] =find(X==J_constraint(o,2));
        t_constraint=X(rows9797,3)-X(rowss9797,3);
    if cols97< colss97 
        fit97=fit97+1;
    else if t_constraint < 0 && cols97 == colss97
            fit97=fit97+1;
        end
    end
    end
    
    
    %
    for o=1:20
    [rows98,cols98] =find( X_initial98==J_constraint(o,1));
     [rowss98,colss98] =find( X_initial98==J_constraint(o,2));
      [rows9898,cols9898] =find( X==J_constraint(o,1));
        [rowss9898,colss9898] =find(X==J_constraint(o,2));
        t_constraint=X(rows9898,3)-X(rowss9898,3);
    if cols98< colss98
        fit98=fit98+1;
    else if t_constraint < 0 && cols98 == colss98
            fit98=fit98+1;
        end
    end
    end
    
    %
    for o=1:20
    [rows99,cols99] =find( X_initial99==J_constraint(o,1));
     [rowss99,colss99] =find( X_initial99==J_constraint(o,2));
     [rows9999,cols9999] =find( X==J_constraint(o,1));
        [rowss9999,colss9999] =find(X==J_constraint(o,2));
        t_constraint=X(rows9999,3)-X(rowss9999,3);
    if cols99< colss99 
        fit99=fit99+1;
    
    else if t_constraint < 0 && cols99 == colss99
            fit99=fit99+1;
        end
    end
    end
    %
    for o=1:20
    [rows100,cols100] =find( X_initial100==J_constraint(o,1));
     [rowss100,colss100] =find( X_initial100==J_constraint(o,2));
      [rows100100,cols100100] =find( X==J_constraint(o,1));
        [rowss100100,colss100100] =find(X==J_constraint(o,2));
        t_constraint=X(rows100100,3)-X(rowss100100,3);
    if cols100< colss100 
        fit100=fit100+1;
    else if t_constraint < 0 && cols100 == colss100
            fit100=fit100+1;
        end
    end
    end
    %%%%%%%%%%%%%%%%%%%%%%fittness%%%%%%%%%%%%%%%%%%%%%%%%%%
    
[evolution_fit,evolution_dim]=max([fit1,fit2,fit3,fit4,fit5,fit6,fit7,fit8,fit9,fit10,fit11,fit12,fit13,fit14,fit15,fit16,fit17,fit18,fit19,fit20,fit21,fit22,fit23,fit24,fit25,fit26,fit27,fit28,fit29,fit30,fit31,fit32,fit33,fit34,fit35,fit36,fit37,fit38,fit39,fit40,fit41,fit42,fit43,fit44,fit45,fit46,fit47,fit48,fit49,fit50,fit51,fit52,fit53,fit54,fit55,fit56,fit57,fit58,fit59,fit60,fit61,fit62,fit63,fit64,fit65,fit66,fit67,fit68,fit69,fit70,fit71,fit72,fit73,fit74,fit75,fit76,fit77,fit78,fit79,fit80,fit81,fit82,fit83,fit84,fit85,fit86,fit87,fit88,fit89,fit90,fit91,fit92,fit93,fit94,fit95,fit96,fit97,fit98,fit99,fit100]);
evolution_fit
Sub_fit=[fit1,fit2,fit3,fit4,fit5,fit6,fit7,fit8,fit9,fit10,fit11,fit12,fit13,fit14,fit15,fit16,fit17,fit18,fit19,fit20,fit21,fit22,fit23,fit24,fit25,fit26,fit27,fit28,fit29,fit30,fit31,fit32,fit33,fit34,fit35,fit36,fit37,fit38,fit39,fit40,fit41,fit42,fit43,fit44,fit45,fit46,fit47,fit48,fit49,fit50,fit51,fit52,fit53,fit54,fit55,fit56,fit57,fit58,fit59,fit60,fit61,fit62,fit63,fit64,fit65,fit66,fit67,fit68,fit69,fit70,fit71,fit72,fit73,fit74,fit75,fit76,fit77,fit78,fit79,fit80,fit81,fit82,fit83,fit84,fit85,fit86,fit87,fit88,fit89,fit90,fit91,fit92,fit93,fit94,fit95,fit96,fit97,fit98,fit99,fit100];
fatiq1=zeros(10,10,100);
if fit1==max(Sub_fit)
    fatiq1(:,:,1)=X_initial1;
elseif fit2==max(Sub_fit)
    fatiq1(:,:,2)=X_initial2;
 elseif fit3==max(Sub_fit)
    fatiq1(:,:,3)=X_initial3;
 elseif fit4==max(Sub_fit)
    fatiq1(:,:,4)=X_initial4;
  elseif fit5==max(Sub_fit)
    fatiq1(:,:,5)=X_initial5;
   elseif fit6==max(Sub_fit)
    fatiq1(:,:,6)=X_initial6;
    elseif fit7==max(Sub_fit)
    fatiq1(:,:,7)=X_initial7;
    elseif fit8==max(Sub_fit)
    fatiq1(:,:,8)=X_initial8;
    elseif fit9==max(Sub_fit)
    fatiq1(:,:,9)=X_initial9;
   elseif fit10==max(Sub_fit)
    fatiq1(:,:,10)=X_initia10;
    elseif fit11==max(Sub_fit)
    fatiq1(:,:,11)=X_initial11;
    elseif fit12==max(Sub_fit)
    fatiq1(:,:,12)=X_initial12;
    elseif fit13==max(Sub_fit)
    fatiq1(:,:,13)=X_initial13;
    elseif fit14==max(Sub_fit)
    fatiq1(:,:,14)=X_initial14;
    elseif fit15==max(Sub_fit)
    fatiq1(:,:,15)=X_initial15;
    elseif fit16==max(Sub_fit)
    fatiq1(:,:,16)=X_initial16;
    elseif fit17==max(Sub_fit)
    fatiq1(:,:,17)=X_initial17;
    elseif fit18==max(Sub_fit)
    fatiq1(:,:,18)=X_initial18;
    elseif fit19==max(Sub_fit)
    fatiq1(:,:,19)=X_initial19;
    elseif fit20==max(Sub_fit)
    fatiq1(:,:,20)=X_initial20;
    elseif fit21==max(Sub_fit)
    fatiq1(:,:,21)=X_initial21;
elseif fit22==max(Sub_fit)
    fatiq1(:,:,22)=X_initial22;
elseif fit23==max(Sub_fit)
    fatiq1(:,:,23)=X_initial23;
elseif fit24==max(Sub_fit)
    fatiq1(:,:,24)=X_initial24;
elseif fit25==max(Sub_fit)
    fatiq1(:,:,25)=X_initial25;
elseif fit26==max(Sub_fit)
    fatiq1(:,:,26)=X_initial26;
elseif fit27==max(Sub_fit)
    fatiq1(:,:,27)=X_initial27;
elseif fit28==max(Sub_fit)
    fatiq1(:,:,28)=X_initial28;
elseif fit29==max(Sub_fit)
    fatiq1(:,:,29)=X_initial29;
elseif fit30==max(Sub_fit)
    fatiq1(:,:,30)=X_initial30;
elseif fit31==max(Sub_fit)
    fatiq1(:,:,31)=X_initial31;
elseif fit32==max(Sub_fit)
    fatiq1(:,:,32)=X_initial32;
elseif fit33==max(Sub_fit)
    fatiq1(:,:,33)=X_initial33;
elseif fit34==max(Sub_fit)
    fatiq1(:,:,34)=X_initial34;
elseif fit35==max(Sub_fit)
    fatiq1(:,:,35)=X_initial35;
elseif fit36==max(Sub_fit)
    fatiq1(:,:,36)=X_initial36;
elseif fit37==max(Sub_fit)
    fatiq1(:,:,37)=X_initial37;
elseif fit38==max(Sub_fit)
    fatiq1(:,:,38)=X_initial38;
elseif fit39==max(Sub_fit)
    fatiq1(:,:,39)=X_initial39;
elseif fit40==max(Sub_fit)
    fatiq1(:,:,40)=X_initial40;
elseif fit41==max(Sub_fit)
    fatiq1(:,:,41)=X_initial41;
elseif fit42==max(Sub_fit)
    fatiq1(:,:,42)=X_initial42;
elseif fit43==max(Sub_fit)
    fatiq1(:,:,43)=X_initial43;
elseif fit44==max(Sub_fit)
    fatiq1(:,:,44)=X_initial44;
elseif fit45==max(Sub_fit)
    fatiq1(:,:,45)=X_initial45;
elseif fit46==max(Sub_fit)
    fatiq1(:,:,46)=X_initial46;
elseif fit47==max(Sub_fit)
    fatiq1(:,:,47)=X_initial47;
elseif fit48==max(Sub_fit)
    fatiq1(:,:,48)=X_initial48;
elseif fit49==max(Sub_fit)
    fatiq1(:,:,49)=X_initial49;
elseif fit50==max(Sub_fit)
    fatiq1(:,:,50)=X_initial50;
elseif fit51==max(Sub_fit)
    fatiq1(:,:,51)=X_initial51;
elseif fit52==max(Sub_fit)
    fatiq1(:,:,52)=X_initial52;
elseif fit53==max(Sub_fit)
    fatiq1(:,:,53)=X_initial53;
elseif fit54==max(Sub_fit)
    fatiq1(:,:,54)=X_initial54;
elseif fit55==max(Sub_fit)
    fatiq1(:,:,55)=X_initial55;
elseif fit56==max(Sub_fit)
    fatiq1(:,:,56)=X_initial56;
elseif fit57==max(Sub_fit)
    fatiq1(:,:,57)=X_initial57;
elseif fit58==max(Sub_fit)
    fatiq1(:,:,58)=X_initial58;
elseif fit59==max(Sub_fit)
    fatiq1(:,:,59)=X_initial59;
elseif fit60==max(Sub_fit)
    fatiq1(:,:,60)=X_initial60;
elseif fit61==max(Sub_fit)
    fatiq1(:,:,61)=X_initial61;
elseif fit62==max(Sub_fit)
    fatiq1(:,:,62)=X_initial62;
elseif fit63==max(Sub_fit)
    fatiq1(:,:,63)=X_initial63;
elseif fit64==max(Sub_fit)
    fatiq1(:,:,64)=X_initial64;
elseif fit65==max(Sub_fit)
    fatiq1(:,:,65)=X_initial65;
elseif fit66==max(Sub_fit)
    fatiq1(:,:,66)=X_initial66;
elseif fit67==max(Sub_fit)
    fatiq1(:,:,67)=X_initial67;
elseif fit68==max(Sub_fit)
    fatiq1(:,:,68)=X_initial68;
elseif fit69==max(Sub_fit)
    fatiq1(:,:,69)=X_initial69;
elseif fit70==max(Sub_fit)
    fatiq1(:,:,70)=X_initial70;
elseif fit71==max(Sub_fit)
    fatiq1(:,:,71)=X_initial71;
elseif fit72==max(Sub_fit)
    fatiq1(:,:,72)=X_initial72;
elseif fit73==max(Sub_fit)
    fatiq1(:,:,73)=X_initial73;
elseif fit74==max(Sub_fit)
    fatiq1(:,:,74)=X_initial74;
elseif fit75==max(Sub_fit)
    fatiq1(:,:,75)=X_initial75;
elseif fit76==max(Sub_fit)
    fatiq1(:,:,76)=X_initial76;
elseif fit77==max(Sub_fit)
    fatiq1(:,:,77)=X_initial77;
elseif fit78==max(Sub_fit)
    fatiq1(:,:,78)=X_initial78;
elseif fit79==max(Sub_fit)
    fatiq1(:,:,79)=X_initial79;
elseif fit80==max(Sub_fit)
    fatiq1(:,:,80)=X_initial80;
elseif fit81==max(Sub_fit)
    fatiq1(:,:,81)=X_initial81;
elseif fit82==max(Sub_fit)
    fatiq1(:,:,82)=X_initial82;
elseif fit83==max(Sub_fit)
    fatiq1(:,:,83)=X_initial83;
elseif fit84==max(Sub_fit)
    fatiq1(:,:,84)=X_initial84;
elseif fit85==max(Sub_fit)
    fatiq1(:,:,85)=X_initial85;
elseif fit86==max(Sub_fit)
    fatiq1(:,:,86)=X_initial86;
elseif fit87==max(Sub_fit)
    fatiq1(:,:,87)=X_initial87;
elseif fit88==max(Sub_fit)
    fatiq1(:,:,88)=X_initial88;
elseif fit89==max(Sub_fit)
    fatiq1(:,:,89)=X_initial89;
elseif fit90==max(Sub_fit)
    fatiq1(:,:,90)=X_initial90;
elseif fit91==max(Sub_fit)
    fatiq1(:,:,91)=X_initial91;
elseif fit92==max(Sub_fit)
    fatiq1(:,:,92)=X_initial92;
elseif fit93==max(Sub_fit)
    fatiq1(:,:,93)=X_initial93;
elseif fit94==max(Sub_fit)
    fatiq1(:,:,94)=X_initial94;
elseif fit95==max(Sub_fit)
    fatiq1(:,:,95)=X_initial95;
elseif fit96==max(Sub_fit)
    fatiq1(:,:,96)=X_initial96;
elseif fit97==max(Sub_fit)
    fatiq1(:,:,97)=X_initial97;
elseif fit98==max(Sub_fit)
    fatiq1(:,:,98)=X_initial98;
elseif fit99==max(Sub_fit)
    fatiq1(:,:,99)=X_initial99;
elseif fit100==max(Sub_fit)
    fatiq1(:,:,100)=X_initial100;
end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%New Population%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[evolution_fit,evolution_dim]=max(Sub_fit);
Sub_fit(evolution_dim)=0;
 
fatiq2=zeros(10,10,100);
if fit1==max(Sub_fit)
    fatiq2(:,:,1)=X_initial1;
elseif fit2==max(Sub_fit)
    fatiq2(:,:,2)=X_initial2;
 elseif fit3==max(Sub_fit)
    fatiq2(:,:,3)=X_initial3;
 elseif fit4==max(Sub_fit)
    fatiq2(:,:,4)=X_initial4;
  elseif fit5==max(Sub_fit)
    fatiq2(:,:,5)=X_initial5;
   elseif fit6==max(Sub_fit)
    fatiq2(:,:,6)=X_initial6;
    elseif fit7==max(Sub_fit)
    fatiq2(:,:,7)=X_initial7;
    elseif fit8==max(Sub_fit)
    fatiq2(:,:,8)=X_initial8;
    elseif fit9==max(Sub_fit)
    fatiq2(:,:,9)=X_initial9;
   elseif fit10==max(Sub_fit)
    fatiq2(:,:,10)=X_initia10;
    elseif fit11==max(Sub_fit)
    fatiq2(:,:,11)=X_initial11;
    elseif fit12==max(Sub_fit)
    fatiq2(:,:,12)=X_initial12;
    elseif fit13==max(Sub_fit)
    fatiq2(:,:,13)=X_initial13;
    elseif fit14==max(Sub_fit)
    fatiq2(:,:,14)=X_initial14;
    elseif fit15==max(Sub_fit)
    fatiq2(:,:,15)=X_initial15;
    elseif fit16==max(Sub_fit)
    fatiq2(:,:,16)=X_initial16;
    elseif fit17==max(Sub_fit)
    fatiq2(:,:,17)=X_initial17;
    elseif fit18==max(Sub_fit)
    fatiq2(:,:,18)=X_initial18;
    elseif fit19==max(Sub_fit)
    fatiq2(:,:,19)=X_initial19;
    elseif fit20==max(Sub_fit)
    fatiq2(:,:,20)=X_initial20;
    elseif fit21==max(Sub_fit)
    fatiq2(:,:,21)=X_initial21;
elseif fit22==max(Sub_fit)
    fatiq2(:,:,22)=X_initial22;
elseif fit23==max(Sub_fit)
    fatiq2(:,:,23)=X_initial23;
elseif fit24==max(Sub_fit)
    fatiq2(:,:,24)=X_initial24;
elseif fit25==max(Sub_fit)
    fatiq2(:,:,25)=X_initial25;
elseif fit26==max(Sub_fit)
    fatiq2(:,:,26)=X_initial26;
elseif fit27==max(Sub_fit)
    fatiq2(:,:,27)=X_initial27;
elseif fit28==max(Sub_fit)
    fatiq2(:,:,28)=X_initial28;
elseif fit29==max(Sub_fit)
    fatiq2(:,:,29)=X_initial29;
elseif fit30==max(Sub_fit)
    fatiq2(:,:,30)=X_initial30;
elseif fit31==max(Sub_fit)
    fatiq2(:,:,31)=X_initial31;
elseif fit32==max(Sub_fit)
    fatiq2(:,:,32)=X_initial32;
elseif fit33==max(Sub_fit)
    fatiq2(:,:,33)=X_initial33;
elseif fit34==max(Sub_fit)
    fatiq2(:,:,34)=X_initial34;

elseif fit35==max(Sub_fit)
    fatiq2(:,:,35)=X_initial35;
elseif fit36==max(Sub_fit)
    fatiq2(:,:,36)=X_initial36;
elseif fit37==max(Sub_fit)
    fatiq2(:,:,37)=X_initial37;
elseif fit38==max(Sub_fit)
    fatiq2(:,:,38)=X_initial38;
elseif fit39==max(Sub_fit)
    fatiq2(:,:,39)=X_initial39;
elseif fit40==max(Sub_fit)
    fatiq2(:,:,40)=X_initial40;
elseif fit41==max(Sub_fit)
    fatiq2(:,:,41)=X_initial41;
elseif fit42==max(Sub_fit)
    fatiq2(:,:,42)=X_initial42;
elseif fit43==max(Sub_fit)
    fatiq2(:,:,43)=X_initial43;
elseif fit44==max(Sub_fit)
    fatiq2(:,:,44)=X_initial44;
elseif fit45==max(Sub_fit)
    fatiq2(:,:,45)=X_initial45;
elseif fit46==max(Sub_fit)
    fatiq2(:,:,46)=X_initial46;
elseif fit47==max(Sub_fit)
    fatiq2(:,:,47)=X_initial47;
elseif fit48==max(Sub_fit)
    fatiq2(:,:,48)=X_initial48;
elseif fit49==max(Sub_fit)
    fatiq2(:,:,49)=X_initial49;
elseif fit50==max(Sub_fit)
    fatiq2(:,:,50)=X_initial50;
elseif fit51==max(Sub_fit)
    fatiq2(:,:,51)=X_initial51;
elseif fit52==max(Sub_fit)
    fatiq2(:,:,52)=X_initial52;
elseif fit53==max(Sub_fit)
    fatiq2(:,:,53)=X_initial53;
elseif fit54==max(Sub_fit)
    fatiq2(:,:,54)=X_initial54;
elseif fit55==max(Sub_fit)
    fatiq2(:,:,55)=X_initial55;
elseif fit56==max(Sub_fit)
    fatiq2(:,:,56)=X_initial56;
elseif fit57==max(Sub_fit)
    fatiq2(:,:,57)=X_initial57;
elseif fit58==max(Sub_fit)
    fatiq2(:,:,58)=X_initial58;
elseif fit59==max(Sub_fit)
    fatiq2(:,:,59)=X_initial59;
elseif fit60==max(Sub_fit)
    fatiq2(:,:,60)=X_initial60;
elseif fit61==max(Sub_fit)
    fatiq2(:,:,61)=X_initial61;
elseif fit62==max(Sub_fit)
    fatiq2(:,:,62)=X_initial62;
elseif fit63==max(Sub_fit)
    fatiq2(:,:,63)=X_initial63;
elseif fit64==max(Sub_fit)
    fatiq2(:,:,64)=X_initial64;
elseif fit65==max(Sub_fit)
    fatiq2(:,:,65)=X_initial65;
elseif fit66==max(Sub_fit)
    fatiq2(:,:,66)=X_initial66;
elseif fit67==max(Sub_fit)
    fatiq2(:,:,67)=X_initial67;
elseif fit68==max(Sub_fit)
    fatiq2(:,:,68)=X_initial68;
elseif fit69==max(Sub_fit)
    fatiq2(:,:,69)=X_initial69;
elseif fit70==max(Sub_fit)
    fatiq2(:,:,70)=X_initial70;
elseif fit71==max(Sub_fit)
    fatiq2(:,:,71)=X_initial71;
elseif fit72==max(Sub_fit)
    fatiq2(:,:,72)=X_initial72;
elseif fit73==max(Sub_fit)
    fatiq2(:,:,73)=X_initial73;
elseif fit74==max(Sub_fit)
    fatiq2(:,:,74)=X_initial74;
elseif fit75==max(Sub_fit)
    fatiq2(:,:,75)=X_initial75;
elseif fit76==max(Sub_fit)
    fatiq2(:,:,76)=X_initial76;
elseif fit77==max(Sub_fit)
    fatiq2(:,:,77)=X_initial77;
elseif fit78==max(Sub_fit)
    fatiq2(:,:,78)=X_initial78;
elseif fit79==max(Sub_fit)
    fatiq2(:,:,79)=X_initial79;
elseif fit80==max(Sub_fit)
    fatiq2(:,:,80)=X_initial80;
elseif fit81==max(Sub_fit)
    fatiq2(:,:,81)=X_initial81;
elseif fit82==max(Sub_fit)
    fatiq2(:,:,82)=X_initial82;
elseif fit83==max(Sub_fit)
    fatiq2(:,:,83)=X_initial83;
elseif fit84==max(Sub_fit)
    fatiq2(:,:,84)=X_initial84;
elseif fit85==max(Sub_fit)
    fatiq2(:,:,85)=X_initial85;
elseif fit86==max(Sub_fit)
    fatiq2(:,:,86)=X_initial86;
elseif fit87==max(Sub_fit)
    fatiq2(:,:,87)=X_initial87;
elseif fit88==max(Sub_fit)
    fatiq2(:,:,88)=X_initial88;
elseif fit89==max(Sub_fit)
    fatiq2(:,:,89)=X_initial89;
elseif fit90==max(Sub_fit)
    fatiq2(:,:,90)=X_initial90;
elseif fit91==max(Sub_fit)
    fatiq2(:,:,91)=X_initial91;
elseif fit92==max(Sub_fit)
    fatiq2(:,:,92)=X_initial92;
elseif fit93==max(Sub_fit)
    fatiq2(:,:,93)=X_initial93;
elseif fit94==max(Sub_fit)
    fatiq2(:,:,94)=X_initial94;
elseif fit95==max(Sub_fit)
    fatiq2(:,:,95)=X_initial95;
elseif fit96==max(Sub_fit)
    fatiq2(:,:,96)=X_initial96;
elseif fit97==max(Sub_fit)
    fatiq2(:,:,97)=X_initial97;
elseif fit98==max(Sub_fit)
    fatiq2(:,:,98)=X_initial98;
elseif fit99==max(Sub_fit)
    fatiq2(:,:,99)=X_initial99;
elseif fit100==max(Sub_fit)
    fatiq2(:,:,100)=X_initial100;
end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%
[evolution_fit,evolution_dim]=max(Sub_fit);
Sub_fit(evolution_dim)=0;
 
fatiq3=zeros(10,10,100);
if fit1==max(Sub_fit)
    fatiq3(:,:,1)=X_initial1;
elseif fit2==max(Sub_fit)
    fatiq3(:,:,2)=X_initial2;
 elseif fit3==max(Sub_fit)
    fatiq3(:,:,3)=X_initial3;
 elseif fit4==max(Sub_fit)
    fatiq3(:,:,4)=X_initial4;
  elseif fit5==max(Sub_fit)
    fatiq3(:,:,5)=X_initial5;
   elseif fit6==max(Sub_fit)
    fatiq3(:,:,6)=X_initial6;
    elseif fit7==max(Sub_fit)
    fatiq3(:,:,7)=X_initial7;
    elseif fit8==max(Sub_fit)
    fatiq3(:,:,8)=X_initial8;
    elseif fit9==max(Sub_fit)
    fatiq3(:,:,9)=X_initial9;
   elseif fit10==max(Sub_fit)
    fatiq3(:,:,10)=X_initia10;
    elseif fit11==max(Sub_fit)
    fatiq3(:,:,11)=X_initial11;
    elseif fit12==max(Sub_fit)
    fatiq3(:,:,12)=X_initial12;
    elseif fit13==max(Sub_fit)
    fatiq3(:,:,13)=X_initial13;
    elseif fit14==max(Sub_fit)
    fatiq3(:,:,14)=X_initial14;
    elseif fit15==max(Sub_fit)
    fatiq3(:,:,15)=X_initial15;
    elseif fit16==max(Sub_fit)
    fatiq3(:,:,16)=X_initial16;
    elseif fit17==max(Sub_fit)
    fatiq3(:,:,17)=X_initial17;
    elseif fit18==max(Sub_fit)
    fatiq3(:,:,18)=X_initial18;
    elseif fit19==max(Sub_fit)
    fatiq3(:,:,19)=X_initial19;
    elseif fit20==max(Sub_fit)
    fatiq3(:,:,20)=X_initial20;
    elseif fit21==max(Sub_fit)
    fatiq3(:,:,21)=X_initial21;
elseif fit22==max(Sub_fit)
    fatiq3(:,:,22)=X_initial22;
elseif fit23==max(Sub_fit)
    fatiq3(:,:,23)=X_initial23;
elseif fit24==max(Sub_fit)
    fatiq3(:,:,24)=X_initial24;
elseif fit25==max(Sub_fit)
    fatiq3(:,:,25)=X_initial25;
elseif fit26==max(Sub_fit)
    fatiq3(:,:,26)=X_initial26;
elseif fit27==max(Sub_fit)
    fatiq3(:,:,27)=X_initial27;
elseif fit28==max(Sub_fit)
    fatiq3(:,:,28)=X_initial28;
elseif fit29==max(Sub_fit)
    fatiq3(:,:,29)=X_initial29;
elseif fit30==max(Sub_fit)
    fatiq3(:,:,30)=X_initial30;
elseif fit31==max(Sub_fit)
    fatiq3(:,:,31)=X_initial31;
elseif fit32==max(Sub_fit)
    fatiq3(:,:,32)=X_initial32;
elseif fit33==max(Sub_fit)
    fatiq3(:,:,33)=X_initial33;
elseif fit34==max(Sub_fit)
    fatiq3(:,:,34)=X_initial34;

elseif fit35==max(Sub_fit)
    fatiq3(:,:,35)=X_initial35;
elseif fit36==max(Sub_fit)
    fatiq3(:,:,36)=X_initial36;
elseif fit37==max(Sub_fit)
    fatiq3(:,:,37)=X_initial37;
elseif fit38==max(Sub_fit)
    fatiq3(:,:,38)=X_initial38;
elseif fit39==max(Sub_fit)
    fatiq3(:,:,39)=X_initial39;
elseif fit40==max(Sub_fit)
    fatiq3(:,:,40)=X_initial40;
elseif fit41==max(Sub_fit)
    fatiq3(:,:,41)=X_initial41;
elseif fit42==max(Sub_fit)
    fatiq3(:,:,42)=X_initial42;
elseif fit43==max(Sub_fit)
    fatiq3(:,:,43)=X_initial43;
elseif fit44==max(Sub_fit)
    fatiq3(:,:,44)=X_initial44;
elseif fit45==max(Sub_fit)
    fatiq3(:,:,45)=X_initial45;
elseif fit46==max(Sub_fit)
    fatiq3(:,:,46)=X_initial46;
elseif fit47==max(Sub_fit)
    fatiq3(:,:,47)=X_initial47;
elseif fit48==max(Sub_fit)
    fatiq3(:,:,48)=X_initial48;
elseif fit49==max(Sub_fit)
    fatiq3(:,:,49)=X_initial49;
elseif fit50==max(Sub_fit)
    fatiq3(:,:,50)=X_initial50;
elseif fit51==max(Sub_fit)
    fatiq3(:,:,51)=X_initial51;
elseif fit52==max(Sub_fit)
    fatiq3(:,:,52)=X_initial52;
elseif fit53==max(Sub_fit)
    fatiq3(:,:,53)=X_initial53;
elseif fit54==max(Sub_fit)
    fatiq3(:,:,54)=X_initial54;
elseif fit55==max(Sub_fit)
    fatiq3(:,:,55)=X_initial55;
elseif fit56==max(Sub_fit)
    fatiq3(:,:,56)=X_initial56;
elseif fit57==max(Sub_fit)
    fatiq3(:,:,57)=X_initial57;
elseif fit58==max(Sub_fit)
    fatiq3(:,:,58)=X_initial58;
elseif fit59==max(Sub_fit)
    fatiq3(:,:,59)=X_initial59;
elseif fit60==max(Sub_fit)
    fatiq3(:,:,60)=X_initial60;
elseif fit61==max(Sub_fit)
    fatiq3(:,:,61)=X_initial61;
elseif fit62==max(Sub_fit)
    fatiq3(:,:,62)=X_initial62;
elseif fit63==max(Sub_fit)
    fatiq3(:,:,63)=X_initial63;
elseif fit64==max(Sub_fit)
    fatiq3(:,:,64)=X_initial64;
elseif fit65==max(Sub_fit)
    fatiq3(:,:,65)=X_initial65;
elseif fit66==max(Sub_fit)
    fatiq3(:,:,66)=X_initial66;
elseif fit67==max(Sub_fit)
    fatiq3(:,:,67)=X_initial67;
elseif fit68==max(Sub_fit)
    fatiq3(:,:,68)=X_initial68;
elseif fit69==max(Sub_fit)
    fatiq3(:,:,69)=X_initial69;
elseif fit70==max(Sub_fit)
    fatiq3(:,:,70)=X_initial70;
elseif fit71==max(Sub_fit)
    fatiq3(:,:,71)=X_initial71;
elseif fit72==max(Sub_fit)
    fatiq3(:,:,72)=X_initial72;
elseif fit73==max(Sub_fit)
    fatiq3(:,:,73)=X_initial73;
elseif fit74==max(Sub_fit)
    fatiq3(:,:,74)=X_initial74;
elseif fit75==max(Sub_fit)
    fatiq3(:,:,75)=X_initial75;
elseif fit76==max(Sub_fit)
    fatiq3(:,:,76)=X_initial76;
elseif fit77==max(Sub_fit)
    fatiq3(:,:,77)=X_initial77;
elseif fit78==max(Sub_fit)
    fatiq3(:,:,78)=X_initial78;
elseif fit79==max(Sub_fit)
    fatiq3(:,:,79)=X_initial79;
elseif fit80==max(Sub_fit)
    fatiq3(:,:,80)=X_initial80;
elseif fit81==max(Sub_fit)
    fatiq3(:,:,81)=X_initial81;
elseif fit82==max(Sub_fit)
    fatiq3(:,:,82)=X_initial82;
elseif fit83==max(Sub_fit)
    fatiq3(:,:,83)=X_initial83;
elseif fit84==max(Sub_fit)
    fatiq3(:,:,84)=X_initial84;
elseif fit85==max(Sub_fit)
    fatiq3(:,:,85)=X_initial85;
elseif fit86==max(Sub_fit)
    fatiq3(:,:,86)=X_initial86;
elseif fit87==max(Sub_fit)
    fatiq3(:,:,87)=X_initial87;
elseif fit88==max(Sub_fit)
    fatiq3(:,:,88)=X_initial88;
elseif fit89==max(Sub_fit)
    fatiq3(:,:,89)=X_initial89;
elseif fit90==max(Sub_fit)
    fatiq3(:,:,90)=X_initial90;
elseif fit91==max(Sub_fit)
    fatiq3(:,:,91)=X_initial91;
elseif fit92==max(Sub_fit)
    fatiq3(:,:,92)=X_initial92;
elseif fit93==max(Sub_fit)
    fatiq3(:,:,93)=X_initial93;
elseif fit94==max(Sub_fit)
    fatiq3(:,:,94)=X_initial94;
elseif fit95==max(Sub_fit)
    fatiq3(:,:,95)=X_initial95;
elseif fit96==max(Sub_fit)
    fatiq3(:,:,96)=X_initial96;
elseif fit97==max(Sub_fit)
    fatiq3(:,:,97)=X_initial97;
elseif fit98==max(Sub_fit)
    fatiq3(:,:,98)=X_initial98;
elseif fit99==max(Sub_fit)
    fatiq3(:,:,99)=X_initial99;
elseif fit100==max(Sub_fit)
    fatiq3(:,:,100)=X_initial100;
end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%
[evolution_fit,evolution_dim]=max(Sub_fit);
Sub_fit(evolution_dim)=0;

fatiq4=zeros(10,10,100);
if fit1==max(Sub_fit)
    fatiq4(:,:,1)=X_initial1;
elseif fit2==max(Sub_fit)
    fatiq4(:,:,2)=X_initial2;
 elseif fit3==max(Sub_fit)
    fatiq4(:,:,3)=X_initial3;
 elseif fit4==max(Sub_fit)
    fatiq4(:,:,4)=X_initial4;
  elseif fit5==max(Sub_fit)
    fatiq4(:,:,5)=X_initial5;
   elseif fit6==max(Sub_fit)
    fatiq4(:,:,6)=X_initial6;
    elseif fit7==max(Sub_fit)
    fatiq4(:,:,7)=X_initial7;
    elseif fit8==max(Sub_fit)
    fatiq4(:,:,8)=X_initial8;
    elseif fit9==max(Sub_fit)
    fatiq4(:,:,9)=X_initial9;
   elseif fit10==max(Sub_fit)
    fatiq4(:,:,10)=X_initia10;
    elseif fit11==max(Sub_fit)
    fatiq4(:,:,11)=X_initial11;
    elseif fit12==max(Sub_fit)
    fatiq4(:,:,12)=X_initial12;
    elseif fit13==max(Sub_fit)
    fatiq4(:,:,13)=X_initial13;
    elseif fit14==max(Sub_fit)
    fatiq4(:,:,14)=X_initial14;
    elseif fit15==max(Sub_fit)
    fatiq4(:,:,15)=X_initial15;
    elseif fit16==max(Sub_fit)
    fatiq4(:,:,16)=X_initial16;
    elseif fit17==max(Sub_fit)
    fatiq4(:,:,17)=X_initial17;
    elseif fit18==max(Sub_fit)
    fatiq4(:,:,18)=X_initial18;
    elseif fit19==max(Sub_fit)
    fatiq4(:,:,19)=X_initial19;
    elseif fit20==max(Sub_fit)
    fatiq4(:,:,20)=X_initial20;
    elseif fit21==max(Sub_fit)
    fatiq4(:,:,21)=X_initial21;
elseif fit22==max(Sub_fit)
    fatiq4(:,:,22)=X_initial22;
elseif fit23==max(Sub_fit)
    fatiq4(:,:,23)=X_initial23;
elseif fit24==max(Sub_fit)
    fatiq4(:,:,24)=X_initial24;
elseif fit25==max(Sub_fit)
    fatiq4(:,:,25)=X_initial25;
elseif fit26==max(Sub_fit)
    fatiq4(:,:,26)=X_initial26;
elseif fit27==max(Sub_fit)
    fatiq4(:,:,27)=X_initial27;
elseif fit28==max(Sub_fit)
    fatiq4(:,:,28)=X_initial28;
elseif fit29==max(Sub_fit)
    fatiq4(:,:,29)=X_initial29;
elseif fit30==max(Sub_fit)
    fatiq4(:,:,30)=X_initial30;
elseif fit31==max(Sub_fit)
    fatiq4(:,:,31)=X_initial31;
elseif fit32==max(Sub_fit)
    fatiq4(:,:,32)=X_initial32;
elseif fit33==max(Sub_fit)
    fatiq4(:,:,33)=X_initial33;
elseif fit34==max(Sub_fit)
    fatiq4(:,:,34)=X_initial34;

elseif fit35==max(Sub_fit)
    fatiq4(:,:,35)=X_initial35;
elseif fit36==max(Sub_fit)
    fatiq4(:,:,36)=X_initial36;
elseif fit37==max(Sub_fit)
    fatiq4(:,:,37)=X_initial37;
elseif fit38==max(Sub_fit)
    fatiq4(:,:,38)=X_initial38;
elseif fit39==max(Sub_fit)
    fatiq4(:,:,39)=X_initial39;
elseif fit40==max(Sub_fit)
    fatiq4(:,:,40)=X_initial40;
elseif fit41==max(Sub_fit)
    fatiq4(:,:,41)=X_initial41;
elseif fit42==max(Sub_fit)
    fatiq4(:,:,42)=X_initial42;
elseif fit43==max(Sub_fit)
    fatiq4(:,:,43)=X_initial43;
elseif fit44==max(Sub_fit)
    fatiq4(:,:,44)=X_initial44;
elseif fit45==max(Sub_fit)
    fatiq4(:,:,45)=X_initial45;
elseif fit46==max(Sub_fit)
    fatiq4(:,:,46)=X_initial46;
elseif fit47==max(Sub_fit)
    fatiq4(:,:,47)=X_initial47;
elseif fit48==max(Sub_fit)
    fatiq4(:,:,48)=X_initial48;
elseif fit49==max(Sub_fit)
    fatiq4(:,:,49)=X_initial49;
elseif fit50==max(Sub_fit)
    fatiq4(:,:,50)=X_initial50;
elseif fit51==max(Sub_fit)
    fatiq4(:,:,51)=X_initial51;
elseif fit52==max(Sub_fit)
    fatiq4(:,:,52)=X_initial52;
elseif fit53==max(Sub_fit)
    fatiq4(:,:,53)=X_initial53;
elseif fit54==max(Sub_fit)
    fatiq4(:,:,54)=X_initial54;
elseif fit55==max(Sub_fit)
    fatiq4(:,:,55)=X_initial55;
elseif fit56==max(Sub_fit)
    fatiq4(:,:,56)=X_initial56;
elseif fit57==max(Sub_fit)
    fatiq4(:,:,57)=X_initial57;
elseif fit58==max(Sub_fit)
    fatiq4(:,:,58)=X_initial58;
elseif fit59==max(Sub_fit)
    fatiq4(:,:,59)=X_initial59;
elseif fit60==max(Sub_fit)
    fatiq4(:,:,60)=X_initial60;
elseif fit61==max(Sub_fit)
    fatiq4(:,:,61)=X_initial61;
elseif fit62==max(Sub_fit)
    fatiq4(:,:,62)=X_initial62;
elseif fit63==max(Sub_fit)
    fatiq4(:,:,63)=X_initial63;
elseif fit64==max(Sub_fit)
    fatiq4(:,:,64)=X_initial64;
elseif fit65==max(Sub_fit)
    fatiq4(:,:,65)=X_initial65;
elseif fit66==max(Sub_fit)
    fatiq4(:,:,66)=X_initial66;
elseif fit67==max(Sub_fit)
    fatiq4(:,:,67)=X_initial67;
elseif fit68==max(Sub_fit)
    fatiq4(:,:,68)=X_initial68;
elseif fit69==max(Sub_fit)
    fatiq4(:,:,69)=X_initial69;
elseif fit70==max(Sub_fit)
    fatiq4(:,:,70)=X_initial70;
elseif fit71==max(Sub_fit)
    fatiq4(:,:,71)=X_initial71;
elseif fit72==max(Sub_fit)
    fatiq4(:,:,72)=X_initial72;
elseif fit73==max(Sub_fit)
    fatiq4(:,:,73)=X_initial73;
elseif fit74==max(Sub_fit)
    fatiq4(:,:,74)=X_initial74;
elseif fit75==max(Sub_fit)
    fatiq4(:,:,75)=X_initial75;
elseif fit76==max(Sub_fit)
    fatiq4(:,:,76)=X_initial76;
elseif fit77==max(Sub_fit)
    fatiq4(:,:,77)=X_initial77;
elseif fit78==max(Sub_fit)
    fatiq4(:,:,78)=X_initial78;
elseif fit79==max(Sub_fit)
    fatiq4(:,:,79)=X_initial79;
elseif fit80==max(Sub_fit)
    fatiq4(:,:,80)=X_initial80;
elseif fit81==max(Sub_fit)
    fatiq4(:,:,81)=X_initial81;
elseif fit82==max(Sub_fit)
    fatiq4(:,:,82)=X_initial82;
elseif fit83==max(Sub_fit)
    fatiq4(:,:,83)=X_initial83;
elseif fit84==max(Sub_fit)
    fatiq4(:,:,84)=X_initial84;
elseif fit85==max(Sub_fit)
    fatiq4(:,:,85)=X_initial85;
elseif fit86==max(Sub_fit)
    fatiq4(:,:,86)=X_initial86;
elseif fit87==max(Sub_fit)
    fatiq4(:,:,87)=X_initial87;
elseif fit88==max(Sub_fit)
    fatiq4(:,:,88)=X_initial88;
elseif fit89==max(Sub_fit)
    fatiq4(:,:,89)=X_initial89;
elseif fit90==max(Sub_fit)
    fatiq4(:,:,90)=X_initial90;
elseif fit91==max(Sub_fit)
    fatiq4(:,:,91)=X_initial91;
elseif fit92==max(Sub_fit)
    fatiq4(:,:,92)=X_initial92;
elseif fit93==max(Sub_fit)
    fatiq4(:,:,93)=X_initial93;
elseif fit94==max(Sub_fit)
    fatiq4(:,:,94)=X_initial94;
elseif fit95==max(Sub_fit)
    fatiq4(:,:,95)=X_initial95;
elseif fit96==max(Sub_fit)
    fatiq4(:,:,96)=X_initial96;
elseif fit97==max(Sub_fit)
    fatiq4(:,:,97)=X_initial97;
elseif fit98==max(Sub_fit)
    fatiq4(:,:,98)=X_initial98;
elseif fit99==max(Sub_fit)
    fatiq4(:,:,99)=X_initial99;
elseif fit100==max(Sub_fit)
    fatiq4(:,:,100)=X_initial100;
end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%
[evolution_fit,evolution_dim]=max(Sub_fit);
Sub_fit(evolution_dim)=0;
 
fatiq5=zeros(10,10,100);
if fit1==max(Sub_fit)
    fatiq5(:,:,1)=X_initial1;
elseif fit2==max(Sub_fit)
    fatiq5(:,:,2)=X_initial2;
 elseif fit3==max(Sub_fit)
    fatiq5(:,:,3)=X_initial3;
 elseif fit4==max(Sub_fit)
    fatiq5(:,:,4)=X_initial4;
  elseif fit5==max(Sub_fit)
    fatiq5(:,:,5)=X_initial5;
   elseif fit6==max(Sub_fit)
    fatiq5(:,:,6)=X_initial6;
    elseif fit7==max(Sub_fit)
    fatiq5(:,:,7)=X_initial7;
    elseif fit8==max(Sub_fit)
    fatiq5(:,:,8)=X_initial8;
    elseif fit9==max(Sub_fit)
    fatiq5(:,:,9)=X_initial9;
   elseif fit10==max(Sub_fit)
    fatiq5(:,:,10)=X_initia10;
    elseif fit11==max(Sub_fit)
    fatiq5(:,:,11)=X_initial11;
    elseif fit12==max(Sub_fit)
    fatiq5(:,:,12)=X_initial12;
    elseif fit13==max(Sub_fit)
    fatiq5(:,:,13)=X_initial13;
    elseif fit14==max(Sub_fit)
    fatiq5(:,:,14)=X_initial14;
    elseif fit15==max(Sub_fit)
    fatiq5(:,:,15)=X_initial15;
    elseif fit16==max(Sub_fit)
    fatiq5(:,:,16)=X_initial16;
    elseif fit17==max(Sub_fit)
    fatiq5(:,:,17)=X_initial17;
    elseif fit18==max(Sub_fit)
    fatiq5(:,:,18)=X_initial18;
    elseif fit19==max(Sub_fit)
    fatiq5(:,:,19)=X_initial19;
    elseif fit20==max(Sub_fit)
    fatiq5(:,:,20)=X_initial20;
    elseif fit21==max(Sub_fit)
    fatiq5(:,:,21)=X_initial21;
elseif fit22==max(Sub_fit)
    fatiq5(:,:,22)=X_initial22;
elseif fit23==max(Sub_fit)
    fatiq5(:,:,23)=X_initial23;
elseif fit24==max(Sub_fit)
    fatiq5(:,:,24)=X_initial24;
elseif fit25==max(Sub_fit)
    fatiq5(:,:,25)=X_initial25;
elseif fit26==max(Sub_fit)
    fatiq5(:,:,26)=X_initial26;
elseif fit27==max(Sub_fit)
    fatiq5(:,:,27)=X_initial27;
elseif fit28==max(Sub_fit)
    fatiq5(:,:,28)=X_initial28;
elseif fit29==max(Sub_fit)
    fatiq5(:,:,29)=X_initial29;
elseif fit30==max(Sub_fit)
    fatiq5(:,:,30)=X_initial30;
elseif fit31==max(Sub_fit)
    fatiq5(:,:,31)=X_initial31;
elseif fit32==max(Sub_fit)
    fatiq5(:,:,32)=X_initial32;
elseif fit33==max(Sub_fit)
    fatiq5(:,:,33)=X_initial33;
elseif fit34==max(Sub_fit)
    fatiq5(:,:,34)=X_initial34;

elseif fit35==max(Sub_fit)
    fatiq5(:,:,35)=X_initial35;
elseif fit36==max(Sub_fit)
    fatiq5(:,:,36)=X_initial36;
elseif fit37==max(Sub_fit)
    fatiq5(:,:,37)=X_initial37;
elseif fit38==max(Sub_fit)
    fatiq5(:,:,38)=X_initial38;
elseif fit39==max(Sub_fit)
    fatiq5(:,:,39)=X_initial39;
elseif fit40==max(Sub_fit)
    fatiq5(:,:,40)=X_initial40;
elseif fit41==max(Sub_fit)
    fatiq5(:,:,41)=X_initial41;
elseif fit42==max(Sub_fit)
    fatiq5(:,:,42)=X_initial42;
elseif fit43==max(Sub_fit)
    fatiq5(:,:,43)=X_initial43;
elseif fit44==max(Sub_fit)
    fatiq5(:,:,44)=X_initial44;
elseif fit45==max(Sub_fit)
    fatiq5(:,:,45)=X_initial45;
elseif fit46==max(Sub_fit)
    fatiq5(:,:,46)=X_initial46;
elseif fit47==max(Sub_fit)
    fatiq5(:,:,47)=X_initial47;
elseif fit48==max(Sub_fit)
    fatiq5(:,:,48)=X_initial48;
elseif fit49==max(Sub_fit)
    fatiq5(:,:,49)=X_initial49;
elseif fit50==max(Sub_fit)
    fatiq5(:,:,50)=X_initial50;
elseif fit51==max(Sub_fit)
    fatiq5(:,:,51)=X_initial51;
elseif fit52==max(Sub_fit)
    fatiq5(:,:,52)=X_initial52;
elseif fit53==max(Sub_fit)
    fatiq5(:,:,53)=X_initial53;
elseif fit54==max(Sub_fit)
    fatiq5(:,:,54)=X_initial54;
elseif fit55==max(Sub_fit)
    fatiq5(:,:,55)=X_initial55;
elseif fit56==max(Sub_fit)
    fatiq5(:,:,56)=X_initial56;
elseif fit57==max(Sub_fit)
    fatiq5(:,:,57)=X_initial57;
elseif fit58==max(Sub_fit)
    fatiq5(:,:,58)=X_initial58;
elseif fit59==max(Sub_fit)
    fatiq5(:,:,59)=X_initial59;
elseif fit60==max(Sub_fit)
    fatiq5(:,:,60)=X_initial60;
elseif fit61==max(Sub_fit)
    fatiq5(:,:,61)=X_initial61;
elseif fit62==max(Sub_fit)
    fatiq5(:,:,62)=X_initial62;
elseif fit63==max(Sub_fit)
    fatiq5(:,:,63)=X_initial63;
elseif fit64==max(Sub_fit)
    fatiq5(:,:,64)=X_initial64;
elseif fit65==max(Sub_fit)
    fatiq5(:,:,65)=X_initial65;
elseif fit66==max(Sub_fit)
    fatiq5(:,:,66)=X_initial66;
elseif fit67==max(Sub_fit)
    fatiq5(:,:,67)=X_initial67;
elseif fit68==max(Sub_fit)
    fatiq5(:,:,68)=X_initial68;
elseif fit69==max(Sub_fit)
    fatiq5(:,:,69)=X_initial69;
elseif fit70==max(Sub_fit)
    fatiq5(:,:,70)=X_initial70;
elseif fit71==max(Sub_fit)
    fatiq5(:,:,71)=X_initial71;
elseif fit72==max(Sub_fit)
    fatiq5(:,:,72)=X_initial72;
elseif fit73==max(Sub_fit)
    fatiq5(:,:,73)=X_initial73;
elseif fit74==max(Sub_fit)
    fatiq5(:,:,74)=X_initial74;
elseif fit75==max(Sub_fit)
    fatiq5(:,:,75)=X_initial75;
elseif fit76==max(Sub_fit)
    fatiq5(:,:,76)=X_initial76;
elseif fit77==max(Sub_fit)
    fatiq5(:,:,77)=X_initial77;
elseif fit78==max(Sub_fit)
    fatiq5(:,:,78)=X_initial78;
elseif fit79==max(Sub_fit)
    fatiq5(:,:,79)=X_initial79;
elseif fit80==max(Sub_fit)
    fatiq5(:,:,80)=X_initial80;
elseif fit81==max(Sub_fit)
    fatiq5(:,:,81)=X_initial81;
elseif fit82==max(Sub_fit)
    fatiq5(:,:,82)=X_initial82;
elseif fit83==max(Sub_fit)
    fatiq5(:,:,83)=X_initial83;
elseif fit84==max(Sub_fit)
    fatiq5(:,:,84)=X_initial84;
elseif fit85==max(Sub_fit)
    fatiq5(:,:,85)=X_initial85;
elseif fit86==max(Sub_fit)
    fatiq5(:,:,86)=X_initial86;
elseif fit87==max(Sub_fit)
    fatiq5(:,:,87)=X_initial87;
elseif fit88==max(Sub_fit)
    fatiq5(:,:,88)=X_initial88;
elseif fit89==max(Sub_fit)
    fatiq5(:,:,89)=X_initial89;
elseif fit90==max(Sub_fit)
    fatiq5(:,:,90)=X_initial90;
elseif fit91==max(Sub_fit)
    fatiq5(:,:,91)=X_initial91;
elseif fit92==max(Sub_fit)
    fatiq5(:,:,92)=X_initial92;
elseif fit93==max(Sub_fit)
    fatiq5(:,:,93)=X_initial93;
elseif fit94==max(Sub_fit)
    fatiq5(:,:,94)=X_initial94;
elseif fit95==max(Sub_fit)
    fatiq5(:,:,95)=X_initial95;
elseif fit96==max(Sub_fit)
    fatiq5(:,:,96)=X_initial96;
elseif fit97==max(Sub_fit)
    fatiq5(:,:,97)=X_initial97;
elseif fit98==max(Sub_fit)
    fatiq5(:,:,98)=X_initial98;
elseif fit99==max(Sub_fit)
    fatiq5(:,:,99)=X_initial99;
elseif fit100==max(Sub_fit)
    fatiq5(:,:,100)=X_initial100;
end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%
[evolution_fit,evolution_dim]=max(Sub_fit);
Sub_fit(evolution_dim)=0;
 
fatiq6=zeros(10,10,100);
if fit1==max(Sub_fit)
    fatiq6(:,:,1)=X_initial1;
elseif fit2==max(Sub_fit)
    fatiq6(:,:,2)=X_initial2;
 elseif fit3==max(Sub_fit)
    fatiq6(:,:,3)=X_initial3;
 elseif fit4==max(Sub_fit)
    fatiq6(:,:,4)=X_initial4;
  elseif fit5==max(Sub_fit)
    fatiq6(:,:,5)=X_initial5;
   elseif fit6==max(Sub_fit)
    fatiq6(:,:,6)=X_initial6;
    elseif fit7==max(Sub_fit)
    fatiq6(:,:,7)=X_initial7;
    elseif fit8==max(Sub_fit)
    fatiq6(:,:,8)=X_initial8;
    elseif fit9==max(Sub_fit)
    fatiq6(:,:,9)=X_initial9;
   elseif fit10==max(Sub_fit)
    fatiq6(:,:,10)=X_initia10;
    elseif fit11==max(Sub_fit)
    fatiq6(:,:,11)=X_initial11;
    elseif fit12==max(Sub_fit)
    fatiq6(:,:,12)=X_initial12;
    elseif fit13==max(Sub_fit)
    fatiq6(:,:,13)=X_initial13;
    elseif fit14==max(Sub_fit)
    fatiq6(:,:,14)=X_initial14;
    elseif fit15==max(Sub_fit)
    fatiq6(:,:,15)=X_initial15;
    elseif fit16==max(Sub_fit)
    fatiq6(:,:,16)=X_initial16;
    elseif fit17==max(Sub_fit)
    fatiq6(:,:,17)=X_initial17;
    elseif fit18==max(Sub_fit)
    fatiq6(:,:,18)=X_initial18;
    elseif fit19==max(Sub_fit)
    fatiq6(:,:,19)=X_initial19;
    elseif fit20==max(Sub_fit)
    fatiq6(:,:,20)=X_initial20;
    elseif fit21==max(Sub_fit)
    fatiq6(:,:,21)=X_initial21;
elseif fit22==max(Sub_fit)
    fatiq6(:,:,22)=X_initial22;
elseif fit23==max(Sub_fit)
    fatiq6(:,:,23)=X_initial23;
elseif fit24==max(Sub_fit)
    fatiq6(:,:,24)=X_initial24;
elseif fit25==max(Sub_fit)
    fatiq6(:,:,25)=X_initial25;
elseif fit26==max(Sub_fit)
    fatiq6(:,:,26)=X_initial26;
elseif fit27==max(Sub_fit)
    fatiq6(:,:,27)=X_initial27;
elseif fit28==max(Sub_fit)
    fatiq6(:,:,28)=X_initial28;
elseif fit29==max(Sub_fit)
    fatiq6(:,:,29)=X_initial29;
elseif fit30==max(Sub_fit)
    fatiq6(:,:,30)=X_initial30;
elseif fit31==max(Sub_fit)
    fatiq6(:,:,31)=X_initial31;
elseif fit32==max(Sub_fit)
    fatiq6(:,:,32)=X_initial32;
elseif fit33==max(Sub_fit)
    fatiq6(:,:,33)=X_initial33;
elseif fit34==max(Sub_fit)
    fatiq6(:,:,34)=X_initial34;
elseif fit35==max(Sub_fit)
    fatiq6(:,:,35)=X_initial35;
elseif fit36==max(Sub_fit)
    fatiq6(:,:,36)=X_initial36;
elseif fit37==max(Sub_fit)
    fatiq6(:,:,37)=X_initial37;
elseif fit38==max(Sub_fit)
    fatiq6(:,:,38)=X_initial38;
elseif fit39==max(Sub_fit)
    fatiq6(:,:,39)=X_initial39;
elseif fit40==max(Sub_fit)
    fatiq6(:,:,40)=X_initial40;
elseif fit41==max(Sub_fit)
    fatiq6(:,:,41)=X_initial41;
elseif fit42==max(Sub_fit)
    fatiq6(:,:,42)=X_initial42;
elseif fit43==max(Sub_fit)
    fatiq6(:,:,43)=X_initial43;
elseif fit44==max(Sub_fit)
    fatiq6(:,:,44)=X_initial44;
elseif fit45==max(Sub_fit)
    fatiq6(:,:,45)=X_initial45;
elseif fit46==max(Sub_fit)
    fatiq6(:,:,46)=X_initial46;
elseif fit47==max(Sub_fit)
    fatiq6(:,:,47)=X_initial47;
elseif fit48==max(Sub_fit)
    fatiq6(:,:,48)=X_initial48;
elseif fit49==max(Sub_fit)
    fatiq6(:,:,49)=X_initial49;
elseif fit50==max(Sub_fit)
    fatiq6(:,:,50)=X_initial50;
elseif fit51==max(Sub_fit)
    fatiq6(:,:,51)=X_initial51;
elseif fit52==max(Sub_fit)
    fatiq6(:,:,52)=X_initial52;
elseif fit53==max(Sub_fit)
    fatiq6(:,:,53)=X_initial53;
elseif fit54==max(Sub_fit)
    fatiq6(:,:,54)=X_initial54;
elseif fit55==max(Sub_fit)
    fatiq6(:,:,55)=X_initial55;
elseif fit56==max(Sub_fit)
    fatiq6(:,:,56)=X_initial56;
elseif fit57==max(Sub_fit)
    fatiq6(:,:,57)=X_initial57;
elseif fit58==max(Sub_fit)
    fatiq6(:,:,58)=X_initial58;
elseif fit59==max(Sub_fit)
    fatiq6(:,:,59)=X_initial59;
elseif fit60==max(Sub_fit)
    fatiq6(:,:,60)=X_initial60;
elseif fit61==max(Sub_fit)
    fatiq6(:,:,61)=X_initial61;
elseif fit62==max(Sub_fit)
    fatiq6(:,:,62)=X_initial62;
elseif fit63==max(Sub_fit)
    fatiq6(:,:,63)=X_initial63;
elseif fit64==max(Sub_fit)
    fatiq6(:,:,64)=X_initial64;
elseif fit65==max(Sub_fit)
    fatiq6(:,:,65)=X_initial65;
elseif fit66==max(Sub_fit)
    fatiq6(:,:,66)=X_initial66;
elseif fit67==max(Sub_fit)
    fatiq6(:,:,67)=X_initial67;
elseif fit68==max(Sub_fit)
    fatiq6(:,:,68)=X_initial68;
elseif fit69==max(Sub_fit)
    fatiq6(:,:,69)=X_initial69;
elseif fit70==max(Sub_fit)
    fatiq6(:,:,70)=X_initial70;
elseif fit71==max(Sub_fit)
    fatiq6(:,:,71)=X_initial71;
elseif fit72==max(Sub_fit)
    fatiq6(:,:,72)=X_initial72;
elseif fit73==max(Sub_fit)
    fatiq6(:,:,73)=X_initial73;
elseif fit74==max(Sub_fit)
    fatiq6(:,:,74)=X_initial74;
elseif fit75==max(Sub_fit)
    fatiq6(:,:,75)=X_initial75;
elseif fit76==max(Sub_fit)
    fatiq6(:,:,76)=X_initial76;
elseif fit77==max(Sub_fit)
    fatiq6(:,:,77)=X_initial77;
elseif fit78==max(Sub_fit)
    fatiq6(:,:,78)=X_initial78;
elseif fit79==max(Sub_fit)
    fatiq6(:,:,79)=X_initial79;
elseif fit80==max(Sub_fit)
    fatiq6(:,:,80)=X_initial80;
elseif fit81==max(Sub_fit)
    fatiq6(:,:,81)=X_initial81;
elseif fit82==max(Sub_fit)
    fatiq6(:,:,82)=X_initial82;
elseif fit83==max(Sub_fit)
    fatiq6(:,:,83)=X_initial83;
elseif fit84==max(Sub_fit)
    fatiq6(:,:,84)=X_initial84;
elseif fit85==max(Sub_fit)
    fatiq6(:,:,85)=X_initial85;
elseif fit86==max(Sub_fit)
    fatiq6(:,:,86)=X_initial86;
elseif fit87==max(Sub_fit)
    fatiq6(:,:,87)=X_initial87;
elseif fit88==max(Sub_fit)
    fatiq6(:,:,88)=X_initial88;
elseif fit89==max(Sub_fit)
    fatiq6(:,:,89)=X_initial89;
elseif fit90==max(Sub_fit)
    fatiq6(:,:,90)=X_initial90;
elseif fit91==max(Sub_fit)
    fatiq6(:,:,91)=X_initial91;
elseif fit92==max(Sub_fit)
    fatiq6(:,:,92)=X_initial92;
elseif fit93==max(Sub_fit)
    fatiq6(:,:,93)=X_initial93;
elseif fit94==max(Sub_fit)
    fatiq6(:,:,94)=X_initial94;
elseif fit95==max(Sub_fit)
    fatiq6(:,:,95)=X_initial95;
elseif fit96==max(Sub_fit)
    fatiq6(:,:,96)=X_initial96;
elseif fit97==max(Sub_fit)
    fatiq6(:,:,97)=X_initial97;
elseif fit98==max(Sub_fit)
    fatiq6(:,:,98)=X_initial98;
elseif fit99==max(Sub_fit)
    fatiq6(:,:,99)=X_initial99;
elseif fit100==max(Sub_fit)
    fatiq6(:,:,100)=X_initial100;
end
    
%%%%%%%%%%%%%fittness function%%%%%%%%%%%%%%%%
[evolution_fit,evolution_dim]=max(Sub_fit);
Sub_fit(evolution_dim)=0;
 
fatiq7=zeros(10,10,100);
if fit1==max(Sub_fit)
    fatiq7(:,:,1)=X_initial1;
elseif fit2==max(Sub_fit)
    fatiq7(:,:,2)=X_initial2;
 elseif fit3==max(Sub_fit)
    fatiq7(:,:,3)=X_initial3;
 elseif fit4==max(Sub_fit)
    fatiq7(:,:,4)=X_initial4;
  elseif fit5==max(Sub_fit)
    fatiq7(:,:,5)=X_initial5;
   elseif fit6==max(Sub_fit)
    fatiq7(:,:,6)=X_initial6;
    elseif fit7==max(Sub_fit)
    fatiq7(:,:,7)=X_initial7;
    elseif fit8==max(Sub_fit)
    fatiq7(:,:,8)=X_initial8;
    elseif fit9==max(Sub_fit)
    fatiq7(:,:,9)=X_initial9;
   elseif fit10==max(Sub_fit)
    fatiq7(:,:,10)=X_initia10;
    elseif fit11==max(Sub_fit)
    fatiq7(:,:,11)=X_initial11;
    elseif fit12==max(Sub_fit)
    fatiq7(:,:,12)=X_initial12;
    elseif fit13==max(Sub_fit)
    fatiq7(:,:,13)=X_initial13;
    elseif fit14==max(Sub_fit)
    fatiq7(:,:,14)=X_initial14;
    elseif fit15==max(Sub_fit)
    fatiq7(:,:,15)=X_initial15;
    elseif fit16==max(Sub_fit)
    fatiq7(:,:,16)=X_initial16;
    elseif fit17==max(Sub_fit)
    fatiq7(:,:,17)=X_initial17;
    elseif fit18==max(Sub_fit)
    fatiq7(:,:,18)=X_initial18;
    elseif fit19==max(Sub_fit)
    fatiq7(:,:,19)=X_initial19;
    elseif fit20==max(Sub_fit)
    fatiq7(:,:,20)=X_initial20;
    elseif fit21==max(Sub_fit)
    fatiq7(:,:,21)=X_initial21;
elseif fit22==max(Sub_fit)
    fatiq7(:,:,22)=X_initial22;
elseif fit23==max(Sub_fit)
    fatiq7(:,:,23)=X_initial23;
elseif fit24==max(Sub_fit)
    fatiq7(:,:,24)=X_initial24;
elseif fit25==max(Sub_fit)
    fatiq7(:,:,25)=X_initial25;
elseif fit26==max(Sub_fit)
    fatiq7(:,:,26)=X_initial26;
elseif fit27==max(Sub_fit)
    fatiq7(:,:,27)=X_initial27;
elseif fit28==max(Sub_fit)
    fatiq7(:,:,28)=X_initial28;
elseif fit29==max(Sub_fit)
    fatiq7(:,:,29)=X_initial29;
elseif fit30==max(Sub_fit)
    fatiq7(:,:,30)=X_initial30;
elseif fit31==max(Sub_fit)
    fatiq7(:,:,31)=X_initial31;
elseif fit32==max(Sub_fit)
    fatiq7(:,:,32)=X_initial32;
elseif fit33==max(Sub_fit)
    fatiq7(:,:,33)=X_initial33;
elseif fit34==max(Sub_fit)
    fatiq7(:,:,34)=X_initial34;
elseif fit35==max(Sub_fit)
    fatiq7(:,:,35)=X_initial35;
elseif fit36==max(Sub_fit)
    fatiq7(:,:,36)=X_initial36;
elseif fit37==max(Sub_fit)
    fatiq7(:,:,37)=X_initial37;
elseif fit38==max(Sub_fit)
    fatiq7(:,:,38)=X_initial38;
elseif fit39==max(Sub_fit)
    fatiq7(:,:,39)=X_initial39;
elseif fit40==max(Sub_fit)
    fatiq7(:,:,40)=X_initial40;
elseif fit41==max(Sub_fit)
    fatiq7(:,:,41)=X_initial41;
elseif fit42==max(Sub_fit)
    fatiq7(:,:,42)=X_initial42;
elseif fit43==max(Sub_fit)
    fatiq7(:,:,43)=X_initial43;
elseif fit44==max(Sub_fit)
    fatiq7(:,:,44)=X_initial44;
elseif fit45==max(Sub_fit)
    fatiq7(:,:,45)=X_initial45;
elseif fit46==max(Sub_fit)
    fatiq7(:,:,46)=X_initial46;
elseif fit47==max(Sub_fit)
    fatiq7(:,:,47)=X_initial47;
elseif fit48==max(Sub_fit)
    fatiq7(:,:,48)=X_initial48;
elseif fit49==max(Sub_fit)
    fatiq7(:,:,49)=X_initial49;
elseif fit50==max(Sub_fit)
    fatiq7(:,:,50)=X_initial50;
elseif fit51==max(Sub_fit)
    fatiq7(:,:,51)=X_initial51;
elseif fit52==max(Sub_fit)
    fatiq7(:,:,52)=X_initial52;
elseif fit53==max(Sub_fit)
    fatiq7(:,:,53)=X_initial53;
elseif fit54==max(Sub_fit)
    fatiq7(:,:,54)=X_initial54;
elseif fit55==max(Sub_fit)
    fatiq7(:,:,55)=X_initial55;
elseif fit56==max(Sub_fit)
    fatiq7(:,:,56)=X_initial56;
elseif fit57==max(Sub_fit)
    fatiq7(:,:,57)=X_initial57;
elseif fit58==max(Sub_fit)
    fatiq7(:,:,58)=X_initial58;
elseif fit59==max(Sub_fit)
    fatiq7(:,:,59)=X_initial59;
elseif fit60==max(Sub_fit)
    fatiq7(:,:,60)=X_initial60;
elseif fit61==max(Sub_fit)
    fatiq7(:,:,61)=X_initial61;
elseif fit62==max(Sub_fit)
    fatiq7(:,:,62)=X_initial62;
elseif fit63==max(Sub_fit)
    fatiq7(:,:,63)=X_initial63;
elseif fit64==max(Sub_fit)
    fatiq7(:,:,64)=X_initial64;
elseif fit65==max(Sub_fit)
    fatiq7(:,:,65)=X_initial65;
elseif fit66==max(Sub_fit)
    fatiq7(:,:,66)=X_initial66;
elseif fit67==max(Sub_fit)
    fatiq7(:,:,67)=X_initial67;
elseif fit68==max(Sub_fit)
    fatiq7(:,:,68)=X_initial68;
elseif fit69==max(Sub_fit)
    fatiq7(:,:,69)=X_initial69;
elseif fit70==max(Sub_fit)
    fatiq7(:,:,70)=X_initial70;
elseif fit71==max(Sub_fit)
    fatiq7(:,:,71)=X_initial71;
elseif fit72==max(Sub_fit)
    fatiq7(:,:,72)=X_initial72;
elseif fit73==max(Sub_fit)
    fatiq7(:,:,73)=X_initial73;
elseif fit74==max(Sub_fit)
    fatiq7(:,:,74)=X_initial74;
elseif fit75==max(Sub_fit)
    fatiq7(:,:,75)=X_initial75;
elseif fit76==max(Sub_fit)
    fatiq7(:,:,76)=X_initial76;
elseif fit77==max(Sub_fit)
    fatiq7(:,:,77)=X_initial77;
elseif fit78==max(Sub_fit)
    fatiq7(:,:,78)=X_initial78;
elseif fit79==max(Sub_fit)
    fatiq7(:,:,79)=X_initial79;
elseif fit80==max(Sub_fit)
    fatiq7(:,:,80)=X_initial80;
elseif fit81==max(Sub_fit)
    fatiq7(:,:,81)=X_initial81;
elseif fit82==max(Sub_fit)
    fatiq7(:,:,82)=X_initial82;
elseif fit83==max(Sub_fit)
    fatiq7(:,:,83)=X_initial83;
elseif fit84==max(Sub_fit)
    fatiq7(:,:,84)=X_initial84;
elseif fit85==max(Sub_fit)
    fatiq7(:,:,85)=X_initial85;
elseif fit86==max(Sub_fit)
    fatiq7(:,:,86)=X_initial86;
elseif fit87==max(Sub_fit)
    fatiq7(:,:,87)=X_initial87;
elseif fit88==max(Sub_fit)
    fatiq7(:,:,88)=X_initial88;
elseif fit89==max(Sub_fit)
    fatiq7(:,:,89)=X_initial89;
elseif fit90==max(Sub_fit)
    fatiq7(:,:,90)=X_initial90;
elseif fit91==max(Sub_fit)
    fatiq7(:,:,91)=X_initial91;
elseif fit92==max(Sub_fit)
    fatiq7(:,:,92)=X_initial92;
elseif fit93==max(Sub_fit)
    fatiq7(:,:,93)=X_initial93;
elseif fit94==max(Sub_fit)
    fatiq7(:,:,94)=X_initial94;
elseif fit95==max(Sub_fit)
    fatiq7(:,:,95)=X_initial95;
elseif fit96==max(Sub_fit)
    fatiq7(:,:,96)=X_initial96;
elseif fit97==max(Sub_fit)
    fatiq7(:,:,97)=X_initial97;
elseif fit98==max(Sub_fit)
    fatiq7(:,:,98)=X_initial98;
elseif fit99==max(Sub_fit)
    fatiq7(:,:,99)=X_initial99;
elseif fit100==max(Sub_fit)
    fatiq7(:,:,100)=X_initial100;
end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%
[evolution_fit,evolution_dim]=max(Sub_fit);
Sub_fit(evolution_dim)=0;

fatiq8=zeros(10,10,100);
if fit1==max(Sub_fit)
    fatiq8(:,:,1)=X_initial1;
elseif fit2==max(Sub_fit)
    fatiq8(:,:,2)=X_initial2;
 elseif fit3==max(Sub_fit)
    fatiq8(:,:,3)=X_initial3;
 elseif fit4==max(Sub_fit)
    fatiq8(:,:,4)=X_initial4;
  elseif fit5==max(Sub_fit)
    fatiq8(:,:,5)=X_initial5;
   elseif fit6==max(Sub_fit)
    fatiq8(:,:,6)=X_initial6;
    elseif fit7==max(Sub_fit)
    fatiq8(:,:,7)=X_initial7;
    elseif fit8==max(Sub_fit)
    fatiq8(:,:,8)=X_initial8;
    elseif fit9==max(Sub_fit)
    fatiq8(:,:,9)=X_initial9;
   elseif fit10==max(Sub_fit)
    fatiq8(:,:,10)=X_initia10;
    elseif fit11==max(Sub_fit)
    fatiq8(:,:,11)=X_initial11;
    elseif fit12==max(Sub_fit)
    fatiq8(:,:,12)=X_initial12;
    elseif fit13==max(Sub_fit)
    fatiq8(:,:,13)=X_initial13;
    elseif fit14==max(Sub_fit)
    fatiq8(:,:,14)=X_initial14;
    elseif fit15==max(Sub_fit)
    fatiq8(:,:,15)=X_initial15;
    elseif fit16==max(Sub_fit)
    fatiq8(:,:,16)=X_initial16;
    elseif fit17==max(Sub_fit)
    fatiq8(:,:,17)=X_initial17;
    elseif fit18==max(Sub_fit)
    fatiq8(:,:,18)=X_initial18;
    elseif fit19==max(Sub_fit)
    fatiq8(:,:,19)=X_initial19;
    elseif fit20==max(Sub_fit)
    fatiq8(:,:,20)=X_initial20;
    elseif fit21==max(Sub_fit)
    fatiq8(:,:,21)=X_initial21;
elseif fit22==max(Sub_fit)
    fatiq8(:,:,22)=X_initial22;
elseif fit23==max(Sub_fit)
    fatiq8(:,:,23)=X_initial23;
elseif fit24==max(Sub_fit)
    fatiq8(:,:,24)=X_initial24;
elseif fit25==max(Sub_fit)
    fatiq8(:,:,25)=X_initial25;
elseif fit26==max(Sub_fit)
    fatiq8(:,:,26)=X_initial26;
elseif fit27==max(Sub_fit)
    fatiq8(:,:,27)=X_initial27;
elseif fit28==max(Sub_fit)
    fatiq8(:,:,28)=X_initial28;
elseif fit29==max(Sub_fit)
    fatiq8(:,:,29)=X_initial29;
elseif fit30==max(Sub_fit)
    fatiq8(:,:,30)=X_initial30;
elseif fit31==max(Sub_fit)
    fatiq8(:,:,31)=X_initial31;
elseif fit32==max(Sub_fit)
    fatiq8(:,:,32)=X_initial32;
elseif fit33==max(Sub_fit)
    fatiq8(:,:,33)=X_initial33;
elseif fit34==max(Sub_fit)
    fatiq8(:,:,34)=X_initial34;
elseif fit35==max(Sub_fit)
    fatiq8(:,:,35)=X_initial35;
elseif fit36==max(Sub_fit)
    fatiq8(:,:,36)=X_initial36;
elseif fit37==max(Sub_fit)
    fatiq8(:,:,37)=X_initial37;
elseif fit38==max(Sub_fit)
    fatiq8(:,:,38)=X_initial38;
elseif fit39==max(Sub_fit)
    fatiq8(:,:,39)=X_initial39;
elseif fit40==max(Sub_fit)
    fatiq8(:,:,40)=X_initial40;
elseif fit41==max(Sub_fit)
    fatiq8(:,:,41)=X_initial41;
elseif fit42==max(Sub_fit)
    fatiq8(:,:,42)=X_initial42;
elseif fit43==max(Sub_fit)
    fatiq8(:,:,43)=X_initial43;
elseif fit44==max(Sub_fit)
    fatiq8(:,:,44)=X_initial44;
elseif fit45==max(Sub_fit)
    fatiq8(:,:,45)=X_initial45;
elseif fit46==max(Sub_fit)
    fatiq8(:,:,46)=X_initial46;
elseif fit47==max(Sub_fit)
    fatiq8(:,:,47)=X_initial47;
elseif fit48==max(Sub_fit)
    fatiq8(:,:,48)=X_initial48;
elseif fit49==max(Sub_fit)
    fatiq8(:,:,49)=X_initial49;
elseif fit50==max(Sub_fit)
    fatiq8(:,:,50)=X_initial50;
elseif fit51==max(Sub_fit)
    fatiq8(:,:,51)=X_initial51;
elseif fit52==max(Sub_fit)
    fatiq8(:,:,52)=X_initial52;
elseif fit53==max(Sub_fit)
    fatiq8(:,:,53)=X_initial53;
elseif fit54==max(Sub_fit)
    fatiq8(:,:,54)=X_initial54;
elseif fit55==max(Sub_fit)
    fatiq8(:,:,55)=X_initial55;
elseif fit56==max(Sub_fit)
    fatiq8(:,:,56)=X_initial56;
elseif fit57==max(Sub_fit)
    fatiq8(:,:,57)=X_initial57;
elseif fit58==max(Sub_fit)
    fatiq8(:,:,58)=X_initial58;
elseif fit59==max(Sub_fit)
    fatiq8(:,:,59)=X_initial59;
elseif fit60==max(Sub_fit)
    fatiq8(:,:,60)=X_initial60;
elseif fit61==max(Sub_fit)
    fatiq8(:,:,61)=X_initial61;
elseif fit62==max(Sub_fit)
    fatiq8(:,:,62)=X_initial62;
elseif fit63==max(Sub_fit)
    fatiq8(:,:,63)=X_initial63;
elseif fit64==max(Sub_fit)
    fatiq8(:,:,64)=X_initial64;
elseif fit65==max(Sub_fit)
    fatiq8(:,:,65)=X_initial65;
elseif fit66==max(Sub_fit)
    fatiq8(:,:,66)=X_initial66;
elseif fit67==max(Sub_fit)
    fatiq8(:,:,67)=X_initial67;
elseif fit68==max(Sub_fit)
    fatiq8(:,:,68)=X_initial68;
elseif fit69==max(Sub_fit)
    fatiq8(:,:,69)=X_initial69;
elseif fit70==max(Sub_fit)
    fatiq8(:,:,70)=X_initial70;
elseif fit71==max(Sub_fit)
    fatiq8(:,:,71)=X_initial71;
elseif fit72==max(Sub_fit)
    fatiq8(:,:,72)=X_initial72;
elseif fit73==max(Sub_fit)
    fatiq8(:,:,73)=X_initial73;
elseif fit74==max(Sub_fit)
    fatiq8(:,:,74)=X_initial74;
elseif fit75==max(Sub_fit)
    fatiq8(:,:,75)=X_initial75;
elseif fit76==max(Sub_fit)
    fatiq8(:,:,76)=X_initial76;
elseif fit77==max(Sub_fit)
    fatiq8(:,:,77)=X_initial77;
elseif fit78==max(Sub_fit)
    fatiq8(:,:,78)=X_initial78;
elseif fit79==max(Sub_fit)
    fatiq8(:,:,79)=X_initial79;
elseif fit80==max(Sub_fit)
    fatiq8(:,:,80)=X_initial80;
elseif fit81==max(Sub_fit)
    fatiq8(:,:,81)=X_initial81;
elseif fit82==max(Sub_fit)
    fatiq8(:,:,82)=X_initial82;
elseif fit83==max(Sub_fit)
    fatiq8(:,:,83)=X_initial83;
elseif fit84==max(Sub_fit)
    fatiq8(:,:,84)=X_initial84;
elseif fit85==max(Sub_fit)
    fatiq8(:,:,85)=X_initial85;
elseif fit86==max(Sub_fit)
    fatiq8(:,:,86)=X_initial86;
elseif fit87==max(Sub_fit)
    fatiq8(:,:,87)=X_initial87;
elseif fit88==max(Sub_fit)
    fatiq8(:,:,88)=X_initial88;
elseif fit89==max(Sub_fit)
    fatiq8(:,:,89)=X_initial89;
elseif fit90==max(Sub_fit)
    fatiq8(:,:,90)=X_initial90;
elseif fit91==max(Sub_fit)
    fatiq8(:,:,91)=X_initial91;
elseif fit92==max(Sub_fit)
    fatiq8(:,:,92)=X_initial92;
elseif fit93==max(Sub_fit)
    fatiq8(:,:,93)=X_initial93;
elseif fit94==max(Sub_fit)
    fatiq8(:,:,94)=X_initial94;
elseif fit95==max(Sub_fit)
    fatiq8(:,:,95)=X_initial95;
elseif fit96==max(Sub_fit)
    fatiq8(:,:,96)=X_initial96;
elseif fit97==max(Sub_fit)
    fatiq8(:,:,97)=X_initial97;
elseif fit98==max(Sub_fit)
    fatiq8(:,:,98)=X_initial98;
elseif fit99==max(Sub_fit)
    fatiq8(:,:,99)=X_initial99;
elseif fit100==max(Sub_fit)
    fatiq8(:,:,100)=X_initial100;
end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%
[evolution_fit,evolution_dim]=max(Sub_fit);
Sub_fit(evolution_dim)=0;

fatiq9=zeros(10,10,100);
if fit1==max(Sub_fit)
    fatiq9(:,:,1)=X_initial1;
elseif fit2==max(Sub_fit)
    fatiq9(:,:,2)=X_initial2;
 elseif fit3==max(Sub_fit)
    fatiq9(:,:,3)=X_initial3;
 elseif fit4==max(Sub_fit)
    fatiq9(:,:,4)=X_initial4;
  elseif fit5==max(Sub_fit)
    fatiq9(:,:,5)=X_initial5;
   elseif fit6==max(Sub_fit)
    fatiq9(:,:,6)=X_initial6;
    elseif fit7==max(Sub_fit)
    fatiq9(:,:,7)=X_initial7;
    elseif fit8==max(Sub_fit)
    fatiq9(:,:,8)=X_initial8;
    elseif fit9==max(Sub_fit)
    fatiq9(:,:,9)=X_initial9;
   elseif fit10==max(Sub_fit)
    fatiq9(:,:,10)=X_initia10;
    elseif fit11==max(Sub_fit)
    fatiq9(:,:,11)=X_initial11;
    elseif fit12==max(Sub_fit)
    fatiq9(:,:,12)=X_initial12;
    elseif fit13==max(Sub_fit)
    fatiq9(:,:,13)=X_initial13;
    elseif fit14==max(Sub_fit)
    fatiq9(:,:,14)=X_initial14;
    elseif fit15==max(Sub_fit)
    fatiq9(:,:,15)=X_initial15;
    elseif fit16==max(Sub_fit)
    fatiq9(:,:,16)=X_initial16;
    elseif fit17==max(Sub_fit)
    fatiq9(:,:,17)=X_initial17;
    elseif fit18==max(Sub_fit)
    fatiq9(:,:,18)=X_initial18;
    elseif fit19==max(Sub_fit)
    fatiq9(:,:,19)=X_initial19;
    elseif fit20==max(Sub_fit)
    fatiq9(:,:,20)=X_initial20;
    elseif fit21==max(Sub_fit)
    fatiq9(:,:,21)=X_initial21;
elseif fit22==max(Sub_fit)
    fatiq9(:,:,22)=X_initial22;
elseif fit23==max(Sub_fit)
    fatiq9(:,:,23)=X_initial23;
elseif fit24==max(Sub_fit)
    fatiq9(:,:,24)=X_initial24;
elseif fit25==max(Sub_fit)
    fatiq9(:,:,25)=X_initial25;
elseif fit26==max(Sub_fit)
    fatiq9(:,:,26)=X_initial26;
elseif fit27==max(Sub_fit)
    fatiq9(:,:,27)=X_initial27;
elseif fit28==max(Sub_fit)
    fatiq9(:,:,28)=X_initial28;
elseif fit29==max(Sub_fit)
    fatiq9(:,:,29)=X_initial29;
elseif fit30==max(Sub_fit)
    fatiq9(:,:,30)=X_initial30;
elseif fit31==max(Sub_fit)
    fatiq9(:,:,31)=X_initial31;
elseif fit32==max(Sub_fit)
    fatiq9(:,:,32)=X_initial32;
elseif fit33==max(Sub_fit)
    fatiq9(:,:,33)=X_initial33;
elseif fit34==max(Sub_fit)
    fatiq9(:,:,34)=X_initial34;
elseif fit35==max(Sub_fit)
    fatiq9(:,:,35)=X_initial35;
elseif fit36==max(Sub_fit)
    fatiq9(:,:,36)=X_initial36;
elseif fit37==max(Sub_fit)
    fatiq9(:,:,37)=X_initial37;
elseif fit38==max(Sub_fit)
    fatiq9(:,:,38)=X_initial38;
elseif fit39==max(Sub_fit)
    fatiq9(:,:,39)=X_initial39;
elseif fit40==max(Sub_fit)
    fatiq9(:,:,40)=X_initial40;
elseif fit41==max(Sub_fit)
    fatiq9(:,:,41)=X_initial41;
elseif fit42==max(Sub_fit)
    fatiq9(:,:,42)=X_initial42;
elseif fit43==max(Sub_fit)
    fatiq9(:,:,43)=X_initial43;
elseif fit44==max(Sub_fit)
    fatiq9(:,:,44)=X_initial44;
elseif fit45==max(Sub_fit)
    fatiq9(:,:,45)=X_initial45;
elseif fit46==max(Sub_fit)
    fatiq9(:,:,46)=X_initial46;
elseif fit47==max(Sub_fit)
    fatiq9(:,:,47)=X_initial47;
elseif fit48==max(Sub_fit)
    fatiq9(:,:,48)=X_initial48;
elseif fit49==max(Sub_fit)
    fatiq9(:,:,49)=X_initial49;
elseif fit50==max(Sub_fit)
    fatiq9(:,:,50)=X_initial50;
elseif fit51==max(Sub_fit)
    fatiq9(:,:,51)=X_initial51;
elseif fit52==max(Sub_fit)
    fatiq9(:,:,52)=X_initial52;
elseif fit53==max(Sub_fit)
    fatiq9(:,:,53)=X_initial53;
elseif fit54==max(Sub_fit)
    fatiq9(:,:,54)=X_initial54;
elseif fit55==max(Sub_fit)
    fatiq9(:,:,55)=X_initial55;
elseif fit56==max(Sub_fit)
    fatiq9(:,:,56)=X_initial56;
elseif fit57==max(Sub_fit)
    fatiq9(:,:,57)=X_initial57;
elseif fit58==max(Sub_fit)
    fatiq9(:,:,58)=X_initial58;
elseif fit59==max(Sub_fit)
    fatiq9(:,:,59)=X_initial59;
elseif fit60==max(Sub_fit)
    fatiq9(:,:,60)=X_initial60;
elseif fit61==max(Sub_fit)
    fatiq9(:,:,61)=X_initial61;
elseif fit62==max(Sub_fit)
    fatiq9(:,:,62)=X_initial62;
elseif fit63==max(Sub_fit)
    fatiq9(:,:,63)=X_initial63;
elseif fit64==max(Sub_fit)
    fatiq9(:,:,64)=X_initial64;
elseif fit65==max(Sub_fit)
    fatiq9(:,:,65)=X_initial65;
elseif fit66==max(Sub_fit)
    fatiq9(:,:,66)=X_initial66;
elseif fit67==max(Sub_fit)
    fatiq9(:,:,67)=X_initial67;
elseif fit68==max(Sub_fit)
    fatiq9(:,:,68)=X_initial68;
elseif fit69==max(Sub_fit)
    fatiq9(:,:,69)=X_initial69;
elseif fit70==max(Sub_fit)
    fatiq9(:,:,70)=X_initial70;
elseif fit71==max(Sub_fit)
    fatiq9(:,:,71)=X_initial71;
elseif fit72==max(Sub_fit)
    fatiq9(:,:,72)=X_initial72;
elseif fit73==max(Sub_fit)
    fatiq9(:,:,73)=X_initial73;
elseif fit74==max(Sub_fit)
    fatiq9(:,:,74)=X_initial74;
elseif fit75==max(Sub_fit)
    fatiq9(:,:,75)=X_initial75;
elseif fit76==max(Sub_fit)
    fatiq9(:,:,76)=X_initial76;
elseif fit77==max(Sub_fit)
    fatiq9(:,:,77)=X_initial77;
elseif fit78==max(Sub_fit)
    fatiq9(:,:,78)=X_initial78;
elseif fit79==max(Sub_fit)
    fatiq9(:,:,79)=X_initial79;
elseif fit80==max(Sub_fit)
    fatiq9(:,:,80)=X_initial80;
elseif fit81==max(Sub_fit)
    fatiq9(:,:,81)=X_initial81;
elseif fit82==max(Sub_fit)
    fatiq9(:,:,82)=X_initial82;
elseif fit83==max(Sub_fit)
    fatiq9(:,:,83)=X_initial83;
elseif fit84==max(Sub_fit)
    fatiq9(:,:,84)=X_initial84;
elseif fit85==max(Sub_fit)
    fatiq9(:,:,85)=X_initial85;
elseif fit86==max(Sub_fit)
    fatiq9(:,:,86)=X_initial86;
elseif fit87==max(Sub_fit)
    fatiq9(:,:,87)=X_initial87;
elseif fit88==max(Sub_fit)
    fatiq9(:,:,88)=X_initial88;
elseif fit89==max(Sub_fit)
    fatiq9(:,:,89)=X_initial89;
elseif fit90==max(Sub_fit)
    fatiq9(:,:,90)=X_initial90;
elseif fit91==max(Sub_fit)
    fatiq9(:,:,91)=X_initial91;
elseif fit92==max(Sub_fit)
    fatiq9(:,:,92)=X_initial92;
elseif fit93==max(Sub_fit)
    fatiq9(:,:,93)=X_initial93;
elseif fit94==max(Sub_fit)
    fatiq9(:,:,94)=X_initial94;
elseif fit95==max(Sub_fit)
    fatiq9(:,:,95)=X_initial95;
elseif fit96==max(Sub_fit)
    fatiq9(:,:,96)=X_initial96;
elseif fit97==max(Sub_fit)
    fatiq9(:,:,97)=X_initial97;
elseif fit98==max(Sub_fit)
    fatiq9(:,:,98)=X_initial98;
elseif fit99==max(Sub_fit)
    fatiq9(:,:,99)=X_initial99;
elseif fit100==max(Sub_fit)
    fatiq9(:,:,100)=X_initial100;
end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%
[evolution_fit,evolution_dim]=max(Sub_fit);
Sub_fit(evolution_dim)=0;

fatiq10=zeros(10,10,100);
if fit1==max(Sub_fit)
    fatiq10(:,:,1)=X_initial1;
elseif fit2==max(Sub_fit)
    fatiq10(:,:,2)=X_initial2;
 elseif fit3==max(Sub_fit)
    fatiq10(:,:,3)=X_initial3;
 elseif fit4==max(Sub_fit)
    fatiq10(:,:,4)=X_initial4;
  elseif fit5==max(Sub_fit)
    fatiq10(:,:,5)=X_initial5;
   elseif fit6==max(Sub_fit)
    fatiq10(:,:,6)=X_initial6;
    elseif fit7==max(Sub_fit)
    fatiq10(:,:,7)=X_initial7;
    elseif fit8==max(Sub_fit)
    fatiq10(:,:,8)=X_initial8;
    elseif fit9==max(Sub_fit)
    fatiq10(:,:,9)=X_initial9;
   elseif fit10==max(Sub_fit)
    fatiq10(:,:,10)=X_initia10;
    elseif fit11==max(Sub_fit)
    fatiq10(:,:,11)=X_initial11;
    elseif fit12==max(Sub_fit)
    fatiq10(:,:,12)=X_initial12;
    elseif fit13==max(Sub_fit)
    fatiq10(:,:,13)=X_initial13;
    elseif fit14==max(Sub_fit)
    fatiq10(:,:,14)=X_initial14;
    elseif fit15==max(Sub_fit)
    fatiq10(:,:,15)=X_initial15;
    elseif fit16==max(Sub_fit)
    fatiq10(:,:,16)=X_initial16;
    elseif fit17==max(Sub_fit)
    fatiq10(:,:,17)=X_initial17;
    elseif fit18==max(Sub_fit)
    fatiq10(:,:,18)=X_initial18;
    elseif fit19==max(Sub_fit)
    fatiq10(:,:,19)=X_initial19;
    elseif fit20==max(Sub_fit)
    fatiq10(:,:,20)=X_initial20;
    elseif fit21==max(Sub_fit)
    fatiq10(:,:,21)=X_initial21;
elseif fit22==max(Sub_fit)
    fatiq10(:,:,22)=X_initial22;
elseif fit23==max(Sub_fit)
    fatiq10(:,:,23)=X_initial23;
elseif fit24==max(Sub_fit)
    fatiq10(:,:,24)=X_initial24;
elseif fit25==max(Sub_fit)
    fatiq10(:,:,25)=X_initial25;
elseif fit26==max(Sub_fit)
    fatiq10(:,:,26)=X_initial26;
elseif fit27==max(Sub_fit)
    fatiq10(:,:,27)=X_initial27;
elseif fit28==max(Sub_fit)
    fatiq10(:,:,28)=X_initial28;
elseif fit29==max(Sub_fit)
    fatiq10(:,:,29)=X_initial29;
elseif fit30==max(Sub_fit)
    fatiq10(:,:,30)=X_initial30;
elseif fit31==max(Sub_fit)
    fatiq10(:,:,31)=X_initial31;
elseif fit32==max(Sub_fit)
    fatiq10(:,:,32)=X_initial32;
elseif fit33==max(Sub_fit)
    fatiq10(:,:,33)=X_initial33;
elseif fit34==max(Sub_fit)
    fatiq10(:,:,34)=X_initial34;
elseif fit35==max(Sub_fit)
    fatiq10(:,:,35)=X_initial35;
elseif fit36==max(Sub_fit)
    fatiq10(:,:,36)=X_initial36;
elseif fit37==max(Sub_fit)
    fatiq10(:,:,37)=X_initial37;
elseif fit38==max(Sub_fit)
    fatiq10(:,:,38)=X_initial38;
elseif fit39==max(Sub_fit)
    fatiq10(:,:,39)=X_initial39;
elseif fit40==max(Sub_fit)
    fatiq10(:,:,40)=X_initial40;
elseif fit41==max(Sub_fit)
    fatiq10(:,:,41)=X_initial41;
elseif fit42==max(Sub_fit)
    fatiq10(:,:,42)=X_initial42;
elseif fit43==max(Sub_fit)
    fatiq10(:,:,43)=X_initial43;
elseif fit44==max(Sub_fit)
    fatiq10(:,:,44)=X_initial44;
elseif fit45==max(Sub_fit)
    fatiq10(:,:,45)=X_initial45;
elseif fit46==max(Sub_fit)
    fatiq10(:,:,46)=X_initial46;
elseif fit47==max(Sub_fit)
    fatiq10(:,:,47)=X_initial47;
elseif fit48==max(Sub_fit)
    fatiq10(:,:,48)=X_initial48;
elseif fit49==max(Sub_fit)
    fatiq10(:,:,49)=X_initial49;
elseif fit50==max(Sub_fit)
    fatiq10(:,:,50)=X_initial50;
elseif fit51==max(Sub_fit)
    fatiq10(:,:,51)=X_initial51;
elseif fit52==max(Sub_fit)
    fatiq10(:,:,52)=X_initial52;
elseif fit53==max(Sub_fit)
    fatiq10(:,:,53)=X_initial53;
elseif fit54==max(Sub_fit)
    fatiq10(:,:,54)=X_initial54;
elseif fit55==max(Sub_fit)
    fatiq10(:,:,55)=X_initial55;
elseif fit56==max(Sub_fit)
    fatiq10(:,:,56)=X_initial56;
elseif fit57==max(Sub_fit)
    fatiq10(:,:,57)=X_initial57;
elseif fit58==max(Sub_fit)
    fatiq10(:,:,58)=X_initial58;
elseif fit59==max(Sub_fit)
    fatiq10(:,:,59)=X_initial59;
elseif fit60==max(Sub_fit)
    fatiq10(:,:,60)=X_initial60;
elseif fit61==max(Sub_fit)
    fatiq10(:,:,61)=X_initial61;
elseif fit62==max(Sub_fit)
    fatiq10(:,:,62)=X_initial62;
elseif fit63==max(Sub_fit)
    fatiq10(:,:,63)=X_initial63;
elseif fit64==max(Sub_fit)
    fatiq10(:,:,64)=X_initial64;
elseif fit65==max(Sub_fit)
    fatiq10(:,:,65)=X_initial65;
elseif fit66==max(Sub_fit)
    fatiq10(:,:,66)=X_initial66;
elseif fit67==max(Sub_fit)
    fatiq10(:,:,67)=X_initial67;
elseif fit68==max(Sub_fit)
    fatiq10(:,:,68)=X_initial68;
elseif fit69==max(Sub_fit)
    fatiq10(:,:,69)=X_initial69;
elseif fit70==max(Sub_fit)
    fatiq10(:,:,70)=X_initial70;
elseif fit71==max(Sub_fit)
    fatiq10(:,:,71)=X_initial71;
elseif fit72==max(Sub_fit)
    fatiq10(:,:,72)=X_initial72;
elseif fit73==max(Sub_fit)
    fatiq10(:,:,73)=X_initial73;
elseif fit74==max(Sub_fit)
    fatiq10(:,:,74)=X_initial74;
elseif fit75==max(Sub_fit)
    fatiq10(:,:,75)=X_initial75;
elseif fit76==max(Sub_fit)
    fatiq10(:,:,76)=X_initial76;
elseif fit77==max(Sub_fit)
    fatiq10(:,:,77)=X_initial77;
elseif fit78==max(Sub_fit)
    fatiq10(:,:,78)=X_initial78;
elseif fit79==max(Sub_fit)
    fatiq10(:,:,79)=X_initial79;
elseif fit80==max(Sub_fit)
    fatiq10(:,:,80)=X_initial80;
elseif fit81==max(Sub_fit)
    fatiq10(:,:,81)=X_initial81;
elseif fit82==max(Sub_fit)
    fatiq10(:,:,82)=X_initial82;
elseif fit83==max(Sub_fit)
    fatiq10(:,:,83)=X_initial83;
elseif fit84==max(Sub_fit)
    fatiq10(:,:,84)=X_initial84;
elseif fit85==max(Sub_fit)
    fatiq10(:,:,85)=X_initial85;
elseif fit86==max(Sub_fit)
    fatiq10(:,:,86)=X_initial86;
elseif fit87==max(Sub_fit)
    fatiq10(:,:,87)=X_initial87;
elseif fit88==max(Sub_fit)
    fatiq10(:,:,88)=X_initial88;
elseif fit89==max(Sub_fit)
    fatiq10(:,:,89)=X_initial89;
elseif fit90==max(Sub_fit)
    fatiq10(:,:,90)=X_initial90;
elseif fit91==max(Sub_fit)
    fatiq10(:,:,91)=X_initial91;
elseif fit92==max(Sub_fit)
    fatiq10(:,:,92)=X_initial92;
elseif fit93==max(Sub_fit)
    fatiq10(:,:,93)=X_initial93;
elseif fit94==max(Sub_fit)
    fatiq10(:,:,94)=X_initial94;
elseif fit95==max(Sub_fit)
    fatiq10(:,:,95)=X_initial95;
elseif fit96==max(Sub_fit)
    fatiq10(:,:,96)=X_initial96;
elseif fit97==max(Sub_fit)
    fatiq10(:,:,97)=X_initial97;
elseif fit98==max(Sub_fit)
    fatiq10(:,:,98)=X_initial98;
elseif fit99==max(Sub_fit)
    fatiq10(:,:,99)=X_initial99;
elseif fit100==max(Sub_fit)
    fatiq10(:,:,100)=X_initial100;
end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
for l=1:100
 if fatiq1(:,:,l)~= zeros(10)
  X_initial1=fatiq1(:,:,l);
end
end
X_initial1=X_initial1;
X_initial2=X_initial1;
X_initial3=X_initial1;
X_initial4=X_initial1;
X_initial5=X_initial1;
X_initial6=X_initial1;
X_initial7=X_initial1;
X_initial8=X_initial1;
X_initial9=X_initial1;
X_initial10=X_initial1;

for l=1:100
 if fatiq2(:,:,l)~=zeros(10)
  X_initial11=fatiq2(:,:,l);
end
end
X_initial11=X_initial11;
X_initial12=X_initial11;
X_initial13=X_initial11;
X_initial14=X_initial11;
X_initial15=X_initial11;
X_initial16=X_initial11;
X_initial17=X_initial11;
X_initial18=X_initial11;
X_initial19=X_initial11;
X_initial20=X_initial11;
for l=1:100
 if fatiq3(:,:,l)~=zeros(10)
  X_initial21=fatiq3(:,:,l);
end
end
X_initial21=X_initial21;
X_initial22=X_initial21;
X_initial23=X_initial21;
X_initial24=X_initial21;
X_initial25=X_initial21;
X_initial26=X_initial21;
X_initial27=X_initial21;
X_initial28=X_initial21;
X_initial29=X_initial21;
X_initial30=X_initial21;

for l=1:100
 if fatiq4(:,:,l)~=zeros(10)
  X_initial31=fatiq4(:,:,l);
end
end
X_initial31=X_initial31;
X_initial32=X_initial31;
X_initial33=X_initial31;
X_initial34=X_initial31;
X_initial35=X_initial31;
X_initial36=X_initial31;
X_initial37=X_initial31;
X_initial38=X_initial31;
X_initial39=X_initial31;
X_initial40=X_initial31;

for l=1:100
 if fatiq5(:,:,l)~=zeros(10)
  X_initial41=fatiq5(:,:,l);
end
end
X_initial41=X_initial41;
X_initial42=X_initial41;
X_initial43=X_initial41;
X_initial44=X_initial41;
X_initial45=X_initial41;
X_initial46=X_initial41;
X_initial47=X_initial41;
X_initial48=X_initial41;
X_initial49=X_initial41;
X_initial50=X_initial41;

for l=1:100
 if fatiq6(:,:,l)~=zeros(10)
  X_initial51=fatiq6(:,:,l);
end
end
X_initial51=X_initial51;
X_initial52=X_initial51;
X_initial53=X_initial51;
X_initial54=X_initial51;
X_initial55=X_initial51;
X_initial56=X_initial51;
X_initial57=X_initial51;
X_initial58=X_initial51;
X_initial59=X_initial51;
X_initial60=X_initial51;

for l=1:100
 if fatiq7(:,:,l)~=zeros(10)
  X_initial61=fatiq7(:,:,l);
end
end
X_initial61=X_initial61;
X_initial62=X_initial61;
X_initial63=X_initial61;
X_initial64=X_initial61;
X_initial65=X_initial61;
X_initial66=X_initial61;
X_initial67=X_initial61;
X_initial68=X_initial61;
X_initial69=X_initial61;
X_initial70=X_initial61;

for l=1:100
 if fatiq8(:,:,l)~=zeros(10)
  X_initial71=fatiq8(:,:,l);
end
end
X_initial71=X_initial71;
X_initial72=X_initial71;
X_initial73=X_initial71;
X_initial74=X_initial71;
X_initial75=X_initial71;
X_initial76=X_initial71;
X_initial77=X_initial71;
X_initial78=X_initial71;
X_initial79=X_initial71;
X_initial80=X_initial71;

for l=1:100
 if fatiq9(:,:,l)~=zeros(10)
  X_initial81=fatiq9(:,:,l);
end
end
X_initial81=X_initial81;
X_initial82=X_initial81;
X_initial83=X_initial81;
X_initial84=X_initial81;
X_initial85=X_initial81;
X_initial86=X_initial81;
X_initial87=X_initial81;
X_initial88=X_initial81;
X_initial89=X_initial81;
X_initial90=X_initial81;
for l=1:100
 if fatiq10(:,:,l)~=zeros(10)
  X_initial91=fatiq10(:,:,l);
end
end
X_initial91=X_initial91;
X_initial92=X_initial91;
X_initial93=X_initial91;
X_initial94=X_initial91;
X_initial95=X_initial91;
X_initial96=X_initial91;
X_initial97=X_initial91;
X_initial98=X_initial91;
X_initial99=X_initial91;
X_initial100=X_initial91;
 %%%%%%%%%%%%%%%%%%%%%%%%%%
 randd=randperm(100);
X_randd=[X_initial1,X_initial2,X_initial3,X_initial4,X_initial5,X_initial6,X_initial7,X_initial8,X_initial9,X_initial10,X_initial11,X_initial12,X_initial13,X_initial14,X_initial15,X_initial16,X_initial17,X_initial18,X_initial19,X_initial20,X_initial21,X_initial22,X_initial23,X_initial24,X_initial25,X_initial26,X_initial27,X_initial28,X_initial29,X_initial30,X_initial31,X_initial32,X_initial33,X_initial34,X_initial35,X_initial36,X_initial37,X_initial38,X_initial39,X_initial40,X_initial41,X_initial42,X_initial43,X_initial44,X_initial45,X_initial46,X_initial47,X_initial48,X_initial49,X_initial50,X_initial51,X_initial52,X_initial53,X_initial54,X_initial55,X_initial56,X_initial57,X_initial58,X_initial59,X_initial60,X_initial61,X_initial62,X_initial63,X_initial64,X_initial65,X_initial66,X_initial67,X_initial68,X_initial69,X_initial70,X_initial71,X_initial72,X_initial73,X_initial74,X_initial75,X_initial76,X_initial77,X_initial78,X_initial79,X_initial80,X_initial81,X_initial82,X_initial83,X_initial84,X_initial85,X_initial86,X_initial87,X_initial88,X_initial89,X_initial90,X_initial91,X_initial92,X_initial93,X_initial94,X_initial95,X_initial96,X_initial97,X_initial98,X_initial99,X_initial100];
%%%%%%%%%%%%%%%%% mutation & crossover%%%%%%%%%%%%%%%%%
sum=0;
for ir=1:5
ir1=randd(1,ir);


if ir1==1

sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,1:10);
u=X_randd(:,11:20);
w=[u(1:5,:);v(6:10,:)];
X_initial1=w;

elseif ir1==2

sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,11:20);
u=X_randd(:,21:30);
w=[u(1:5,:);v(6:10,:)];
X_initial2=w;

elseif ir1==3

sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,21:30);
u=X_randd(:,31:40);
w=[u(1:5,:);v(6:10,:)];
X_initial3=w;

elseif ir1==4

sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,31:40);
u=X_randd(:,41:50);
w=[u(1:5,:);v(6:10,:)];
X_initial4=w;


elseif ir1==5
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,41:50);
u=X_randd(:,51:60);
w=[u(1:5,:);v(6:10,:)];
X_initial5=w;
    

elseif ir1==6
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,51:60);
u=X_randd(:,61:70);
w=[u(1:5,:);v(6:10,:)];
X_initial6=w;

elseif ir1==7
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,61:70);
u=X_randd(:,71:80);
w=[u(1:5,:);v(6:10,:)];
X_initial7=w;

elseif ir1==8
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,71:80);
u=X_randd(:,81:90);
w=[u(1:5,:);v(6:10,:)];   
X_initial8=w;

elseif ir1==9
    sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,81:90);
u=X_randd(:,91:100);
w=[u(1:5,:);v(6:10,:)];
X_initial9=w;

elseif ir1==10
    sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,91:100);
u=X_randd(:,101:110);
w=[u(1:5,:);v(6:10,:)];
X_initial10=w;

elseif ir1==11
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,101:110);
u=X_randd(:,111:120);
w=[u(1:5,:);v(6:10,:)];    
X_initial11=w;

elseif ir1==12
 sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,111:120);
u=X_randd(:,121:130);
w=[u(1:5,:);v(6:10,:)];   
X_initial12=w;

elseif ir1==13
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,121:130);
u=X_randd(:,131:140);
w=[u(1:5,:);v(6:10,:)];    
X_initial13=w;

elseif ir1==14
    sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,131:140);
u=X_randd(:,141:150);
w=[u(1:5,:);v(6:10,:)];
X_initial14=w;

elseif ir1==15
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,141:150);
u=X_randd(:,151:160);
w=[u(1:5,:);v(6:10,:)];
X_initial15=w;

elseif ir1==16
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,151:160);
u=X_randd(:,161:170);
w=[u(1:5,:);v(6:10,:)];
X_initial16=w;

elseif ir1==17
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,161:170);
u=X_randd(:,171:180);
w=[u(1:5,:);v(6:10,:)];
X_initial17=w;

elseif ir1==18
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,171:180);
u=X_randd(:,181:190);
w=[u(1:5,:);v(6:10,:)];
X_initial18=w;

elseif ir1==19
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,181:190);
u=X_randd(:,191:200);
w=[u(1:5,:);v(6:10,:)];
X_initial19=w;

elseif ir1==20
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,191:200);
u=X_randd(:,201:210);
w=[u(1:5,:);v(6:10,:)];
X_initial20=w;

elseif ir1==21
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,201:210);
u=X_randd(:,211:220);
w=[u(1:5,:);v(6:10,:)];
X_initial21=w;

elseif ir1==22
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,211:220);
u=X_randd(:,221:230);
w=[u(1:5,:);v(6:10,:)];
X_initial22=w;

elseif ir1==23
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,221:230);
u=X_randd(:,231:240);
w=[u(1:5,:);v(6:10,:)];
X_initial23=w;

elseif ir1==24
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,231:240);
u=X_randd(:,241:250);
w=[u(1:5,:);v(6:10,:)];
X_initial24=w;

elseif ir1==25
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,241:250);
u=X_randd(:,251:260);
w=[u(1:5,:);v(6:10,:)];
X_initial25=w;

elseif ir1==26
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,251:260);
u=X_randd(:,261:270);
w=[u(1:5,:);v(6:10,:)];
X_initial26=w;

elseif ir1==27
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,261:270);
u=X_randd(:,271:280);
w=[u(1:5,:);v(6:10,:)];
X_initial27=w;

elseif ir1==28
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,271:280);
u=X_randd(:,281:290);
w=[u(1:5,:);v(6:10,:)];
X_initial28=w;

elseif ir1==29
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,281:290);
u=X_randd(:,291:300);
w=[u(1:5,:);v(6:10,:)];
X_initial29=w;

elseif ir1==30
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,291:300);
u=X_randd(:,301:310);
w=[u(1:5,:);v(6:10,:)];
X_initial30=w;

elseif ir1==31
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,301:310);
u=X_randd(:,311:320);
w=[u(1:5,:);v(6:10,:)];
X_initial31=w;

elseif ir1==32
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,311:320);
u=X_randd(:,321:330);
w=[u(1:5,:);v(6:10,:)];
X_initial32=w;

elseif ir1==33
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,321:330);
u=X_randd(:,331:340);
w=[u(1:5,:);v(6:10,:)];
X_initial33=w;

elseif ir1==34
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,331:340);
u=X_randd(:,341:350);
w=[u(1:5,:);v(6:10,:)];
X_initial34=w;

elseif ir1==35
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,341:350);
u=X_randd(:,351:360);
w=[u(1:5,:);v(6:10,:)];
X_initial35=w;

elseif ir1==36
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,351:360);
u=X_randd(:,361:370);
w=[u(1:5,:);v(6:10,:)];
X_initial36=w;

elseif ir1==37
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,361:370);
u=X_randd(:,371:380);
w=[u(1:5,:);v(6:10,:)];
X_initial37=w;

elseif ir1==38
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,371:380);
u=X_randd(:,381:390);
w=[u(1:5,:);v(6:10,:)];
X_initial38=w;

elseif ir1==39
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,381:390);
u=X_randd(:,391:400);
w=[u(1:5,:);v(6:10,:)];
X_initial39=w;

elseif ir1==40
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,391:400);
u=X_randd(:,401:410);
w=[u(1:5,:);v(6:10,:)];
X_initial40=w;

elseif ir1==41
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,401:410);
u=X_randd(:,411:420);
w=[u(1:5,:);v(6:10,:)];
X_initial41=w;

elseif ir1==42
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,411:420);
u=X_randd(:,421:430);
w=[u(1:5,:);v(6:10,:)];
X_initial42=w;

elseif ir1==43
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,421:430);
u=X_randd(:,431:440);
w=[u(1:5,:);v(6:10,:)];
X_initial43=w;

elseif ir1==44
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,431:440);
u=X_randd(:,441:450);
w=[u(1:5,:);v(6:10,:)];
X_initial44=w;

elseif ir1==45
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,441:450);
u=X_randd(:,451:460);
w=[u(1:5,:);v(6:10,:)];
X_initial45=w;

elseif ir1==46
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,451:460);
u=X_randd(:,461:470);
w=[u(1:5,:);v(6:10,:)];
X_initial46=w;

elseif ir1==47
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,461:470);
u=X_randd(:,471:480);
w=[u(1:5,:);v(6:10,:)];
X_initial47=w;

elseif ir1==48
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,471:480);
u=X_randd(:,481:490);
w=[u(1:5,:);v(6:10,:)];
X_initial48=w;

elseif ir1==49
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,481:490);
u=X_randd(:,491:500);
w=[u(1:5,:);v(6:10,:)];
X_initial49=w;

elseif ir1==50
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,491:500);
u=X_randd(:,501:510);
w=[u(1:5,:);v(6:10,:)];
X_initial50=w;

elseif ir1==51
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,501:510);
u=X_randd(:,511:520);
w=[u(1:5,:);v(6:10,:)];
X_initial51=w;

elseif ir1==52
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,511:520);
u=X_randd(:,521:530);
w=[u(1:5,:);v(6:10,:)];
X_initial52=w;

elseif ir1==53
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,521:530);
u=X_randd(:,531:540);
w=[u(1:5,:);v(6:10,:)];
X_initial53=w;

elseif ir1==54
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,531:540);
u=X_randd(:,541:550);
w=[u(1:5,:);v(6:10,:)];
X_initial54=w;

elseif ir1==55
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,541:550);
u=X_randd(:,551:560);
w=[u(1:5,:);v(6:10,:)];
X_initial55=w;

elseif ir1==56
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,551:560);
u=X_randd(:,561:570);
w=[u(1:5,:);v(6:10,:)];
X_initial56=w;

elseif ir1==57
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,561:570);
u=X_randd(:,571:580);
w=[u(1:5,:);v(6:10,:)];
X_initial57=w;

elseif ir1==58
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,571:580);
u=X_randd(:,581:590);
w=[u(1:5,:);v(6:10,:)];
X_initial58=w;

elseif ir1==59
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,581:590);
u=X_randd(:,591:600);
w=[u(1:5,:);v(6:10,:)];
X_initial59=w;

elseif ir1==60
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,591:600);
u=X_randd(:,601:610);
w=[u(1:5,:);v(6:10,:)];
X_initial60=w;

elseif ir1==61
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,601:610);
u=X_randd(:,611:620);
w=[u(1:5,:);v(6:10,:)];
X_initial61=w;

elseif ir1==62
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,611:620);
u=X_randd(:,621:630);
w=[u(1:5,:);v(6:10,:)];
X_initial62=w;

elseif ir1==63
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,621:630);
u=X_randd(:,631:640);
w=[u(1:5,:);v(6:10,:)];
X_initial63=w;

elseif ir1==64
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,631:640);
u=X_randd(:,641:650);
w=[u(1:5,:);v(6:10,:)];
X_initial64=w;

elseif ir1==65
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,641:650);
u=X_randd(:,651:660);
w=[u(1:5,:);v(6:10,:)];
X_initial65=w;

elseif ir1==66
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,651:660);
u=X_randd(:,661:670);
w=[u(1:5,:);v(6:10,:)];
X_initial66=w;

elseif ir1==67
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,661:670);
u=X_randd(:,671:680);
w=[u(1:5,:);v(6:10,:)];
X_initial67=w;

elseif ir1==68
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,671:680);
u=X_randd(:,681:690);
w=[u(1:5,:);v(6:10,:)];
X_initial68=w;

elseif ir1==69
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,681:690);
u=X_randd(:,691:700);
w=[u(1:5,:);v(6:10,:)];
X_initial69=w;

elseif ir1==70
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,691:700);
u=X_randd(:,701:710);
w=[u(1:5,:);v(6:10,:)];
X_initial70=w;

elseif ir1==71
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,701:710);
u=X_randd(:,711:720);
w=[u(1:5,:);v(6:10,:)];
X_initial71=w;

elseif ir1==72
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,711:720);
u=X_randd(:,721:730);
w=[u(1:5,:);v(6:10,:)];
X_initial72=w;

elseif ir1==73
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,721:730);
u=X_randd(:,731:740);
w=[u(1:5,:);v(6:10,:)];
X_initial73=w;

elseif ir1==74
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,731:740);
u=X_randd(:,741:750);
w=[u(1:5,:);v(6:10,:)];
X_initial74=w;

elseif ir1==75
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,741:750);
u=X_randd(:,751:760);
w=[u(1:5,:);v(6:10,:)];
X_initial75=w;

elseif ir1==76
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,751:760);
u=X_randd(:,761:770);
w=[u(1:5,:);v(6:10,:)];
X_initial76=w;

elseif ir1==77
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,761:770);
u=X_randd(:,771:780);
w=[u(1:5,:);v(6:10,:)];
X_initial77=w;

elseif ir1==78
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,771:780);
u=X_randd(:,781:790);
w=[u(1:5,:);v(6:10,:)];
X_initial78=w;

elseif ir1==79
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,781:790);
u=X_randd(:,791:800);
w=[u(1:5,:);v(6:10,:)];
X_initial79=w;


elseif ir1==80
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,791:800);
u=X_randd(:,801:810);
w=[u(1:5,:);v(6:10,:)];
X_initial80=w;

elseif ir1==81
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,801:810);
u=X_randd(:,811:820);
w=[u(1:5,:);v(6:10,:)];
X_initial81=w;

elseif ir1==82
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,811:820);
u=X_randd(:,821:830);
w=[u(1:5,:);v(6:10,:)];
X_initial82=w;

elseif ir1==83
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,821:830);
u=X_randd(:,831:840);
w=[u(1:5,:);v(6:10,:)];
X_initial83=w;

elseif ir1==84
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,831:840);
u=X_randd(:,841:850);
w=[u(1:5,:);v(6:10,:)];
X_initial84=w;

elseif ir1==85
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,841:850);
u=X_randd(:,851:860);
w=[u(1:5,:);v(6:10,:)];
X_initial85=w;

elseif ir1==86
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,851:860);
u=X_randd(:,861:870);
w=[u(1:5,:);v(6:10,:)];
X_initial86=w;

elseif ir1==87
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,861:870);
u=X_randd(:,871:880);
w=[u(1:5,:);v(6:10,:)];
X_initial87=w;

elseif ir1==88
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,871:880);
u=X_randd(:,881:890);
w=[u(1:5,:);v(6:10,:)];
X_initial88=w;

elseif ir1==89
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,881:890);
u=X_randd(:,891:900);
w=[u(1:5,:);v(6:10,:)];
X_initial89=w;

elseif ir1==90
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,891:900);
u=X_randd(:,901:910);
w=[u(1:5,:);v(6:10,:)];
X_initial90=w;

elseif ir1==91
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,901:910);
u=X_randd(:,911:920);
w=[u(1:5,:);v(6:10,:)];
X_initial91=w;

elseif ir1==92
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,911:920);
u=X_randd(:,921:930);
w=[u(1:5,:);v(6:10,:)];
X_initial92=w;

elseif ir1==93
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,921:930);
u=X_randd(:,931:940);
w=[u(1:5,:);v(6:10,:)];
X_initial93=w;

elseif ir1==94
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,931:940);
u=X_randd(:,941:950);
w=[u(1:5,:);v(6:10,:)];
X_initial94=w;

elseif ir1==95
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,941:950);
u=X_randd(:,951:960);
w=[u(1:5,:);v(6:10,:)];
X_initial95=w;

elseif ir1==96
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,951:960);
u=X_randd(:,961:970);
w=[u(1:5,:);v(6:10,:)];
X_initial96=w;

elseif ir1==97
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,961:970);
u=X_randd(:,971:980);
w=[u(1:5,:);v(6:10,:)];
X_initial97=w;

elseif ir1==98
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,971:980);
u=X_randd(:,981:990);
w=[u(1:5,:);v(6:10,:)];
X_initial98=w;

elseif ir1==99
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,981:990);
u=X_randd(:,991:100);
w=[u(1:5,:);v(6:10,:)];
X_initial99=w;

elseif ir1==100
sum=5+ir;
ir2=randd(1,sum);
v=X_randd(:,991:100);
u=X_randd(:,101:110);
w=[u(1:5,:);v(6:10,:)];
X_initial100=w;

end

end
g=0;
for i=1:iteration
g(i)=i;
end
%y=0;
y(1,iteration)=evolution_fit;
s=0;
s=s+evolution_fit;
mean=s/iteration
toc
end

  
%==========================================================================
%================================ HW#1 ====================================
%********************** Ali Rahimpour  810192071 **************************
%==========================================================================