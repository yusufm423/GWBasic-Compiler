%{
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
void yyerror(char *s);
%}

%token IDENTIFIER REM PRINT CLS DIM READ DATA RUN
%token WHILE WEND FOR TO NEXT IF ELSE THEN GOTO INPUT
%token NOT AND OR XOR EQV IMP
%token LTE GTE NE LT GT EQ MOD 
%token INTEGER FLOAT STRING STRINGV INTEGERV SPV DBV

%nonassoc IFX
%nonassoc ELSE
%left GTE LTE EQ NE GT LT
%left '+' '-'
%left '*' '/'

%%
program:
 stmts   
 ;

stmts:
  stmts stmt 
 | stmt
 ; 

stmt: 
  expr '\n'
 | PRINT expr '\n'
 | WHILE expr '\n' stmts WEND
 | INPUT expr ';' IDENTIFIER '\n'
 | FOR IDENTIFIER EQ expr TO expr '\n' stmts NEXT IDENTIFIER '\n'
 | stmt_list RUN '\n'
 | IF expr THEN stmt stmt1
  ;

stmt1: ELSE stmt
 |'\n'
  ;

 stmt_list: stmt_list INTEGER stmt
 | INTEGER stmt
 ; 

expr:
   INTEGER             
 | IDENTIFIER         
 | STRING
 | expr '+' expr
 | expr '-' expr     
 | expr '*' expr      
 | expr '/' expr     
 | expr GT expr     
 | expr LT expr     
 | expr GTE expr      
 | expr LTE expr   
 | expr NE expr       
 | expr EQ expr   
 ; 
 
%%

void yyerror(char *s) {
 printf("%s\n", s);
}

void main()
{
printf("enter expr\n");
yyparse();
}
