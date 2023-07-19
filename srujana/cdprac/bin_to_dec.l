%option noyywrap
%{
#include "y.tab.h"

%}
%%
[01] {yylval=atoi(yytext);return NUM;}
. ;
[\n] {return 0;}
%%

