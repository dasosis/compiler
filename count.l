%{
    #include <stdio.h>
    int numspace = 0;
%}

%%
[ \t]+ {numspace++;}
\n {printf("Number of Spaces: %d\nNumber of Words : %d\n",numspace,numspace+1);numspace = 0;}
. {}
%%

int main(){
    printf("Enter a sentence : ");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}