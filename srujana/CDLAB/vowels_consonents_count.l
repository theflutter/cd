%option noyywrap

/*1)Lex program to count no of vowels and consonents in given string*/


%{
#include<stdio.h>
int vowels;
int consonents;
%}
%%
[a|e|i|0|u|A|E|I|O|U] {
vowels++;
}
[a-zA-Z] {
consonents++;
}
[\n] {
printf("VOwels-%d",vowels);
printf("Consonents-%d",consonents);
return 0;
}
%%
main(){
yylex();
}
