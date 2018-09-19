% % Andy Jung
% % Due Date: September 13th
% % This file contains the 2nd assignment for our MATLAB class.

% % Chapter 1 Exercises

% 1.)

copper = 63.55

% 2.)

myage = 25
newage = (myage - 2)
finalage = (newage + 1)

% 3.)

namelengthmax

% 4.)

weightlbs = 175
weightoun = 2800

% 5.)

intmin
intmax

% 6.)

x = int32(190)

% 11.)

pounds = 175
pounds/2.2
kilos = pounds/2.2

% 12.)

ftemp = 72
ctemp = (ftemp-32)*(5/9)

% 13.)

speedmph = 80
speedmeterssec = speedmph*.44704

% 14.)
sind(90)
sin(1.5708)

%15.)

rone=2
rtwo=3
rthree=4

combinedresistance = (1)/((1/rone)+(1/rtwo)+(1/rthree))

%22.)

'E'&&'e'

% Uppercase letters E is equal to lowercase e.

%24.)

'b' >= 'c' - 1
%true

3 == 2 + 1
%True

(3 == 2) + 1
%1
xor(5 < 6, 8 > 4)
%False

%25.)
x = 6
y = 8

%26.)

(3*10^5)==3e5

%27.)

log10(10000) == 4

%%Chapter 2 Exercises

%1.)

vec = 2:7
vec = 1.1:.2:1.7
vec = 8:-2:2

%2.)

linspace(0,2*pi,50)

%3.)

linspace(2,3,6)

%4.)

mat=[-5:-1]
linspace(-5,-1,5)
mat=[5:2:9]
linspace(5,9,3)
mat=[8:-2:4]
linspace(8,4,3)

%6.)

mat=[-1:.5:1]'

%7.)

a = [1:100]
a(1:2:end)
a(2:2:end)

%8.)

mat = [7:10;12:-2:6]
mat(1,3)
mat(2,:)
mat(:,1:2)

%9.)

mat = [1 2 3 4;5 6 7 8]

%10.)

mat=[1:4;2:5]

%12.)
rows = randi([1,5],1)
cols = randi([1,5],1)
zeros = (2,3)

%23.)

sum(3+5+7+9+11)

%26.)

numerator=[3 5 7 9]
denominator=[1 2 3 4]
sum(numerator./denominator)

%30.)

randomvec = randi([-10,10],1,5)
nrandvec=randomvec-3
sum(nrandvec > 0)
abs(nrandvec)
max(nrandvec)

%31.)

newmatrix = randi([1,20],3,5)
max(newmatrix)
max(rot90(newmatrix))
max(max(newmatrix))

%Chapter 3 Exercises

% 1.)

ri = 10
ro = 15
volume=((4*pi)/(3))*(ro^3-ri^3)

%4.)

vector = input('Enter a vector: ')

%6.)

fprint('12345.6789\n')
%This prints the number on a new line
fprintf('%10.4f\n', 12345.6789)
%This will print up to 10 numbers with 4 decimal places
fprintf('%10.2f\n', 12345.6789)
%This will print up to 10 numbers with 2 decimal places
fprintf('%6.4f\n', 12345.6789)
%This will print up to 6 numbers with 4 decimal places
fprintf('%2.4f\n', 12345.6789)
%This will print up to 2 numbers with 4 decimal places

%8.)

%Flowrate
frinms = input('Enter the flow rate in m^3/s:')
fprintf('A flow rate of%.3f cubic meters per second\n',frinms)
fprintf('is equivalent to %3f cubic feet per second\n',frinms/.028)

%13.)

x = input('Enter a value for x:')
y = input('Enter a value for y:')
z = input('Enter a value for z:')
vector = [x y z]
u = (vector)/sqrt((x^2)+(y^2)+(z^2))