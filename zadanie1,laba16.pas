uses crt;

var
  i_ptr,i: ^Integer;
  
begin
  new(i);
  i^:=2;
  
  new(i_ptr);
  i_ptr:=i;
  
  writeln(i_ptr^);
  
  dispose(i_ptr);
end.