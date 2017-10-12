/****************************************************************************
*                     U N R E G I S T E R E D   C O P Y
* 
* You are on day 14 of your 30 day trial period.
* 
* This file was produced by an UNREGISTERED COPY of Parser Generator. It is
* for evaluation purposes only. If you continue to use Parser Generator 30
* days after installation then you are required to purchase a license. For
* more information see the online help or go to the Bumble-Bee Software
* homepage at:
* 
* http://www.bumblebeesoftware.com
* 
* This notice must remain present in the file. It cannot be removed.
****************************************************************************/

/****************************************************************************
* mylexer.cpp
* C++ source file generated from mylexer.l.
* 
* Date: 10/12/17
* Time: 19:00:56
* 
* ALex Version: 2.07
****************************************************************************/

#include <yyclex.h>

// namespaces
#ifdef YYSTDCPPLIB
using namespace std;
#endif
#ifdef YYNAMESPACE
using namespace yl;
#endif

#line 1 ".\\mylexer.l"

/****************************************************************************
mylexer.l
ParserWizard generated Lex file.

Date: 2017年10月9日
****************************************************************************/
#include "myparser.h"
#include <cstring>
#include <string>
#include <iostream>

#line 51 "mylexer.cpp"
// repeated because of possible precompiled header
#include <yyclex.h>

// namespaces
#ifdef YYSTDCPPLIB
using namespace std;
#endif
#ifdef YYNAMESPACE
using namespace yl;
#endif

#include ".\mylexer.h"

#line 21 ".\\mylexer.l"

struct TokenAndLexme;
void addToken(char*token,char*lexme);
int getIndex(char*lexme);
void printToken();
int id_state = -1;

#line 73 "mylexer.cpp"
/////////////////////////////////////////////////////////////////////////////
// constructor

YYLEXERNAME::YYLEXERNAME()
{
	yytables();
#line 34 ".\\mylexer.l"

	// place any extra cleanup code here

#line 84 "mylexer.cpp"
}

/////////////////////////////////////////////////////////////////////////////
// destructor

YYLEXERNAME::~YYLEXERNAME()
{
}

#ifndef YYTEXT_SIZE
#define YYTEXT_SIZE 100
#endif
#ifndef YYUNPUT_SIZE
#define YYUNPUT_SIZE YYTEXT_SIZE
#endif
#ifndef YYTEXT_MAX
#define YYTEXT_MAX 0
#endif
#ifndef YYUNPUT_MAX
#define YYUNPUT_MAX YYTEXT_MAX
#endif

/****************************************************************************
* N O T E
* 
* If the compiler generates a YYLEXERNAME error then you have not declared
* the name of the lexical analyser. The easiest way to do this is to use a
* name declaration. This is placed in the declarations section of your Lex
* source file and is introduced with the %name keyword. For instance, the
* following name declaration declares the lexer mylexer:
* 
* %name mylexer
* 
* For more information see help.
****************************************************************************/

// backwards compatability with lex
#ifdef input
int YYLEXERNAME::yyinput()
{
	return input();
}
#else
#define input yyinput
#endif

#ifdef output
void YYLEXERNAME::yyoutput(int ch)
{
	output(ch);
}
#else
#define output yyoutput
#endif

#ifdef unput
void YYLEXERNAME::yyunput(int ch)
{
	unput(ch);
}
#else
#define unput yyunput
#endif

#ifndef YYNBORLANDWARN
#ifdef __BORLANDC__
#pragma warn -rch		// <warning: unreachable code> off
#endif
#endif

