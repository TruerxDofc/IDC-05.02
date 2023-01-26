type
  tList = record
    Count : Integer;
    L : array [1..100] of Integer;
  end;

procedure AddList(n : Integer; var List : tList);
begin
  Inc(List.Count);
  List.L[List.Count] := n;
end;
 
procedure OutList(i : Integer; List : tList);
begin
  Write(List.L[i]:4);
end;
 
var L : tList;  i : Integer;  List : tList;
  
begin
  
  List.Count := 0;
  
  Randomize;
  for i := 1 to 10 do
    AddList(Random(100), L);
  
  for i := 1 to 10 do
    OutList(i, L);
  WriteLn;
  
  for i := 1 to 10 do
    if Not Odd(L.L[i]) then
      OutList(i, L);
    
end.
