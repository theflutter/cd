%option noyywrap
%{
#include "paren_check.tab.h"
%}
%%
[a-z]+ {return id;}
[()] {return yytext[0];}
[a-z]+ {}
[\n] {return 0;}
. ;

%%

