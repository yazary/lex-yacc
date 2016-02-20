%{
// Simple lex and yacc program - From Lex And Yacc tutorial
// By Tom Niemann
#include <stdlib.h>
void yerror(char *);
#include "y.tab.h"
%}

%%

[0-9]+		{
				yylval = atoi(yytext);
				return INTEGER;
			}

[-+*%/\n]		{
				return *yytext;
			}

[ \t]		;

.			yyerror("Invalid Character");

%%

int yywrap(void){
	return 1;
}