int YYLEXERNAME::yyaction(int action)
{
#line 47 ".\\mylexer.l"

	// extract yylval for use later on in actions
	YYSTYPE YYFAR& yylval = *(YYSTYPE YYFAR*)yyparserptr->yylvalptr;

#line 162 "mylexer.cpp"
	yyreturnflg = yytrue;
	switch (action) {
	case 1:
		{
#line 52 ".\\mylexer.l"
 addToken("INT",yytext); 
#line 169 "mylexer.cpp"
		}
		break;
	case 2:
		{
#line 53 ".\\mylexer.l"
 addToken("CHAR",yytext); 
#line 176 "mylexer.cpp"
		}
		break;
	case 3:
		{
#line 54 ".\\mylexer.l"
 addToken("STRING",yytext); 
#line 183 "mylexer.cpp"
		}
		break;
	case 4:
		{
#line 56 ".\\mylexer.l"
addToken("FLOAT",yytext);
#line 190 "mylexer.cpp"
		}
		break;
	case 5:
		{
#line 57 ".\\mylexer.l"
addToken("VOID",yytext);
#line 197 "mylexer.cpp"
		}
		break;
	case 6:
		{
#line 58 ".\\mylexer.l"
 addToken("IF",yytext); 
#line 204 "mylexer.cpp"
		}
		break;
	case 7:
		{
#line 59 ".\\mylexer.l"
 addToken("ELSE",yytext); 
#line 211 "mylexer.cpp"
		}
		break;
	case 8:
		{
#line 60 ".\\mylexer.l"
 addToken("WHILE",yytext); 
#line 218 "mylexer.cpp"
		}
		break;
	case 9:
		{
#line 61 ".\\mylexer.l"
 addToken("FOR",yytext); 
#line 225 "mylexer.cpp"
		}
		break;
	case 10:
		{
#line 62 ".\\mylexer.l"
 addToken("DO",yytext); 
#line 232 "mylexer.cpp"
		}
		break;
	case 11:
		{
#line 64 ".\\mylexer.l"
 addToken("PLUS",yytext); 
#line 239 "mylexer.cpp"
		}
		break;
	case 12:
		{
#line 65 ".\\mylexer.l"
 addToken("MINUS",yytext); 
#line 246 "mylexer.cpp"
		}
		break;
	case 13:
		{
#line 66 ".\\mylexer.l"
 addToken("MUL",yytext); 
#line 253 "mylexer.cpp"
		}
		break;
	case 14:
		{
#line 67 ".\\mylexer.l"
 addToken("DIV",yytext); 
#line 260 "mylexer.cpp"
		}
		break;
	case 15:
		{
#line 68 ".\\mylexer.l"
 addToken("POW",yytext); 
#line 267 "mylexer.cpp"
		}
		break;
	case 16:
		{
#line 69 ".\\mylexer.l"
 addToken("EXP",yytext); 
#line 274 "mylexer.cpp"
		}
		break;
	case 17:
		{
#line 70 ".\\mylexer.l"
 addToken("EQU",yytext); 
#line 281 "mylexer.cpp"
		}
		break;
	case 18:
		{
#line 71 ".\\mylexer.l"
 addToken("SADD",yytext); 
#line 288 "mylexer.cpp"
		}
		break;
	case 19:
		{
#line 72 ".\\mylexer.l"
 addToken("SSUB",yytext); 
#line 295 "mylexer.cpp"
		}
		break;
	case 20:
		{
#line 73 ".\\mylexer.l"
 addToken("OR",yytext); 
#line 302 "mylexer.cpp"
		}
		break;
	case 21:
		{
#line 74 ".\\mylexer.l"
 addToken("AND",yytext); 
#line 309 "mylexer.cpp"
		}
		break;
	case 22:
		{
#line 75 ".\\mylexer.l"
 addToken("NOT",yytext); 
#line 316 "mylexer.cpp"
		}
		break;
	case 23:
		{
#line 76 ".\\mylexer.l"
 addToken("ASSIGN",yytext); 
#line 323 "mylexer.cpp"
		}
		break;
	case 24:
		{
#line 77 ".\\mylexer.l"
 addToken("LBRACE",yytext); 
#line 330 "mylexer.cpp"
		}
		break;
	case 25:
		{
#line 78 ".\\mylexer.l"
 addToken("RBRACE",yytext); 
#line 337 "mylexer.cpp"
		}
		break;
	case 26:
		{
#line 79 ".\\mylexer.l"
 addToken("LBRACKET",yytext); 
#line 344 "mylexer.cpp"
		}
		break;
	case 27:
		{
#line 80 ".\\mylexer.l"
 addToken("RBRACKET",yytext); 
#line 351 "mylexer.cpp"
		}
		break;
	case 28:
		{
#line 81 ".\\mylexer.l"
 addToken("COLON",yytext); 
#line 358 "mylexer.cpp"
		}
		break;
	case 29:
		{
#line 82 ".\\mylexer.l"
 addToken("POINTER",yytext); 
#line 365 "mylexer.cpp"
		}
		break;
	case 30:
		{
#line 83 ".\\mylexer.l"
 addToken("REF",yytext); 
#line 372 "mylexer.cpp"
		}
		break;
	case 31:
		{
#line 84 ".\\mylexer.l"
 addToken("QUOTE",yytext); 
#line 379 "mylexer.cpp"
		}
		break;
	case 32:
		{
#line 85 ".\\mylexer.l"
 addToken("COMMA",yytext); 
#line 386 "mylexer.cpp"
		}
		break;
	case 33:
		{
#line 86 ".\\mylexer.l"
 addToken("SEMICOLON",yytext); 
#line 393 "mylexer.cpp"
		}
		break;
	case 34:
		{
#line 87 ".\\mylexer.l"
 addToken("LESS",yytext);  
#line 400 "mylexer.cpp"
		}
		break;
	case 35:
		{
#line 88 ".\\mylexer.l"
 addToken("MORE",yytext);  
#line 407 "mylexer.cpp"
		}
		break;
	case 36:
		{
#line 89 ".\\mylexer.l"
 addToken("OUTPUT",yytext);  
#line 414 "mylexer.cpp"
		}
		break;
	case 37:
		{
#line 90 ".\\mylexer.l"
 addToken("INPUT",yytext);  
#line 421 "mylexer.cpp"
		}
		break;
	case 38:
		{
#line 91 ".\\mylexer.l"
 addToken("DOT",yytext);  
#line 428 "mylexer.cpp"
		}
		break;
	case 39:
		{
#line 92 ".\\mylexer.l"
 addToken("LSQBRACKET",yytext);
#line 435 "mylexer.cpp"
		}
		break;
	case 40:
		{
#line 93 ".\\mylexer.l"
 addToken("RSQBRACKET",yytext);
#line 442 "mylexer.cpp"
		}
		break;
	case 41:
		{
#line 96 ".\\mylexer.l"
;
#line 449 "mylexer.cpp"
		}
		break;
	case 42:
		{
#line 98 ".\\mylexer.l"
 addToken("LITERAL",yytext); 
#line 456 "mylexer.cpp"
		}
		break;
	case 43:
		{
#line 99 ".\\mylexer.l"
 addToken("DIGIT",yytext); 
#line 463 "mylexer.cpp"
		}
		break;
	case 44:
		{
#line 100 ".\\mylexer.l"
 addToken("ID",yytext); 
#line 470 "mylexer.cpp"
		}
		break;
	case 45:
		{
#line 102 ".\\mylexer.l"
;
#line 477 "mylexer.cpp"
		}
		break;
	default:
		yyassert(0);
		break;
	}
	yyreturnflg = yyfalse;
	return 0;
}

