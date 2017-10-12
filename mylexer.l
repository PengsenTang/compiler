%{
/****************************************************************************
mylexer.l
ParserWizard generated Lex file.

Date: 2017��10��9��
****************************************************************************/
#include "myparser.h"
#include <cstring>
#include <string>
#include <iostream>
%}

/////////////////////////////////////////////////////////////////////////////
// declarations section

// lexical analyser name
%name mylexer
// class definition

%{
struct TokenAndLexme;
void addToken(char*token,char*lexme);
int getIndex(char*lexme);
void printToken();
int id_state = -1;
%}
// constructor
{
	// place any extra initialisation code here
}

// destructor
{
	// place any extra cleanup code here
}

// place any declarations here

number [1-9]?[0-9]+\.?[0-9]*
identifier (_|[a-zA-Z])?[A-Za-z_0-9]+
literal \"[^\"]*?\"|'[^']*?'
%%

/////////////////////////////////////////////////////////////////////////////
// rules section
%{
	// extract yylval for use later on in actions
	YYSTYPE YYFAR& yylval = *(YYSTYPE YYFAR*)yyparserptr->yylvalptr;
%}
//�ؼ���
"int"  { addToken("INT",yytext); }
"char"  { addToken("CHAR",yytext); }
"string"  { addToken("STRING",yytext); }
"double"
|"float"  {addToken("FLOAT",yytext);}
"void"  {addToken("VOID",yytext);}
"if"  { addToken("IF",yytext); }
"else"  { addToken("ELSE",yytext); }
"while"  { addToken("WHILE",yytext); }
"for"  { addToken("FOR",yytext); }
"do"  { addToken("DO",yytext); }
"bool"  { addToken("BOOL",yytext); }
//����
"+"  { addToken("PLUS",yytext); }
"-"  { addToken("MINUS",yytext); }
"*"  { addToken("MUL",yytext); }
"/"  { addToken("DIV",yytext); }
"^"  { addToken("POW",yytext); }
"**" { addToken("EXP",yytext); }
"==" { addToken("EQU",yytext); }
"++" { addToken("SADD",yytext); }
"--" { addToken("SSUB",yytext); }
"||" { addToken("OR",yytext); }
"&&" { addToken("AND",yytext); }
"!"  { addToken("NOT",yytext); }
"="  { addToken("ASSIGN",yytext); }
"{"  { addToken("LBRACE",yytext); }
"}"  { addToken("RBRACE",yytext); }
"("  { addToken("LBRACKET",yytext); }
")"  { addToken("RBRACKET",yytext); }
":"  { addToken("COLON",yytext); }
"->"  { addToken("POINTER",yytext); }
"&"  { addToken("REF",yytext); }
\'|\"  { addToken("QUOTE",yytext); }
","  { addToken("COMMA",yytext); }
";"  { addToken("SEMICOLON",yytext); }
"<"  { addToken("LESS",yytext);  }
">"  { addToken("MORE",yytext);  }
"<<"  { addToken("OUTPUT",yytext);  }
">>"  { addToken("INPUT",yytext);  }
"."  { addToken("DOT",yytext);  }
"["  { addToken("LSQBRACKET",yytext);}
"]"  { addToken("RSQBRACKET",yytext);}
//�ո�
[\t ]+
//��β
\n  ;  ;
//�ַ��������֡������ʶ��
{literal}  { addToken("LITERAL",yytext); }
{number}((E|e)[+-]?{number})?  { addToken("DIGIT",yytext); }
{identifier}  { addToken("ID",yytext); }

// place your Lex rules here

%%

/////////////////////////////////////////////////////////////////////////////
// programs section
//������ű��Ľṹ
struct TokenAndLexme{
    char * token;
    char * lexme;
    int index;
    TokenAndLexme*next;
};
TokenAndLexme * token_head = new TokenAndLexme();
//�����ű������ӷ���
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
//��ȡ�ô����ڷ��ű��е�index
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
//��ӡ���ű�������
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