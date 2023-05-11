%{
    #include<stdio.h>
    #include<string.h>
    int lineNum = 1;
%}

%%
.*(\n|$) {printf("%d: %s",lineNum++,yytext);}
.|\n {ECHO;}
%%

int main(int argc, char** argv){
    if (argc<2){
        printf("Input file not found");
        return 1;
    }

    FILE *fp = fopen(argv[1],"r");
    if(!fp){
        printf("Cannot open file");
        return 1;
    }

    yyin = fp;
    yylex();

    fclose(fp);

    return 0;
}

int yywrap(){
    return 1;
}