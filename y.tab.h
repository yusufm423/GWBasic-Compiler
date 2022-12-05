
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     IDENTIFIER = 258,
     REM = 259,
     PRINT = 260,
     CLS = 261,
     DIM = 262,
     READ = 263,
     DATA = 264,
     RUN = 265,
     WHILE = 266,
     WEND = 267,
     FOR = 268,
     TO = 269,
     NEXT = 270,
     IF = 271,
     ELSE = 272,
     THEN = 273,
     GOTO = 274,
     INPUT = 275,
     NOT = 276,
     AND = 277,
     OR = 278,
     XOR = 279,
     EQV = 280,
     IMP = 281,
     LTE = 282,
     GTE = 283,
     NE = 284,
     LT = 285,
     GT = 286,
     EQ = 287,
     MOD = 288,
     INTEGER = 289,
     FLOAT = 290,
     STRING = 291,
     STRINGV = 292,
     INTEGERV = 293,
     SPV = 294,
     DBV = 295,
     IFX = 296
   };
#endif
/* Tokens.  */
#define IDENTIFIER 258
#define REM 259
#define PRINT 260
#define CLS 261
#define DIM 262
#define READ 263
#define DATA 264
#define RUN 265
#define WHILE 266
#define WEND 267
#define FOR 268
#define TO 269
#define NEXT 270
#define IF 271
#define ELSE 272
#define THEN 273
#define GOTO 274
#define INPUT 275
#define NOT 276
#define AND 277
#define OR 278
#define XOR 279
#define EQV 280
#define IMP 281
#define LTE 282
#define GTE 283
#define NE 284
#define LT 285
#define GT 286
#define EQ 287
#define MOD 288
#define INTEGER 289
#define FLOAT 290
#define STRING 291
#define STRINGV 292
#define INTEGERV 293
#define SPV 294
#define DBV 295
#define IFX 296




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


