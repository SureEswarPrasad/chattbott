close all;
clear all;
xn=input('Enter the sequence x(n)')
ln=length(xn);
xk=zeros(1,ln);
ixk=zeros(1,ln);
i=sqrt(-1);
for k=0:ln-1
    for n=0:ln-1
        xk(k+1)=xk(k+1)+(xn(n+1)*exp((-i)*2*pi*k*n/ln));
    end
end
t=0:ln-1;
subplot(221);
stem(t,xn);
ylabel('Amplitude');
xlabel('Time Index');
magnitude=abs(xk);
t=0:ln-1;
subplot(222);
stem(t,magnitude);
ylabel('Amplitude');
xlabel('K');
phase=angle(xk);
subplot(223);
stem(t,phase);
ylabel('phase');
xlabel('K');
for n=0:ln-1
    for k=0:ln-2
        ixk(n+1)=ixk(n+1)+(xk(k+1)*exp(i*2*pi*k*n/ln));
    end
end
ixk=ixk./ln;
t=0:ln-1;
subplot(224);
stem(t,ixk);
ylabel('Amplitude');
xlabel('Time Index');
