%{

#include <stdio.h>
#include <stdlib.h>
void yyerror(char *s);
%}

%token ID
%left '+' '-'
%left '*' '/'

%%

E : E'+'T{printf("+");}
E : T {}
T : T'*'F{printf("*");}
T : F{}
F : ID{printf("%d",yylval);}



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
      

