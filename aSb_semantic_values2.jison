%%
S: /* empty */  { $$ = ''; console.log("empty"); }
   | 'a' S[z] 'b'  { $$ = $1 + $z + $3; console.log("S -> aSb"); }
;
%%

