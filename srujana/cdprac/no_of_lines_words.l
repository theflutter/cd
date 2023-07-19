%option noyywrap
%{
#include<stdio.h>
int word=0,line=0,cha=0;
%}
%%
[\n] {line++;}
[A-Za-z]+ {word++;cha=cha+yyleng;}

%%
int main(){
yylex();
printf("words %d char %d line %d",word,cha,line);
return 0;
}
