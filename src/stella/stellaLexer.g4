

// Lexer definition for use with Antlr4
lexer grammar stellaLexer;
// Predefined regular expressions in BNFC
fragment LETTER: CAPITAL | SMALL;
fragment CAPITAL: [A-Z\u00C0-\u00D6\u00D8-\u00DE];
fragment SMALL: [a-z\u00DF-\u00F6\u00F8-\u00FF];
fragment DIGIT: [0-9];
COMMA: ',';
SEMICOLON: ';';
LPAREN: '(';
RPAREN: ')';
LBRACE: '{';
RBRACE: '}';
EQUALS: '=';
COLON: ':';
ARROW: '->';
DOUBLEARROW: '=>';
LANGLEBAR: '<|';
RANGLEBAR: '|>';
LBRACKET: '[';
RBRACKET: ']';
LE: '<';
LEQ: '<=';
GE: '>';
GEQ: '>=';
EQ: '==';
NEQ: '!=';
PLUS: '+';
TIMES: '*';
LIST_HEAD: 'List::head';
LIST_ISEMPTY: 'List::isempty';
LIST_TAIL: 'List::tail';
NAT_PRED: 'Nat::pred';
NAT_ISZERO: 'Nat::iszero';
NAT_REC: 'Nat::rec';
DOT: '.';
TYPE_BOOL: 'Bool';
TYPE_NAT: 'Nat';
TYPE_UNIT: 'Unit';
AND: 'and';
AS: 'as';
CONS: 'cons';
CORE: 'core';
ELSE: 'else';
EXTEND: 'extend';
FALSE: 'false';
FIX: 'fix';
FN: 'fn';
FOLD: 'fold';
IF: 'if';
IN: 'in';
INLINE: 'inline';
LANGUAGE: 'language';
LET: 'let';
MATCH: 'match';
NOT: 'not';
OR: 'or';
RECORD: 'record';
RETURN: 'return';
SUCC: 'succ';
THEN: 'then';
THROWS: 'throws';
TRUE: 'true';
TYPE: 'type';
UNFOLD: 'unfold';
VARIANT: 'variant';
WITH: 'with';
MU: 'µ';
COMMENT_antlr_builtin: ('//' ~[\r\n]* (('\r'? '\n') | EOF)) -> skip;
// MULTICOMMENT_antlr_builtin : ( ) -> skip;

StellaIdent: ('_' | LETTER) ([!\-:?_] | (DIGIT | LETTER))*;
ExtensionName: '#' ([\-_] | (DIGIT | LETTER))+;

//Integer predefined token type
INTEGER: DIGIT+;

// Whitespace
WS: (' ' | '\r' | '\t' | '\n' | '\f')+ -> skip;
// Escapable sequences
fragment Escapable: ('"' | '\\' | 'n' | 't' | 'r' | 'f');
ErrorToken: .;


