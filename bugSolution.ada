```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   Found_Index : Integer := 0; -- Added to store the index of the found element
begin
   for I in My_Arr'Range loop
      if My_Arr(I) = 5 then
         Found_Index := I; -- Store the index before exiting
         exit;
      end if;
   end loop;
   if Found_Index > 0 then
      Put_Line("Value of My_Arr(I) after exiting: " & My_Arr(Found_Index)'Image);
   else
      Put_Line("Value 5 not found in the array");
   end if;
end Example;
```