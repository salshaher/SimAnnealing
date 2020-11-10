%Method that flips a bit (from 0 to 1 and vice versa) of the given vector x at a given index i
%Neighbor.m file
rng('shuffle')
Flip = randi([1, 6]);  % genetate a random integer between 0 and 5 
if ( Currentxb2(Flip)==1)
    Currentxb2([Flip]) = [0];
else 
   Currentxb2([Flip]) = [1];
end  % end if
