%{
/****************************************************************************
myparser.y
ParserWizard generated YACC file.

Date: 2017��10��9��
****************************************************************************/

#include "mylexer.h"
#include "myparser.h"
#include <string>
#include <cstdio>
#include <sstream>
#include <vector>
#include <cstdlib>
#include <map>
#include <cmath>
using namespace std;
%}

/////////////////////////////////////////////////////////////////////////////
// declarations section

// parser name
%name myparser

// class definition
{
	// place any extra class members here
	
}

// constructor
{
	// place any extra initialisation code here
}

// destructor
{
	// place any extra cleanup code here
}
// attribute type
%include {
	// place any extra class members here
	#ifndef YYSTYPE
	#define YYSTYPE int
	#define yylval (*reinterpret_cast<YYSTYPE*>(yylvalptr))
	#endif
}


// place any declarations here

%token INT  CHAR 
%token STRING  DOUBLE  FLOAT  VOID  IF 
%token ELSE  WHILE  FOR  DO  BOOL 
%token PLUS  MINUS  MUL  DIV  POW 
%token EXP  EQU  SADD  SSUB  OR  
%token AND  NOT  ASSIGN  LBRACE  RBRACE 
%token LBRACKET  RBRACKET  COLON  POINTER 
%token REF  QUOTE  COMMA  SEMICOLON  LESS 
%token MORE  OUTPUT  INPUT  DOT  LSQBRACKET 
%token RSQBRACKET  LITERAL  ID  INTEGER 
%token ENDFLAG
%left PLUS MINUS
%left MUL DIV
%nonassoc UMINUS
%%

/////////////////////////////////////////////////////////////////////////////
// rules section

// place your YACC rules here (there must be at least one)
start: start expr ENDFLAG {printf("end!%s\n",$2);}
     | start ENDFLAG 
     |
     ;
expr: expr1 PLUS expr1  { $$ = $1 + $3; }      //�ӷ�����
	| expr1 MINUS expr1 { $$ = $1 - $3; }      //��������
	| expr1
	;
expr1: expr1 MUL expr1  { $$ = $1 * $3; }      //�˷�����
	 | expr1 DIV expr1  { $$ = $1 / $3; }      //��������
 	 | LBRACKET expr RBRACKET { $$ = $2; }     //�������ŵ�����
 	 | MINUS expr1 %prec UMINUS { $$ = -$2; }  //����
 	 | SSUB expr1 { $$ = $2 - 1; }             //�Լ�����  ��û�ж� ++a �� a++������
 	 | SADD expr1 { $$ = $2 + 1; }             //��������  ͬ��
 	 | expr1 POW expr1 { $$ = pow($1,$3); }    //�˷�����
 	 | INTEGER  { $$ = yylval; }               //�����ֵ
 	 | FLOAT { $$ = $1; }
	 ;
	 
	 //��ֵ����
	 //while
	 //for
	 //class
	 //struct
	 //function
	 //logical symbol's action
	 // the declare part
	 //how to print the abstract syntax tree
%%

/////////////////////////////////////////////////////////////////////////////
// programs section

int main(void)
{
	int n = 1;
	mylexer lexer;
	myparser parser;
    char* inputFile, *outputFile;
	inputFile = new char[200];
	outputFile = new char[200];
	FILE *stream1, *stream2;
	std::cout << "������������������ļ���ַ�ͽ�������ַ\n";
	cin >> inputFile >> outputFile;
	freopen_s(&stream1, inputFile, "r", stdin);
	freopen_s(&stream2, outputFile, "w", stdout);
	if (parser.yycreate(&lexer)) {
		if (lexer.yycreate(&parser)) {
			n = parser.yyparse();
		}
	}
	return n;
}

