```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Arr'Range loop
      if My_Arr(I) = 5 then
         exit;
      end if;
   end loop;
   --  This will cause an error because of the way the for loop is structured
   Put_Line("Value of My_Arr(I) after exiting: " & My_Arr(I)'Image);
end Example;
```