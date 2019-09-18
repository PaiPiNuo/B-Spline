%px=[50,90,150,120,220,300,380,320,450,500];
%py=[100,60,50,150,240,100,100,200,250,130];
px=[50,90,150,120];
py=[100,60,50,150];
plot(px,py,'r*');
hold on;
dt=0.02;
for k=1:(size(px,2)-3)
   a0=(px(k)+4*px(k+1)+px(k+2))/6;
   a1=(px(k+2)-px(k))/2;
   a2=(px(k)-2*px(k+1)+px(k+2))/2;
   a3=-(px(k)-3*px(k+1)+3*px(k+2)-px(k+3))/6;
   b0=(py(k)+4*py(k+1)+py(k+2))/6;
   b1=(py(k+2)-py(k))/2;
   b2=(py(k)-2*py(k+1)+py(k+2))/2;
   b3=-(py(k)-3*py(k+1)+3*py(k+2)-py(k+3))/6;
   for i=0:50
        t=i*dt;
        x=a0+a1*t+a2*t*t+a3*t*t*t;
        y=b0+b1*t+b2*t*t+b3*t*t*t;
        plot(x,y,'r.');
        hold on;
    end
end