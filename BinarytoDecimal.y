%{
	#include<stdio.h>
	int yyerror(char *s);
	int k=0;
%}

%token num1

%% 
A: L {printf("Decimal number = %d",$1);}
L : L B {$$= 2*$1+$2;}
L : B  {$$=$1;}
B : num1 {$$ =$1;}
%% 

int main()
{
printf("\n Enter Binary Number:- ");
yyparse();
}
int yyerror(char *s)
{
printf("%s",s);
}