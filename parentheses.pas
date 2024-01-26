var
   current, previous,next: TPoint;
 begin
   current := caller.LogicalCaretXY;

   previous := current;
   next:=current;

   previous.x := previous.x -1;
   next.x := next.x +1;

   if caller.SelAvail then begin
     caller.SelText := '('+caller.SelText+')';
   end
   else
   begin
      if (caller.TextBetweenPoints[previous, current]='''') or (caller.TextBetweenPoints[current, next]=')') then
      begin
        ecChar('(');
      end
      else
      begin
        ecChar('()');
        ecLeft;
      end;
   end;
end.
