%lex
%%
\s+             {}
.               { return yytext; }
/lex
%%
T: S            { return $1; }
;
S: /* empty */  { $$ = ''; console.log("empty"); }
   | 'a' S 'b'  { $$ = $1 + $2 + $3; console.log("S -> aSb"); }
   | 'a' 'b'    { $$ = "' winner production is S-> ab '"; console.log("S-> ab conflict")}
;
%%
