%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 
filename='Class4_XiaotongLu.txt';
fid=fopen(filename,'w');
fprintf(fid,'Random numbers 1\r\n')

for i=1:10
Rand=rand(1,13);
Randstr=num2str(Rand);
fprintf(fid,"%s\n",Randstr);
end
fprintf(fid,'Random number 2\n')
for ii=1:9
       Rand2=rand(1,7);
       Randstr2=num2str(Rand2);
       fprintf(fid,"%s\n",Randstr2);
end
fid2=fopen(filename,'r');
for jj=1:2
    line1=fgetl(fid2)
end
var1=strsplit(line1);
for j=1:length(var1)
array(j)=str2num(var1{j});
end
array


% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 
function mm=assess(x)
Sum=sum(sum(x))
if Sum>=10
    mm=True
else
   mm=False
end