#ifndef YYNBORLANDWARN
#ifdef __BORLANDC__
#pragma warn .rch		// <warning: unreachable code> to the old state
#endif
#endif

void YYLEXERNAME::yytables()
{
	yystext_size = YYTEXT_SIZE;
	yysunput_size = YYUNPUT_SIZE;
	yytext_max = YYTEXT_MAX;
	yyunput_max = YYUNPUT_MAX;

	static const yymatch_t YYNEARFAR YYBASED_CODE match[] = {
		0
	};
	yymatch = match;

	yytransitionmax = 247;
	static const yytransition_t YYNEARFAR YYBASED_CODE transition[] = {
		{ 0, 0 },
		{ 3, 1 },
		{ 4, 1 },
		{ 44, 14 },
		{ 46, 17 },
		{ 3, 3 },
		{ 17, 17 },
		{ 17, 17 },
		{ 17, 17 },
		{ 17, 17 },
		{ 17, 17 },
		{ 17, 17 },
		{ 17, 17 },
		{ 17, 17 },
		{ 17, 17 },
		{ 17, 17 },
		{ 54, 30 },
		{ 43, 12 },
		{ 40, 7 },
		{ 55, 30 },
		{ 45, 14 },
		{ 56, 31 },
		{ 58, 32 },
		{ 59, 33 },
		{ 3, 1 },
		{ 5, 1 },
		{ 6, 1 },
		{ 47, 17 },
		{ 3, 3 },
		{ 57, 31 },
		{ 7, 1 },
		{ 8, 1 },
		{ 9, 1 },
		{ 10, 1 },
		{ 11, 1 },
		{ 12, 1 },
		{ 13, 1 },
		{ 14, 1 },
		{ 15, 1 },
		{ 16, 1 },
		{ 75, 75 },
		{ 75, 75 },
		{ 75, 75 },
		{ 75, 75 },
		{ 75, 75 },
		{ 75, 75 },
		{ 75, 75 },
		{ 75, 75 },
		{ 75, 75 },
		{ 75, 75 },
		{ 18, 1 },
		{ 19, 1 },
		{ 20, 1 },
		{ 21, 1 },
		{ 22, 1 },
		{ 63, 47 },
		{ 60, 34 },
		{ 63, 47 },
		{ 0, 47 },
		{ 47, 17 },
		{ 75, 74 },
		{ 23, 1 },
		{ 74, 74 },
		{ 74, 74 },
		{ 74, 74 },
		{ 74, 74 },
		{ 74, 74 },
		{ 74, 74 },
		{ 74, 74 },
		{ 74, 74 },
		{ 74, 74 },
		{ 74, 74 },
		{ 63, 62 },
		{ 61, 36 },
		{ 63, 62 },
		{ 39, 38 },
		{ 39, 41 },
		{ 42, 11 },
		{ 48, 20 },
		{ 65, 51 },
		{ 66, 52 },
		{ 67, 53 },
		{ 68, 54 },
		{ 24, 1 },
		{ 69, 55 },
		{ 25, 1 },
		{ 26, 1 },
		{ 70, 57 },
		{ 71, 58 },
		{ 72, 59 },
		{ 73, 60 },
		{ 27, 1 },
		{ 28, 1 },
		{ 29, 1 },
		{ 30, 1 },
		{ 49, 21 },
		{ 0, 63 },
		{ 31, 1 },
		{ 50, 22 },
		{ 76, 65 },
		{ 77, 66 },
		{ 79, 68 },
		{ 78, 67 },
		{ 80, 71 },
		{ 81, 72 },
		{ 82, 73 },
		{ 51, 27 },
		{ 32, 1 },
		{ 52, 28 },
		{ 83, 77 },
		{ 33, 1 },
		{ 34, 1 },
		{ 84, 79 },
		{ 85, 80 },
		{ 86, 82 },
		{ 35, 1 },
		{ 36, 1 },
		{ 37, 1 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 84, 83 },
		{ 87, 85 },
		{ 53, 29 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 23, 87 },
		{ 0, 0 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 23, 87 },
		{ 46, 46 },
		{ 46, 46 },
		{ 46, 46 },
		{ 46, 46 },
		{ 46, 46 },
		{ 46, 46 },
		{ 46, 46 },
		{ 46, 46 },
		{ 46, 46 },
		{ 46, 46 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 75, 64 },
		{ 62, 46 },
		{ 64, 64 },
		{ 64, 64 },
		{ 64, 64 },
		{ 64, 64 },
		{ 64, 64 },
		{ 64, 64 },
		{ 64, 64 },
		{ 64, 64 },
		{ 64, 64 },
		{ 64, 64 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 0, 0 },
		{ 62, 46 }
	};
	yytransition = transition;

	static const yystate_t YYNEARFAR YYBASED_CODE state[] = {
		{ 0, 0, 0 },
		{ 17, -8, 0 },
		{ 1, 0, 0 },
		{ 0, -4, 41 },
		{ 0, 0, 45 },
		{ 0, 0, 22 },
		{ 38, 0, 31 },
		{ 0, -20, 30 },
		{ 41, 0, 31 },
		{ 0, 0, 26 },
		{ 0, 0, 27 },
		{ 0, 35, 13 },
		{ 0, -26, 11 },
		{ 0, 0, 32 },
		{ 0, -42, 12 },
		{ 0, 0, 38 },
		{ 0, 0, 14 },
		{ 87, -42, 43 },
		{ 0, 0, 28 },
		{ 0, 0, 33 },
		{ 0, 18, 34 },
		{ 0, 34, 23 },
		{ 0, 36, 35 },
		{ 87, 0, 44 },
		{ 0, 0, 39 },
		{ 0, 0, 40 },
		{ 0, 0, 15 },
		{ 87, 2, 44 },
		{ 87, -3, 44 },
		{ 87, 22, 44 },
		{ 87, -92, 44 },
		{ 87, -81, 44 },
		{ 87, -94, 44 },
		{ 87, -88, 44 },
		{ 87, -48, 44 },
		{ 0, 0, 24 },
		{ 0, -51, 0 },
		{ 0, 0, 25 },
		{ -38, 41, 0 },
		{ 0, 0, 42 },
		{ 0, 0, 21 },
		{ -41, 37, 0 },
		{ 0, 0, 16 },
		{ 0, 0, 18 },
		{ 0, 0, 19 },
		{ 0, 0, 29 },
		{ 0, 145, 43 },
		{ 64, 12, 44 },
		{ 0, 0, 36 },
		{ 0, 0, 17 },
		{ 0, 0, 37 },
		{ 87, -18, 44 },
		{ 87, -37, 10 },
		{ 87, -34, 44 },
		{ 87, -29, 44 },
		{ 87, -30, 44 },
		{ 87, 0, 6 },
		{ 87, -29, 44 },
		{ 87, -26, 44 },
		{ 87, -16, 44 },
		{ 87, -15, 44 },
		{ 0, 0, 20 },
		{ 63, 29, 0 },
		{ 74, 50, 0 },
		{ 87, 167, 43 },
		{ 87, -15, 44 },
		{ 87, 2, 44 },
		{ 87, 1, 44 },
		{ 87, 4, 44 },
		{ 87, 0, 9 },
		{ 87, 0, 1 },
		{ 87, -2, 44 },
		{ 87, 4, 44 },
		{ 87, -3, 44 },
		{ 0, 14, 43 },
		{ 0, -8, 43 },
		{ 87, 0, 2 },
		{ 87, 1, 44 },
		{ 87, 0, 7 },
		{ 87, -4, 44 },
		{ 87, 3, 44 },
		{ 87, 0, 5 },
		{ 87, 13, 44 },
		{ 87, 27, 44 },
		{ 87, 0, 4 },
		{ 87, 26, 44 },
		{ 87, 0, 8 },
		{ 0, 70, 3 }
	};
	yystate = state;

	static const yybackup_t YYNEARFAR YYBASED_CODE backup[] = {
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0
	};
	yybackup = backup;
}
#line 105 ".\\mylexer.l"


