%option noyywrap
%{
    #include <stdio.h>
    #include "btod.tab.h"
    extern int yylval;
%}

%%
[0] {yylval=atoi(yytext);return Digit1;};
[1] {yylval=atoi(yytext);return Digit2;}
[\n] return 0;
%%
