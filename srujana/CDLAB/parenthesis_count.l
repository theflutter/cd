%{
#include "parenthesis_count.tab.h"
extern int yylval;
%}

%%

[\n]	yyterminate();

%%

int yywrap(void){
return 1;
}
