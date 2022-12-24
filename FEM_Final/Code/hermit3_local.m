function h = hermit3_local(I,k,j,x)

if  j == 0
    if k ==0
        h = (I(2)^2*(3*I(1)-I(2))-6*I(1)*I(2)*x+3*(I(1)+I(2))*x^2-2*x^3)/(I(1)-I(2))^3;
    else
        h = (I(1)^2*(I(1)-3*I(2))+6*I(1)*I(2)*x-3*(I(1)+I(2))*x^2+2*x^3)/(I(1)-I(2))^3;
    end
else
    if k ==1
        h = (-I(1)^2*I(2)+I(1)*(I(1)+2*I(2))*x-(2*I(1)+I(2))*x^2+x^3)/(I(1)-I(2))^2;
    else
        h = (-I(1)*I(2)^2+I(2)*(2*I(1)+I(2))*x-(I(1)+2*I(2))*x^2+x^3)/(I(1)-I(2))^2;
    end
end