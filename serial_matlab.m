instrfind

delete(instrfind);

size=80;%kac kere veri alacagimiz

sObject=serial('COM3','BaudRate',9600); %baud rate ve comu dogru ayarlamak onemli 
fopen(sObject);

x=1;

received=zeros(size,1);%serialdan gelen datayi koyacagimiz vekt�r
time_axis=zeros(1,size);%zaman ekseni 


while(1)
    time_axis(x)=str2num(fgets(sObject));
    received(x)=str2num(fgets(sObject));%serialden string olarak gelen verilere sayiya donusturup vektor elemen�na atiyoruz
    
    %scaled= (data - min_data)/ (max_data- min_data)
    %halfGuageDisplay(scaled);%halfguagedisplay 0-1 aras� parametre ald�g� i�in veri �l�eklendirilip kullan�lmal�
    disp(received(x));
   
    
    x=x+1;
    %pause(delay_time);
    
    if(x>=size)
        break;
    end
    
end

plot(time_axis,received);
    
