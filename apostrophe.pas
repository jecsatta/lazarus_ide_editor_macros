var
   atual, anterior,posterior: TPoint;
 begin
   atual := caller.LogicalCaretXY;

   anterior := atual;
   posterior:=atual;

   anterior.x := anterior.x -1;
   posterior.x := posterior.x +1;

    if caller.SelAvail then begin
     caller.SelText := ''''+caller.SelText+'''';
   end
   else
   begin
      if (caller.TextBetweenPoints[anterior, atual]='''') or (caller.TextBetweenPoints[atual, posterior]='''') then
      begin
        ecChar('''');
      end
      else
      begin
        ecChar('''''');
        ecLeft;
      end;

   end;
end.
