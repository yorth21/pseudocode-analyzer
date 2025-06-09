package com.vanesa;

import java_cup.runtime.*;

%%

%class Lexer
%unicode
%line
%column
%cup

%{
    public StringBuilder tokens = new StringBuilder();

    private Symbol symbol(String name, int type) {
        tokens.append("Token{ "+ "name = " + name + " , keyword = " + name + " }\n");
        return new Symbol(type, yyline, yycolumn, name);
    }

    private Symbol symbol(String name, int type, Object value) {
        tokens.append("Token{ "+ "name = " + name + " , keyword = " + value + " }\n");
        return new Symbol(type, yyline, yycolumn, value);
    }
%}

/* Definiciones de patrones */
LETTER = [a-zA-Z]
DIGIT = [0-9]
IDENTIFIER = {LETTER}({LETTER}|{DIGIT}|_)*
INTEGER_LITERAL = {DIGIT}+
REAL_LITERAL = {DIGIT}+\.{DIGIT}+
STRING_LITERAL = \"([^\\\"]|\\.)*\" | \'([^\\\']|\\.)*\'
WHITESPACE = [ \t\f]+
NEWLINE = \r|\n|\r\n
SINGLE_LINE_COMMENT = "//".*
MULTI_LINE_COMMENT = "/*"([^*]|\*+[^*/])*\*+"/"

%%

/* Reglas léxicas */

/* Comentarios */
{SINGLE_LINE_COMMENT}      { /* Ignorar comentarios */ }
{MULTI_LINE_COMMENT}       { /* Ignorar comentarios */ }

/* Palabras clave de estructura de programa */
"Program"                  { return symbol("Program", sym.PROGRAM); }
"EndProgram"               { return symbol("EndProgram", sym.ENDPROGRAM); }

/* Tipos de datos */
"Integer"                  { return symbol("IntegerType", sym.INTEGER_TYPE); }
"Real"                     { return symbol("RealType", sym.REAL_TYPE); }
"String"                   { return symbol("StringType", sym.STRING_TYPE); }
"Boolean"                  { return symbol("BooleanType", sym.BOOLEAN_TYPE); }
"Character"                { return symbol("CharacterType", sym.CHARACTER_TYPE); }

/* Entrada y salida */
"Read"                     { return symbol("Read", sym.READ); }
"Input"                    { return symbol("Input", sym.INPUT); }
"Write"                    { return symbol("Write", sym.WRITE); }
"Print"                    { return symbol("Print", sym.PRINT); }
"Output"                   { return symbol("Output", sym.OUTPUT); }


/* Estructuras de control - Condicionales */
"If"                       { return symbol("If", sym.IF); }
"Then"                     { return symbol("Then", sym.THEN); }
"Else"                     { return symbol("Else", sym.ELSE); }
"EndIf"                    { return symbol("EndIf", sym.ENDIF); }

/* Estructuras de control - Ciclos */
"While"                    { return symbol("While", sym.WHILE); }
"Do"                       { return symbol("Do", sym.DO); }
"EndWhile"                 { return symbol("EndWhile", sym.ENDWHILE); }
"For"                      { return symbol("For", sym.FOR); }
"To"                       { return symbol("To", sym.TO); }
"Step"                     { return symbol("Step", sym.STEP); }
"EndFor"                   { return symbol("EndFor", sym.ENDFOR); }

/* Selección múltiple */
"Switch"                   { return symbol("Switch", sym.SWITCH); }
"Case"                     { return symbol("Case", sym.CASE); }
"Default"                  { return symbol("Default", sym.DEFAULT); }
"Otherwise"                { return symbol("Otherwise", sym.OTHERWISE); }
"EndSwitch"                { return symbol("EndSwitch", sym.ENDSWITCH); }

/* Funciones */
"Function"                 { return symbol("Function", sym.FUNCTION); }
"EndFunction"              { return symbol("EndFunction", sym.ENDFUNCTION); }
"Return"                   { return symbol("Return", sym.RETURN); }

/* Operadores lógicos */
"And"                      { return symbol("And", sym.AND); }
"Or"                       { return symbol("Or", sym.OR); }
"Not"                      { return symbol("Not", sym.NOT); }

/* Literales booleanos */
"True"                     { return symbol("True", sym.TRUE, true); }
"False"                    { return symbol("False", sym.FALSE, false); }

/* Operadores relacionales */
"=="                       { return symbol("Equal", sym.EQUAL); }
"!="                       { return symbol("NotEqual", sym.NOT_EQUAL); }
"<="                       { return symbol("LessEqual", sym.LESS_EQUAL); }
">="                       { return symbol("GreaterEqual", sym.GREATER_EQUAL); }
"<"                        { return symbol("Less", sym.LESS); }
">"                        { return symbol("Greater", sym.GREATER); }

/* Operadores aritméticos */
"+"                        { return symbol("Plus", sym.PLUS); }
"-"                        { return symbol("Minus", sym.MINUS); }
"*"                        { return symbol("Multiply", sym.MULTIPLY); }
"/"                        { return symbol("Divide", sym.DIVIDE); }
"%"                        { return symbol("Modulo", sym.MODULO); }
"^"                        { return symbol("Power", sym.POWER); }

/* Asignación */
"="                        { return symbol("Assign", sym.ASSIGN); }

/* Delimitadores */
";"                        { return symbol("Semicolon", sym.SEMICOLON); }
","                        { return symbol("Comma", sym.COMMA); }
"("                        { return symbol("LeftParen", sym.LPAREN); }
")"                        { return symbol("RightParen", sym.RPAREN); }
":"                        { return symbol("Colon", sym.COLON); }

/* Literales */
{INTEGER_LITERAL}          { return symbol("IntegerLiteral", sym.INTEGER_LITERAL, Integer.parseInt(yytext())); }
{REAL_LITERAL}             { return symbol("RealLiteral", sym.REAL_LITERAL, Double.parseDouble(yytext())); }
{STRING_LITERAL}           { return symbol("StringLiteral", sym.STRING_LITERAL, yytext()); }

/* Identificadores */
{IDENTIFIER}               { return symbol("Identifier", sym.IDENTIFIER, yytext()); }

/* Espacios en blanco y nueva línea */
{WHITESPACE}               { /* Ignorar espacios en blanco */ }
{NEWLINE}                  { /* Ignorar saltos de línea */ }

/* Cualquier otro carácter es un error */
.                          { return symbol("Illegal character", sym.error, yytext()); }
