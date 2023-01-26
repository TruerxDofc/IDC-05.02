type
  tList = record
    Count : Integer;
    L : array [1..100] of Integer;
  end;
 
var L : tList;  i : Integer;  List : tList;
  
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
  
  List.Count := 0; // вывод четных элементов списка
  for i := 1 to 10 do
    begin
      Inc(List.Count);
      if (List.Count mod 2 = 0) then
        Write(List.L[i]:4);
    end;
    
    
end.
