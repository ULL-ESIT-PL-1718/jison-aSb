%lex
%%
\s+             {}
.               { return yytext; }
/lex
%%
P : S { return $1; }
;

S: /* empty */  { $$ = ''; console.log("empty"); }
   | 'a' { $$ = "intermediate"; } S 'b'  { $$ = $1 + $2 + $3 + $4; console.log("S -> aSb"); }
;
%%
