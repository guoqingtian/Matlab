clear all;
close all;
%%
% ��ʼ������
T1=[1 1 1];    %����������
T2=[5 5 1];
T3=[2 1 7];
G=[0 0 0       %�������ٶ�
   0 0 0
   0 0 0];
L=[1 -0.5 -0.5 %ͼ��������˹����
   -1 1 0
   0 -1 1];
n=120;         %�ܵ�������
t=0.04;        %ÿ�ε����������˶�ʱ��
%%
% �������ɹ켣��
for q=2:n
    T=[T1(q-1,:); T2(q-1,:); T3(q-1,:)];  
    G=-L*T;
    T1(q,:)=T1(q-1,:)+t*G(1,:);
    T2(q,:)=T2(q-1,:)+t*G(2,:);
    T3(q,:)=T3(q-1,:)+t*G(3,:);
end
%%
%��ͼ
plot3(T1(:,1),T1(:,2),T1(:,3),'ob');hold on;
plot3(T2(:,1),T2(:,2),T2(:,3),'og');
plot3(T3(:,1),T3(:,2),T3(:,3),'om');
grid;
figure
for i=1:n-1
plot(i,T1(i,1),'.b');hold on;
plot(i,T2(i,1),'.g');
plot(i,T3(i,1),'.m');
end
figure
for i=1:n-1
plot(i,T1(i,2),'.b');hold on;
plot(i,T2(i,2),'.g');
plot(i,T3(i,2),'.m');
end
figure
for i=1:n-1
plot(i,T1(i,3),'.b');hold on;
plot(i,T2(i,3),'.g');
plot(i,T3(i,3),'.m');
end

