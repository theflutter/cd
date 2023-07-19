%{

#include <stdio.h>
#include <stdlib.h>
void yyerror(char *s);
%}

%token ID
%left '+' '-'
%left '*' '/'


%%
S : E {printf("%d",$1);}
E : E'+'T {$$=$1+$2;}
E : T {$$=$1;}
T : T'*'F {$$=$1*$2;}
T : F {$$=$1;}
F : ID {$$=yylval;}



%%


int main()
{
	printf("Enter infix expression: ");
	yyparse();
	printf("\n");
	return 0;
}
void yyerror(char * s) {
              fprintf(stderr, "%s\n", s);
            }
      

