program Project1;

uses
  Forms,
  uJournalList in 'uJournalList.pas' {Form10},
  uMenu in 'uMenu.pas' {Form1},
  uOcenka in 'uOcenka.pas' {Form2},
  uVopitanik in 'uVopitanik.pas' {Form4},
  uOtchetToRTF in 'uOtchetToRTF.pas' {Form5},
  uGroup in 'uGroup.pas' {Form6},
  uJournal in 'uJournal.pas' {Form7},
  uVospitatel in 'uVospitatel.pas' {Form3},
  uZanatie in 'uZanatie.pas' {Form8},
  uAttestat in 'uAttestat.pas' {Form9},
  uKabinet in 'uKabinet.pas' {Form11},
  uZanatia in 'uZanatia.pas' {Form12},
  uSelector in 'uSelector.pas' {Form_FastFind},
  uUspevaemost in 'uUspevaemost.pas' {Form13};

{$R *.res}
    var i: integer;
begin
  Application.Initialize;
   Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm_FastFind, Form_FastFind);
  Application.CreateForm(TForm13, Form13);
  ////////    центровка окон по центру экрана
  for i := 0 to application.ComponentCount-1 do
  if (application.Components[i] is tform) then
  begin
     ///////   обработка  исключений
     try

   (application.Components[i] as tform).Left:=(Screen.Width-(application.Components[i] as tform).Width)  div 2;
  (application.Components[i] as tform).Top:=(Screen.Height-(application.Components[i] as tform).Height) div 2;
    except end; end;
  /////////

  Application.Run;
end.