/////////////////////////////////////////////////////////////////////////////
// programs section
//定义符号表的结构
struct TokenAndLexme{
    char * token;
    char * lexme;
    int index;
    TokenAndLexme*next;
};
TokenAndLexme * token_head = new TokenAndLexme();
//往符号表中添加符号
void addToken(char* token, char* lexme){
    int index = getIndex(lexme);
    if(index == -1 && token == "ID"){
        index = ++id_state;
    }
    TokenAndLexme*temp_token = new TokenAndLexme();
    temp_token->token = new char[200];
    temp_token->lexme = new char[200];
    strcpy_s(temp_token->token,200,token);
    strcpy_s(temp_token->lexme,200,lexme);
    temp_token->index = index;
    temp_token->next = token_head;
    token_head = temp_token;
    printf("%-10s\t%-20s\t",temp_token->token,temp_token->lexme);
    if(index != -1){
        printf("%-10d\n",index);
    }
    else{
	    printf("\n");
    }
}
//获取该词素在符号表中的index
int getIndex(char*lexme){
    TokenAndLexme*current_token = token_head;
    while(current_token->next!=NULL){
        if( strcmp(current_token->lexme,lexme) == 0 ){
            return current_token->index;
        }
        current_token = current_token->next;
      }
    return -1;
}
//打印符号表的内容
void printToken(){
    TokenAndLexme* current_token = token_head;
    while(current_token->next!= NULL){
        printf("%-10s\t%-20s\t",current_token->token,current_token->lexme);
        if(current_token->index != -1){
            printf("%-10d\n",current_token->index);
        }
        else{
            printf("\n");
        }
        current_token = current_token->next;
    }
}
