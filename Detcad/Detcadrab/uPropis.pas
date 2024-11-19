unit uPropis;

{ 1000011.01->'���� ������� ���������� ������ 01 �������'               } 
interface
function NumToStr(s: string): string;  
function RealToRouble(c: Extended): string; 
implementation 
uses SysUtils, math; 
const Max000 = 6; {���-�� ��������� - 000} 
  MaxPosition = Max000 * 3; {���-�� ������ � ����� } 
//������ IIF � Dbase ���� � proc.pas ��� �������� �����, �������� ��������� ��� ��� ������������� 
function IIF(i: Boolean; s1, s2: Char): Char; overload; begin if i then 
    result := s1 
  else 
    result := s2 end; 
function IIF(i: Boolean; s1, s2: string): string; overload; begin if i then 
    result := s1 
  else 
    result := s2 end; 

function NumToStr(s: string): string; {���������� ����� ��������} 
const c1000: array[0..Max000] of string = ('', '�����', '�������', '��������', '��������', '�����������', '�����������'); 

  c1000w: array[0..Max000] of Boolean = (False, True, False, False, False, False, False); 
  w: array[False..True, '0'..'9'] of string[3] = (('�� ', ' ', '� ', '� ', '� ', '�� ', '�� ', '�� ', '�� ', '�� '), 
    (' ', '� ', '� ', '� ', '� ', ' ', ' ', ' ', ' ', ' ')); 
  function Num000toStr(S: string; woman: Boolean): string; {Num000toStr ���������� ����� ��� ��������} 
  const c100: array['0'..'9'] of string = ('', '��� ', '������ ', '������ ', '��������� ', '������� ', '�������� ', '������� ', '��������� ', '��������� '); 
    c10: array['0'..'9'] of string = ('', '������ ', '�������� ', '�������� ', '����� ', '��������� ', '���������� ', '��������� ', '����������� ', '��������� '); 
    c11: array['0'..'9'] of string = ('', '����', '���', '���', '�����', '���', '����', '���', '�����', '�����'); 
    c1: array[False..True, '0'..'9'] of string = (('', '���� ', '��� ', '��� ', '������ ', '���� ', '����� ', '���� ', '������ ', '������ '), 
      ('', '���� ', '��� ', '��� ', '������ ', '���� ', '����� ', '���� ', '������ ', '������ ')); 
  begin {Num000toStr} 
    Result := c100[s[1]] + iif((s[2] = '1') and (s[3] > '0'), c11[s[3]] + '������� ', c10[s[2]] + c1[woman, s[3]]); 
  end; {Num000toStr} 

var s000: string[3]; 

  isw, isMinus: Boolean; 
  i: integer; //������� ��������� 
begin 

  Result := ''; i := 0; 
  isMinus := (s <> '') and (s[1] = '-'); 
  if isMinus then s := Copy(s, 2, Length(s) - 1); 
  while not ((i >= Ceil(Length(s) / 3)) or (i >= Max000)) do 
    begin 
      s000 := Copy('00' + s, Length(s) - i * 3, 3); 
      isw := c1000w[i]; 
      if (i > 0) and (s000 <> '000') then //������ � �.�. 
        Result := c1000[i] + w[Isw, iif(s000[2] = '1', '0', s000[3])] + Result; 
      Result := Num000toStr(s000, isw) + Result; 
      Inc(i) 
    end; 
  if Result = '' then Result := '����'; 
  if isMinus then Result := '����� ' + Result; 
end; {NumToStr} 

function RealToRouble(c: Extended): string; 

const ruble: array['0'..'9'] of string[2] = ('��', '�', '�', '�', '�', '��', '��', '��', '��', '��'); 
  Kopeek: array['0'..'9'] of string[3] = ('��', '���', '���', '���', '���', '��', '��', '��', '��', '��'); 

  function ending(const s: string): Char; 
  var l: Integer; //� l �� 8 ���� ������� $50->$48->$3F 
  begin //���������� ������ ��������� 
    l := Length(s); 
    Result := iif((l > 1) and (s[l - 1] = '1'), '0', s[l]); 
  end; 

var rub: string[MaxPosition + 3]; kop: string[2]; 
begin {���������� ����� �������� � ������� � ���������} 

  Str(c: MaxPosition + 3: 2, Result); 
  if Pos('E', Result) = 0 then //���� ����� ����� ����������� � ������ <>1E+99 
    begin 
      rub := TrimLeft(Copy(Result, 1, Length(Result) - 3)); 
      kop := Copy(Result, Length(Result) - 1, 2); 
      Result := NumToStr(rub) + ' ����' + ruble[ending(rub)] 
        + ' ' + kop + ' ����' + Kopeek[ending(kop)]; 
      Result := AnsiUpperCase(Result[1]) + Copy(Result, 2, Length(Result) - 1); 
    end; 
end; 
end. 