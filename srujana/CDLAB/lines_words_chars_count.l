%option noyywrap

/*2)Lex program No of lines,words,characters in given input*/


%{
#include<stdio.h>
int lines;
int words;
int chars;int spaces;

%}
%%
[\n] {
	lines++;}
[ ] { spaces++;}
[a-zA-Z]+ {
		words++;
		chars+=yyleng;}

%%
main(){
yylex();
printf("chars-%d",chars);
printf("spaces-%d",spaces);
printf("lines-%d",lines);
printf("words-%d",words);
}
