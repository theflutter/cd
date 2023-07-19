%{
#include<stdio.h>
int i = 0, f = 0;
%}

%%

[0-9]+"."[0-9]+ {ECHO; printf(" is float\n");f++;}
[0-9]+ {ECHO; printf(" is int\n");i++;}

%%

int yywrap(){};

int main(){
yylex();
printf("float : %d int : %d",f,i);
return 0;}
