%option noyywrap
%{  
	#include <stdio.h>
%} 

DIGITS [0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F]
start [0]
x [x]

%% 
{start}{x}({DIGITS})+ {printf("Hexadecimal");}
.*	{printf("not Hexadecimal");}
%% 

int main(){ 
	yylex(); 
	printf("end\n");
	return 0; 
} 
