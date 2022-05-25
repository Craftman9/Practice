program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {User},
  Unit2 in 'Unit2.pas' {Autorization},
  Unit3 in 'Unit3.pas' {DM: TDataModule},
  Unit4 in 'Unit4.pas' {Admin},
  Unit5 in 'Unit5.pas' {tema1},
  Unit6 in 'Unit6.pas' {Reg},
  Unit7 in 'Unit7.pas' {zadachi},
  Unit8 in 'Unit8.pas' {tema2},
  Unit9 in 'Unit9.pas' {Quest},
  Unit10 in 'Unit10.pas' {Calendar},
  Unit11 in 'Unit11.pas' {TestTopic},
  Unit12 in 'Unit12.pas' {Test},
  Unit13 in 'Unit13.pas' {Rezult},
  Unit14 in 'Unit14.pas' {Group},
  Unit15 in 'Unit15.pas' {students},
  Unit16 in 'Unit16.pas' {Vid_kontrol},
  Unit17 in 'Unit17.pas' {Uspevaemost},
  Unit18 in 'Unit18.pas' {Calc},
  Unit19 in 'Unit19.pas' {Otchet_rez},
  Unit20 in 'Unit20.pas' {Otchet_stud};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAutorization, Autorization);
  Application.CreateForm(TCalc, Calc);
  Application.CreateForm(TUser, User);
  Application.CreateForm(TAdmin, Admin);
  Application.CreateForm(TTest, Test);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Ttema1, tema1);
  Application.CreateForm(TReg, Reg);
  Application.CreateForm(Tzadachi, zadachi);
  Application.CreateForm(Ttema2, tema2);
  Application.CreateForm(TQuest, Quest);
  Application.CreateForm(TCalendar, Calendar);
  Application.CreateForm(TTestTopic, TestTopic);
  Application.CreateForm(TRezult, Rezult);
  Application.CreateForm(TGroup, Group);
  Application.CreateForm(Tstudents, students);
  Application.CreateForm(TVid_kontrol, Vid_kontrol);
  Application.CreateForm(TUspevaemost, Uspevaemost);
  Application.CreateForm(TOtchet_rez, Otchet_rez);
  Application.CreateForm(TOtchet_stud, Otchet_stud);
  Application.Run;
end.
