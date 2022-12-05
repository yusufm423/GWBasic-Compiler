%{
	#include<stdio.h>
	#include <stdio.h>
	#include "y.tab.h"
	void yyerror(char *); 
%}

%%

"REM"                         {printf("%s\t: Keyword \n",yytext); return REM;}
"PRINT" 			   		{printf("%s\t: Keyword \n",yytext); return PRINT;}
"CLS"                            {printf("%s\t: Keyword \n",yytext);return CLS;}
"DIM"                            {printf("%s\t: Keyword \n",yytext);return DIM;}
"READ"                            {printf("%s\t: Keyword \n",yytext);return READ;}
"DATA"                            {printf("%s\t: Keyword \n",yytext);return DATA;}
"RUN"                            {printf("%s\t: Keyword \n",yytext);return RUN;}

"WHILE"                           {printf("%s\t: Keyword \n",yytext);return WHILE;}
"WEND"                            {printf("%s\t: Keyword \n",yytext);return WEND;}
"FOR"                             {printf("%s\t: Keyword \n",yytext);return FOR;}
"TO"                              {printf("%s\t: Keyword \n",yytext);return TO;}
"NEXT"                            {printf("%s\t: Keyword \n",yytext);return NEXT;}
"IF"                              {printf("%s\t: Keyword \n",yytext);return IF;}
"THEN"                            {printf("%s\t: Keyword \n",yytext);return THEN;}
"ELSE"                            {printf("%s\t: Keyword \n",yytext);return ELSE;}
"GOTO"                            {printf("%s\t: Keyword \n",yytext);return GOTO;}
"INPUT"                         {printf("%s\t: Keyword \n",yytext);return INPUT;}

"NOT"			           {printf("%s\t: Logicalop \n",yytext);return NOT;}
"AND"			           {printf("%s\t: Logicalop \n",yytext);return AND;}
"OR"			           {printf("%s\t: Logicalop \n",yytext);return OR;}
"XOR"			           {printf("%s\t: Logicalop \n",yytext);return XOR;}
"EQV"			           {printf("%s\t: Logicalop \n",yytext);return EQV;}
"IMP"			           {printf("%s\t: Logicalop \n",yytext);return IMP;}

"<="			           {printf("%s\t: Relop \n",yytext);return LTE;}
">="			           {printf("%s\t: Relop \n",yytext);return GTE;}
"<>"		                   {printf("%s\t: Inequality \n",yytext);return NE;}
"<"			   				 {printf("%s\t: Relop \n",yytext);return LT;}
">"			          		 {printf("%s\t: Relop \n",yytext);return GT;}
"="			          		 {printf("%s\t: Equality \n",yytext);return EQ;}
"MOD"			           {printf("%s\t: modular op \n",yytext);return MOD;}

[\n]		{return *yytext;}
[,;+/*().{}^-] 			{printf("%s\t: operators \n",yytext);return *yytext;}

[a-zA-Z][a-zA-Z0-9]* 		   {printf("%s\t: Identifier \n",yytext);return IDENTIFIER;}
[0-9]+				   		{printf("%s\t: Numerical constant \n",yytext);return INTEGER;}
[0-9]+[.][0-9]+		  		 {printf("%s\t: Floating point number \n",yytext);return FLOAT;}
\"[^"\n]*["\n]		  		 {printf("%s\t: String literal \n",yytext);return STRING;} 
[ \t\n]+ 				   	;
.				   			{return yytext[0];}
[a-zA-Z_][a-zA-Z0-9_]*[$]	{printf("%s\t: string variable \n",yytext);return STRINGV;}
[a-zA-Z_][a-zA-Z0-9_]*[%]	{printf("%s\t: Integer variable	\n",yytext);return INTEGERV;}
[a-zA-Z_][a-zA-Z0-9_]*[!]	{printf("%s\t: Single-precision variable \n",yytext);return SPV;}
[a-zA-Z_][a-zA-Z0-9_]*[#]	{printf("%s\t: Double-precision variable \n",yytext);return DBV;}
%%

int yywrap(void){
	return 1;
}
