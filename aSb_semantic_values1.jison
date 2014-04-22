%%
S: /* empty */  { $$ = ''; console.log("empty"); }
   | 'a' S 'b'  { $$ = $1 + $S + $3; console.log("S -> aSb"); }
;
%%

