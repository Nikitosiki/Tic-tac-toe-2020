program Game;
uses crt;
//LABEL: start;
var
  hod, i, i1, i2, kon, rand, v, compl, nei, nea, x, o: integer;
  a1, a2, a3, a4, a5, a6, a7, a8, a9: char; // Да я использовл не массив, массив занимал бы столько же места и мне так удобнее)))
  load: string;
  qa: Boolean;
begin
   x := 0;
   o := 0;
   randomize;
   for i1:= 1 to 2 do
   begin
    for i:= 1 to 3 do
    begin
      load += '.';
      Clrscr();
      Writeln;
      Writeln;
      Writeln;
      Writeln('              Крестики нолики ');
      Writeln('                          v3.5beta');
      Writeln('                 Loading', load);
      Writeln;
      Writeln;
      Writeln('             by Nikita Savenko');
      delay(600);  //800
      Clrscr();
    end;
    load := '';
   end;
     repeat
      Writeln;
      Writeln;
      Writeln;
      Writeln('            Выберите сложность...');
      Writeln('          1-easy  2-normal  3-hard');
      read(compl);
      Clrscr();
     until (compl = 1) or (compl = 2) or (compl = 3);
     if compl = 3 then compl := 50
     else if compl = 2 then compl := 10
     else compl := 3;
   a1 := ' ';
   a2 := ' ';
   a3 := ' ';
   a4 := ' ';
   a5 := ' ';
   a6 := ' ';
   a7 := ' ';
   a8 := ' ';
   a9 := ' ';
   //start:
   while kon = 0 do
   begin
       if i2 = 1 then    //Проверка был ли сделан ход игроком
       begin
         i2 := 0;
         if ((a1=' ') or (a2=' ') or (a3=' ') or (a4=' ') or (a5=' ') or (a6=' ') or (a7=' ') or(a8=' ') or (a9=' ')) then
         while i2=0 do
         begin    //начало нейросети
         
         nei := 0;
         nea := 0;
         repeat
         nei+=1;
         qa := false;
         rand:= random(9) + 1; //От 1 до 9
           case rand of
            1: if a1 = ' ' then begin a1:= 'x'; qa := true; end;
            2: if a2 = ' ' then begin a2:= 'x'; qa := true; end;
            3: if a3 = ' ' then begin a3:= 'x'; qa := true; end;
            4: if a4 = ' ' then begin a4:= 'x'; qa := true; end;
            5: if a5 = ' ' then begin a5:= 'x'; qa := true; end;
            6: if a6 = ' ' then begin a6:= 'x'; qa := true; end;
            7: if a7 = ' ' then begin a7:= 'x'; qa := true; end;
            8: if a8 = ' ' then begin a8:= 'x'; qa := true; end;
            9: if a9 = ' ' then begin a9:= 'x'; qa := true; end;
           end;
           if (((a1='x') and (a2='O') and (a3='O')) or ((a1='O') and (a2='x') and (a3='O')) or ((a1='O') and (a2='O') and (a3='x')) or ((a4='x') and (a5='O') and (a6='O')) or ((a4='O') and (a5='x') and (a6='O')) or ((a4='O') and (a5='O') and (a6='x')) or ((a7='x') and (a8='O') and (a9='O')) or ((a7='O') and (a8='x') and (a9='O')) or ((a7='O') and (a8='O') and (a9='x')) or ((a1='x') and (a4='O') and (a7='O')) or ((a1='O') and (a4='x') and (a7='O')) or ((a1='O') and (a4='O') and (a7='x')) or ((a2='x') and (a5='O') and (a8='O')) or ((a2='O') and (a5='x') and (a8='O')) or ((a2='O') and (a5='O') and (a8='x')) or ((a3='x') and (a6='O') and (a9='O')) or ((a3='O') and (a6='x') and (a9='O')) or ((a3='O') and (a6='O') and (a9='x')) or ((a1='x') and (a5='O') and (a9='O')) or ((a1='O') and (a5='x') and (a9='O')) or ((a1='O') and (a5='O') and (a9='x')) or ((a3='x') and (a5='O') and (a7='O')) or ((a3='O') and (a5='x') and (a7='O')) or ((a3='O') and (a5='O') and (a7='x'))) then           //Да да да, я знаю я хотел сделать через сложение и проверки суммы участков, но тогда бы мне пришлось переписывать пол программы и переводить всё в числовой масив и каждый раз с равнивать со значением из массива, зато так проще)))
           nea := rand;
           if (qa = true) then case rand of
            1: if a1 = 'x' then a1:= ' ';
            2: if a2 = 'x' then a2:= ' ';
            3: if a3 = 'x' then a3:= ' ';
            4: if a4 = 'x' then a4:= ' ';
            5: if a5 = 'x' then a5:= ' ';
            6: if a6 = 'x' then a6:= ' ';
            7: if a7 = 'x' then a7:= ' ';
            8: if a8 = 'x' then a8:= ' ';
            9: if a9 = 'x' then a9:= ' ';
           end;
         until ((nei = compl) or (nea>0));
         nei := 0;
         if nea = 0 then
         begin
           repeat
           nei+=1;
           qa := false;
           rand:= random(9) + 1; //От 1 до 9
             case rand of
              1: if a1 = ' ' then begin a1:= 'X'; qa := true; end;
              2: if a2 = ' ' then begin a2:= 'X'; qa := true; end;
              3: if a3 = ' ' then begin a3:= 'X'; qa := true; end;
              4: if a4 = ' ' then begin a4:= 'X'; qa := true; end;
              5: if a5 = ' ' then begin a5:= 'X'; qa := true; end;
              6: if a6 = ' ' then begin a6:= 'X'; qa := true; end;
              7: if a7 = ' ' then begin a7:= 'X'; qa := true; end;
              8: if a8 = ' ' then begin a8:= 'X'; qa := true; end;
              9: if a9 = ' ' then begin a9:= 'X'; qa := true; end;
             end;
             if (((a1='X') and (a2='X') and (a3='X'))) or ((a4='X') and (a5='X') and (a6='X')) or ((a7='X') and (a8='X') and (a9='X')) or ((a1='X') and (a4='X') and (a7='X')) or ((a2='X') and (a5='X') and (a8='X')) or ((a3='X') and (a6='X') and (a9='X')) or ((a1='X') and (a5='X') and (a9='X')) or ((a3='X') and (a5='X') and (a7='X')) then
             nea := rand;
             if (qa = true) then case rand of
              1: if a1 = 'X' then a1:= ' ';
              2: if a2 = 'X' then a2:= ' ';
              3: if a3 = 'X' then a3:= ' ';
              4: if a4 = 'X' then a4:= ' ';
              5: if a5 = 'X' then a5:= ' ';
              6: if a6 = 'X' then a6:= ' ';
              7: if a7 = 'X' then a7:= ' ';
              8: if a8 = 'X' then a8:= ' ';
              9: if a9 = 'X' then a9:= ' ';
             end;
           until ((nei = compl) or (nea>0));
         end;
         
         if nea = 0 then nea := rand;
         case nea of
          1: if a1 = ' ' then i2:= 1;
          2: if a2 = ' ' then i2:= 1;
          3: if a3 = ' ' then i2:= 1;
          4: if a4 = ' ' then i2:= 1;
          5: if a5 = ' ' then i2:= 1;
          6: if a6 = ' ' then i2:= 1;
          7: if a7 = ' ' then i2:= 1;
          8: if a8 = ' ' then i2:= 1;
          9: if a9 = ' ' then i2:= 1;
          else i2:= 0;
          end;
          if i2=1 then
          case nea of
          1: a1 := 'X';
          2: a2 := 'X';
          3: a3 := 'X';
          4: a4 := 'X';
          5: a5 := 'X';
          6: a6 := 'X';
          7: a7 := 'X';
          8: a8 := 'X';
          9: a9 := 'X';
          end;
          end;        //конец нейросети
       end;
     ClrScr;
     Writeln('                     +');
     Writeln('     |     |         +         |     |     ');
     Writeln('  ', a1, '  |  ', a2, '  |  ', a3, '      +      1  |  2  |  3    Счёт:');
     Writeln('     |     |         +         |     |      X-', x);
     Writeln('-----+-----+-----    +    -----+-----+----- O-', o);
     Writeln('     |     |         +         |     |     ');
     Writeln('  ', a4, '  |  ', a5, '  |  ', a6, '      +      4  |  5  |  6  ');
     Writeln('     |     |         +         |     |     ');
     Writeln('-----+-----+-----    +    -----+-----+-----');
     Writeln('     |     |         +         |     |     ');
     Writeln('  ', a7, '  |  ', a8, '  |  ', a9, '      +      7  |  8  |  9  ');
     Writeln('     |     |         +         |     |     ');
     Writeln('                     +');
     Writeln('+++++++++++++++++++++++++++++++++++++++++++');
     v := 0;
     hod := 0;
     if (((a1='O') and (a2='O') and (a3='O'))) or ((a4='O') and (a5='O') and (a6='O')) or ((a7='O') and (a8='O') and (a9='O')) or ((a1='O') and (a4='O') and (a7='O')) or ((a2='O') and (a5='O') and (a8='O')) or ((a3='O') and (a6='O') and (a9='O')) or ((a1='O') and (a5='O') and (a9='O')) or ((a3='O') and (a5='O') and (a7='O')) then
     begin
       repeat
       o += 1;
       Writeln('Вы выиграли!');
       Writeln('Желаете сыграть ещё раз?      1-Да  2-Не');
       read(v);
         if v = 2 then exit
         else a1:=' '; a2:=' '; a3:=' '; a4:=' '; a5:=' '; a6:=' '; a7:=' '; a8:=' '; a9:=' ';
         ClrScr;
         until (v = 1) or (v = 2);
     end
     else if (((a1='X') and (a2='X') and (a3='X'))) or ((a4='X') and (a5='X') and (a6='X')) or ((a7='X') and (a8='X') and (a9='X')) or ((a1='X') and (a4='X') and (a7='X')) or ((a2='X') and (a5='X') and (a8='X')) or ((a3='X') and (a6='X') and (a9='X')) or ((a1='X') and (a5='X') and (a9='X')) or ((a3='X') and (a5='X') and (a7='X')) then
     begin
       repeat
         x += 1;
       Writeln('Вы проиграли, не унывайте!');
       Writeln('Желаете сыграть ещё раз?      1-Да  2-Не');
       read(v);
       if v = 2 then exit
       else a1:=' '; a2:=' '; a3:=' '; a4:=' '; a5:=' '; a6:=' '; a7:=' '; a8:=' '; a9:=' ';
       ClrScr;
       until (v = 1) or (v = 2);
     end
     else if ((a1<>' ') and (a2<>' ') and (a3<>' ') and (a4<>' ') and (a5<>' ') and (a6<>' ') and (a7<>' ') and (a8<>' ') and (a9<>' ')) then
     begin
       repeat
       Writeln('Ничья. Вы решили остаться друзьями с противником!');
       Writeln('Желаете сыграть ещё раз?      1-Да  2-Не');
       read(v);
       if v = 2 then exit
       else a1:=' '; a2:=' '; a3:=' '; a4:=' '; a5:=' '; a6:=' '; a7:=' '; a8:=' '; a9:=' ';
       ClrScr;
       until (v = 1) or (v = 2);
     end
     else begin
       Write('Ваш ход: ');
       read(hod);
     end;
     i2 := 0;
          case hod of
          1: if a1 = ' ' then i2:= 1;
          2: if a2 = ' ' then i2:= 1;
          3: if a3 = ' ' then i2:= 1;
          4: if a4 = ' ' then i2:= 1;
          5: if a5 = ' ' then i2:= 1;
          6: if a6 = ' ' then i2:= 1;
          7: if a7 = ' ' then i2:= 1;
          8: if a8 = ' ' then i2:= 1;
          9: if a9 = ' ' then i2:= 1;
          else i2:= 0;
          end;
        if i2=1 then
          case hod of
          1: a1 := 'O';
          2: a2 := 'O';
          3: a3 := 'O';
          4: a4 := 'O';
          5: a5 := 'O';
          6: a6 := 'O';
          7: a7 := 'O';
          8: a8 := 'O';
          9: a9 := 'O';
          end;
      //case 'O' or 'X' of
      //a1, a2, a3, a4, a5, a6, a7, a8: a9 := 'O';
      //end;
   end;
end.
