%option noyywrap
%{
	#include<stdio.h>
	#include "y.tab.h"
%}

%%
[0] { yylval=atoi(yytext); return num1;}
[1]  {yylval=atoi(yytext); return num1;}
[\n] {return 0;}
%%
