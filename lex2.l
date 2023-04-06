%{
    int i = 0;
    #include<stdio.h>
%}
%%
if|else|break {
    i = i + 1;
    printf("%s is keyword\n",yytext);
}
display{printf("%d",i);}
[0-9]+ {printf("%s is number\n",yytext);}
%%
int main(){
printf("Enter String ");
yylex();
}
int yywrap(){
return 1;
}
