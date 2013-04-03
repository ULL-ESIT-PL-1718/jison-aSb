%lex
%%
\s+             {}
.               { return yytext; }
/lex
%%
S: /* empty */  { $$ = ''; console.log("empty"); }
   | 'a' S 'b'  { $$ = $1 + $2 + $3; console.log("S -> aSb"); }
;
%%
