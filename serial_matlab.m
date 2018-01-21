instrfind

delete(instrfind);

size=400;%kac kere veri alacagimiz
time=5 %ne kadar saniye boyunca veri alacagimiz

sObject=serial('COM3','BaudRate',9600); %baud rate ve comu dogru ayarlamak onemli 
fopen(sObject);

x=1;

received=zeros(size,1);%serialdan gelen datayi koyacagimiz vektör
time_axis=linspace(0,time,size);%zaman ekseni 
delay_time=time_axis(2)- time_axis(1); %sonraki veriyi almak için bekleyeceðimiz süreyi önceki verileri baz alarak oluþturuyoruz


while(1)
    
    received(x)=str2num(fgets(sObject));%serialden string olarak gelen verilere sayiya donusturup vektor elemenýna atiyoruz
    
    %scaled= (data - min_data)/ (max_data- min_data)
    %halfGuageDisplay(scaled);%halfguagedisplay 0-1 arasý parametre aldýgý için veri ölçeklendirilip kullanýlmalý
    disp(received(x));
   
    
    x=x+1;
    pause(delay_time);
    
    if(x>=size)
        break;
    end
    
end

plot(time_axis,received);
    
