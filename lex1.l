//write a lex program to identify if a string is a valiod keyword or not and also check if any number is being given as input. Lex program should be able to print that as a number

%{
#include<stdio.h>
%}
%%
if|else {printf("%s is keyword",yytext);}
[0-9]+ {printf("%s is number",yytext);}
%%
int main(){
printf("Enter String");
yylex();
}
int yywrap(){
return 1;
}
