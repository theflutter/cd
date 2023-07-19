%{
#include "y.tab.h"
extern int yylval;
%}

%%
[0-9]+	{yylval=atoi(yytext); return ID;}
[\n \t]	yyterminate();
.		return yytext[0];
%%

int yywrap(void){
return 1;
}
