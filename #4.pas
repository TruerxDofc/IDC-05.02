type
  tList = record
    Count : Integer;
    L : array [1..100] of Integer;
  end;
 
var L : tList;  i, max, min : Integer;  List : tList;
  
begin
  
  List.Count := 0; // создание списка
  Randomize;
  for i := 1 to 10 do
    begin
      Inc(List.Count);
      List.L[List.Count] := Random(100);
    end;
  
  for i := 1 to 10 do // вывод всего списка
    Write(List.L[i]:4);
  WriteLn;
  
  List.Count := 0; // вывод максимального и минмального элемента
  min := List.L[1];
  for i := 1 to 10 do
    begin
      Inc(List.Count);
      if (max < List.L[i]) then
        max := List.L[i];
      if (min > List.L[i]) then
        min := List.L[i];
    end;
    
    Writeln('Max = ', max, ', Min = ', min);
    
end.
