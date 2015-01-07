var
  data:array[0..3000]of longint;
  k:array[0..3000]of string[200];
  n:longint;
  procedure init;
    var
      i:longint;
    begin
        readln(n);
        for i:=1 to n do
          readln(k[i]);
        //fillchar(data,sizeof(data),0);
        for i:=1 to n do
          data[i]:=1;
    end;
  procedure work;
    var
      i,j:longint;
    begin
        for i:=2 to n do
          for j:=1 to i-1 do
            if pos(k[j],k[i])=1 then
              if data[j]+1>data[i]then
                data[i]:=data[j]+1;
          j:=0;
          for i:=1 to n do
            if data[i]>j then j:=data[i];
          writeln(j);
    end;
    begin
        init;
        work;
    end.
