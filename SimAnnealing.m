%Method that performs simulated annealing algorithm 	
% SimAnnealing.m file 

	Ebest=0.0;
	BestSolb10=0;
	Currentxb2=X0; 
	fprintf('\nEvaluating ...\n');
    
	while(T2>0.000001)%Stopping criteria 
		for i = 200
		Xtempb10=bi2de(Currentxb2,6);
		x1b10=Xtempb10;
		Solution;
		E1=E;
		Neighbor;
		Xtempb10=bi2de(Currentxb2,6);
		x2b10=Xtempb10;
		Solution;
		E2=E;
		E_delta= E2-E1; 
		if ( x1b10>=0 & x1b10<=63 & x2b10<=63 & x2b10>=0)
            if(Ebest<E1)
                Ebest=E1;
                BestSolb10 = x1b10 ;   %%%
            elseif(Ebest<E2)
                Ebest=E2;
            	BestSolb10 = x2b10;        %%%%
            end % end if 
        end 
		Prob=0;
		ProbabilityFunc;
		if (E_delta<=0 || Prob >=0.7)
			if(E1<E2)
				Currentxb2([1 2 3 4 5 6])=de2bi(x2b10,6);   
            end % end if 
        end % end if 

            end % end for 

		Temperature;	
        
        end %end while 
        
	fprintf('\nThe optimal solution is x =');
    disp(fliplr(de2bi(BestSolb10,6)));
    fprintf('With f(x) = %d\n',Ebest);
% end SimAnnealing 