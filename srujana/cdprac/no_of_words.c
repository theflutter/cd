%option noyywrap
%{
#include<stdio.h>
int count=0;
%}
%%
[a-zA-Z]+ {count++;}
%%
int main(){
yylex();
printf("%d",count);
return 0;s
}

 
