%{
#include <stdlib.h>
void yerror(char *);
#include "y.tab.h"
%}

%%
[a-z] 		{
				yylval = *yytext - 'a';
				return VARIABLE;
			}
[0-9]+		{
				yylval = atoi(yytext);
				return INTEGER;
			}

[-+*%/()=\n]		{
				return *yytext;
			}

[ \t]		;

.			yyerror("Invalid Character");

%%

int yywrap(void){
	return 1;
}