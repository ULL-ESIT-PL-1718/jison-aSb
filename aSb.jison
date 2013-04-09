%lex
%%
\s+             {}
[ab]            { return yytext; }
.               { return "INVALID"; }
/lex
%%
S: /* empty */  { $$ = ''; console.log("empty"); }
   | 'a' S 'b'  { $$ = $1 + $2 + $3; console.log("S -> aSb"); }
   | 'a' S error
;
%%
