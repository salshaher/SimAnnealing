%Simulated Annealing assignment 

% main method 

		fprintf('\nstart ...\n');
		
		X0 = [0 1 0 0 1 0]; % initial value of solution 
		T1= 550;	 % initial value of scenario 1 temperature  
		T2= 150;     % initial value of scenario 2 temperature 

		SimAnnealing;
		
 % end main method 
   
 
 %{
 
Sample output for T2=150 :
 ________________________________
 
start ...

Evaluating ...

The optimal solution is x =     0     0     0     1     1     0

With f(x) = 676
 
 
 Sample output for T1=550 :
 ________________________________
 
start ...

Evaluating ...

The optimal solution is x =     0     0     0     1     1     0

With f(x) = 676
 
%}