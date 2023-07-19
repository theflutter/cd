/*4)Lex program To list out all words of length 3 starting with 'a'.*/
%option noyywrap
%{
#include<stdio.h>
%}
%%
[a-zA-Z]* {
	if(yyleng==3){
		if(yytext[0]=='a')
		printf("valid %s",yytext);
		else
		printf("invalid not begining with a");
	}
	else
	{printf("having length>3");}
	
}


%%
int main(){
yylex();

return 0;
}
