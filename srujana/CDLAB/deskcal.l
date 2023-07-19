%{
#include <stdio.h>
#include "y.tab.h"
extern int yylval;
%}     
%%
[0-9]+ { yylval = atoi(yytext);return INTEGER; }
[()+*\n] {return (*yytext);}
[ \t]   {} /* skip whitespace */
%%
int yywrap(void){

return 1;
}
