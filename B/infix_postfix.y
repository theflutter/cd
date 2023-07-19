%{
#include <stdio.h>
%}

%token INTEGER '+'  '*'
%left '+'
%left '*'

%%
exp : exp '+' t  {printf("+ ");}
    | t {}
    ;
t   : t '*' f    {printf("* ");}
    | f {}
    ;
f   : INTEGER          {printf("%d ",$1);}
    ;

%%

int main(void)
{
    yyparse();
    return 0;
}

void yyerror(char *s)
{
    fprintf(stderr,"%s\n",s);
}
