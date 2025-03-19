/* First run flex word-count.l */
/* Then compile with cc the outputed yy.c file linking it with the -lfl library */
/* Finally you can run the .out file passing any text and after quiting it will display the lines, words and chars */

%{
int chars = 0;
int words = 0;
int lines = 0;
%}

%%

[^ \t\n\r\f\v]+  { words++; chars += strlen(yytext); }

%%

main(int argc, char **argv)

{
    yylex();
    printf("%8d%8d%8d\n", lines, words, chars);
}