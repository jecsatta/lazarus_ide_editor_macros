//Shortcut: Enter - must replace IDE BreakLine
var
current, previous,next: TPoint;
new_breakline:boolean;

function CountCharOccurrenciesBeforePos(const S, ACharToCount: string;FinalPos:Integer): Integer;
var
StartPos,Lcount,deleted,lentext: Integer;
LString:string;
begin
  Lcount:=0;
  LString:=S;
  lentext:= Length(ACharToCount);
  deleted:=0;

  StartPos := Pos(ACharToCount, LString);
  while (StartPos > 0 ) and ((StartPos+deleted)<FinalPos) do
  begin
      Lcount:=Lcount + 1;
      Delete(LString, StartPos,lentext);
      deleted:=deleted+lentext;

      StartPos := Pos(ACharToCount, LString);

  end;
  Result := Lcount;
end;

 begin
   current := caller.LogicalCaretXY;

   previous := current;
   next:=current;

   previous.x := previous.x -1;
   next.x := next.x +1;
   new_breakline:=false;
   if (CountCharOccurrenciesBeforePos(caller.LineAtCaret,'''',caller.LogicalCaretX) mod 2)> 0 then
      new_breakline:=true;
   if new_breakline then
   begin
     caller.InsertTextAtCaret('''+',scamEnd);
     eclinebreak;
     caller.InsertTextAtCaret('''',scamEnd);
   end
   else
       ecLineBreak;
end.
