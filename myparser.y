%{
/****************************************************************************
myparser.y
ParserWizard generated YACC file.

Date: 2017年10月12日
****************************************************************************/

#include "mylexer.h"
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
#ifndef YYSTYPE
#define YYSTYPE int
#endif
}

// place any declarations here

%%

/////////////////////////////////////////////////////////////////////////////
// rules section

// place your YACC rules here (there must be at least one)

Grammar
	: /* empty */
	;

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
	std::cout << "请依次输入待解析的文件地址和结果输出地址\n";
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

