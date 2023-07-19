%option noyywrap
%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
\/\/(.*) {};
\/\*(.*\n)*.*\*\/ {};
%%
void main(){
yyin=fopen("xy.c","r");
yyout=fopen("out.c","w");
yylex();

}
