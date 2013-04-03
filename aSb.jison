%lex
%%
\s+             {}
.               { return yytext; }
/lex
%%
P : S { return $1; }
;

S: /* empty */  { $$ = ''; console.log("empty"); }
   | 'a' T  S 'b'  { $$ = $1 + $2 + $3 + $4; console.log("S -> aSb"); }
;

T: /* empty */ { $$ = " intermediate "; }
;
%%
