/*3)Lex program To count no of integers and floating point numbers appearing in the input*/
%option noyywrap
%{
#include<stdio.h>
int integer;
int floats;
%}
%%
[-]?[0-9]+ {
integer++;

}
[-]?[0-9]+[\.][0-9]+ {
floats++;
}
%%
int main(){
yylex();
printf("count of int is %d\n",integer);
printf("count of floats is %d",floats);
return 0;
}
