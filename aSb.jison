%%
T: S { $$ = $1; return $$; }
;
S: /* empty */  { $$ = "S => empty"; }
   | 'a' S 'b'  { $$ = "S => aSb => " + $2; }
;
%%

/*

S => aSb => aaSbb => aabb

aabb <= aaSbb
*/
