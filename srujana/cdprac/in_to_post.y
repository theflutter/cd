%{
#include<stdio.h>
int yyerror(char *s);
%}

%token NUM
%left '+' '-'
%left '*' '/'

%%
S:E {$$=$1;printf("dbsn");}
E:E '+' T {printf("+");}
 |T {}
T:T '*' F {printf("*");}
 |NUM {printf("%d",yylval);}
F:NUM {printf("%d",yylval);}
 
%%
int main(){
	printf("Enter expr:");
	yyparse();
	return 0;
}

int yyerror(char *s){
printf("Invalid");
}
