%option noyywrap
%{
#include <stdio.h>
void yyerror(char* s);
#include "infix_postfix.tab.h"
//#include "y.tab.c"

%}

%%
[0-9]+ {yylval=atoi(yytext);return INTEGER;}

[ \t] ; /* skip whitespace */
[+ *] {return (yytext[0]);} ;
\n   return 0;

%%
