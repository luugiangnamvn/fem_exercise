function h = hermit_3(O,i,j,y)

N = length(O)-2;
n = 1;  
if i == 0
    I = O(1:(i+1)*n+1); 
    if y <= I(n+1)
        h = hermit3_local(I,0,j,y);
    else
        h = 0;
    end
else if i == N+1
        I = O((i-1)*n+1:i*n+1);
        if y >= I(1) 
            h = hermit3_local(I,n,j,y);
        else
            h = 0;
        end
    else
        I0 = O((i-1)*n+1:i*n+1);
        I1 = O(i*n+1:(i+1)*n+1);
        if(y >= I0(1)&& y <= I0(n+1)) 
            h = hermit3_local(I0,n,j,y);end
        if(y > I1(1)&& y <= I1(n+1)) 
            h = hermit3_local(I1,0,j,y);end
        if(y < I0(1)|| y > I1(n+1)) 
            h = 0; end
    end
end

  
    
      
        
        
    