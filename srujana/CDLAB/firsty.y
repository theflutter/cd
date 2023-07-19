%{
#include<stdio.h>
int yylex();
%}

%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'
%%
A : E '\n' { printf("\nResult=%d\n",$2);}
|
;
E : E '+'E { $$ = $1 + $3; }
| E '-' E { $$ = $1 - $3; }
| E '*' E { $$ = $1 * $3; }
| E '/' E { $$ = $1 / $3; }  
| E '%' E { $$ = $1 % $3; }
| '(' E ')' { $$ = $2; }
| NUMBER { $$ = $1; }
;
%%
void main(){
printf("ENter Arithmetic Expression");
yyparse();
}
void yyerror(){
printf("\nENterred AE is invaid");
}
