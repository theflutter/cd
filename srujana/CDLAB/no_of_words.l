%option noyywrap
%{
#include<stdio.h>
int count=0;
%}
%%
[A-Za-z]+ {
count++;

}
[\n] {return 0;}
%%
int main(){
yylex();
printf("count is %d",count);
return 0;
}
