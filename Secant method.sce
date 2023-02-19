//Date : 17/01/22
//Aim : To find the roots of an algebraic or transcendental equation using Secant method
clc
clear
function y = f(x)
    y = x*exp(x)-1
endfunction
x1=input("The first initial guess,x1 : ")
x2=input("The second initial guess,x2 : ")
Tol=0.0001
m=abs(x2-x1)
while(m>Tol)
    x_new=x2-(((x2-x1)*f(x2))/(f(x2)-f(x1)))
    m=abs(x_new-x2)
    x1=x2
    x2=x_new
    disp("The intermediate roots are,x_new : ",x_new)
    //m=abs(x2-x1)
end
disp("The root of the equation is : ",x_new)


