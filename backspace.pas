// Shortcut: BkSp must replace BkSp of IDE
var
   current, previous,next: TPoint;
 begin
   current := caller.LogicalCaretXY;

   previous := current;
   next:=current;

   previous.x := previous.x -1;
   next.x:=next.x+1;

   if (caller.TextBetweenPoints[previous, current]='(') and (caller.TextBetweenPoints[current, next]=')') then ecDeleteChar;

   if (caller.TextBetweenPoints[previous, current]='''') and (caller.TextBetweenPoints[current, next]='''') then ecDeleteChar;
   ecDeleteLastChar;

end.
