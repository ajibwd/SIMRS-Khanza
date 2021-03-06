unit UUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIForm, ComCtrls, SUIStatusBar, StdCtrls, SUIButton,
  SUISideChannel, Grids, DBGrids, jpeg, DB, ADODB, MPlayer, SUIComboBox,
  SUIEdit, XPMan, SUIImagePanel, SUIDBCtrls, SUIProgressBar, Menus,
  SUIPopupMenu,ShellApi;
  
const
WM_ICONTRAY = WM_USER + 1;

type
  TfrmUtama = class(TForm)
    suiForm1: TsuiForm;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    OpenDialog1: TOpenDialog;
    XPManifest1: TXPManifest;
    suiImagePanel1: TsuiImagePanel;
    Timer1: TTimer;
    suiPopupMenu1: TsuiPopupMenu;
    Show1: TMenuItem;
    Exit1: TMenuItem;
    ADOTable1bel1: TDateTimeField;
    ADOTable1sound1: TWideStringField;
    ADOTable1bel2: TDateTimeField;
    ADOTable1sound2: TWideStringField;
    ADOTable1bel3: TDateTimeField;
    ADOTable1sound3: TWideStringField;
    ADOTable1bel4: TDateTimeField;
    ADOTable1sound4: TWideStringField;
    ADOTable1bel5: TDateTimeField;
    ADOTable1sound5: TWideStringField;
    ADOTable1bel6: TDateTimeField;
    ADOTable1sound6: TWideStringField;
    ADOTable1bel7: TDateTimeField;
    ADOTable1sound7: TWideStringField;
    ADOTable1bel8: TDateTimeField;
    ADOTable1sound8: TWideStringField;
    ADOTable1bel9: TDateTimeField;
    ADOTable1sound9: TWideStringField;
    ADOTable1bel10: TDateTimeField;
    ADOTable1sound10: TWideStringField;
    ADOTable1bel11: TDateTimeField;
    ADOTable1sound11: TWideStringField;
    ADOTable1bel12: TDateTimeField;
    ADOTable1sound12: TWideStringField;
    ADOTable1bel13: TDateTimeField;
    ADOTable1sound13: TWideStringField;
    ADOTable1bel14: TDateTimeField;
    ADOTable1sound14: TWideStringField;
    ADOTable1bel15: TDateTimeField;
    ADOTable1sound15: TWideStringField;
    PanelSenin: TsuiSideChannel;
    Label9: TLabel;
    DTPJam1: TDateTimePicker;
    bel1: TEdit;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    bel2: TEdit;
    DTPJam2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DTPJam3: TDateTimePicker;
    bel3: TEdit;
    suiButton3: TsuiButton;
    suiButton4: TsuiButton;
    bel4: TEdit;
    DTPJam4: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    DTPJam5: TDateTimePicker;
    bel5: TEdit;
    suiButton5: TsuiButton;
    suiButton6: TsuiButton;
    bel6: TEdit;
    DTPJam6: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    DTPJam7: TDateTimePicker;
    bel7: TEdit;
    suiButton7: TsuiButton;
    suiButton8: TsuiButton;
    bel8: TEdit;
    DTPJam8: TDateTimePicker;
    Label7: TLabel;
    Label8: TLabel;
    DTPJam9: TDateTimePicker;
    bel9: TEdit;
    suiButton9: TsuiButton;
    suiButton10: TsuiButton;
    bel10: TEdit;
    DTPJam10: TDateTimePicker;
    Label10: TLabel;
    Label14: TLabel;
    DTPJam11: TDateTimePicker;
    bel11: TEdit;
    suiButton11: TsuiButton;
    suiButton12: TsuiButton;
    bel12: TEdit;
    DTPJam12: TDateTimePicker;
    Label15: TLabel;
    Label16: TLabel;
    DTPJam13: TDateTimePicker;
    bel13: TEdit;
    suiButton13: TsuiButton;
    suiButton14: TsuiButton;
    bel14: TEdit;
    DTPJam14: TDateTimePicker;
    Label17: TLabel;
    Label18: TLabel;
    DTPJam15: TDateTimePicker;
    bel15: TEdit;
    suiButton15: TsuiButton;
    suiDBGrid1: TsuiDBGrid;
    BtnEdit: TsuiButton;
    BtnHapus: TsuiButton;
    BtnBatal: TsuiButton;
    Label11: TLabel;
    cmbSound: TComboBox;
    mp3Player: TMediaPlayer;
    panelSelasa: TsuiSideChannel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DTPJamselasa1: TDateTimePicker;
    belselasa1: TEdit;
    suiButton16: TsuiButton;
    suiButton17: TsuiButton;
    belselasa2: TEdit;
    DTPJamselasa2: TDateTimePicker;
    DTPJamselasa3: TDateTimePicker;
    belselasa3: TEdit;
    suiButton18: TsuiButton;
    suiButton19: TsuiButton;
    belselasa4: TEdit;
    DTPJamselasa4: TDateTimePicker;
    DTPJamselasa5: TDateTimePicker;
    belselasa5: TEdit;
    suiButton20: TsuiButton;
    suiButton21: TsuiButton;
    belselasa6: TEdit;
    DTPJamselasa6: TDateTimePicker;
    DTPJamselasa7: TDateTimePicker;
    belselasa7: TEdit;
    suiButton22: TsuiButton;
    suiButton23: TsuiButton;
    belselasa8: TEdit;
    DTPJamselasa8: TDateTimePicker;
    DTPJamselasa9: TDateTimePicker;
    belselasa9: TEdit;
    suiButton24: TsuiButton;
    suiButton25: TsuiButton;
    belselasa10: TEdit;
    DTPJamselasa10: TDateTimePicker;
    DTPJamselasa11: TDateTimePicker;
    belselasa11: TEdit;
    suiButton26: TsuiButton;
    suiButton27: TsuiButton;
    belselasa12: TEdit;
    DTPJamselasa12: TDateTimePicker;
    DTPJamselasa13: TDateTimePicker;
    belselasa13: TEdit;
    suiButton28: TsuiButton;
    suiButton29: TsuiButton;
    belselasa14: TEdit;
    DTPJamselasa14: TDateTimePicker;
    DTPJamselasa15: TDateTimePicker;
    belselasa15: TEdit;
    suiButton30: TsuiButton;
    suiDBGrid2: TsuiDBGrid;
    btnsimpanselalsa: TsuiButton;
    btneditselasa: TsuiButton;
    btnhapuselasa: TsuiButton;
    btnbatalselasa: TsuiButton;
    cmbsoundselasa: TComboBox;
    mp3playerselasa: TMediaPlayer;
    ADOTableselasa: TADOTable;
    DataSourceselasa: TDataSource;
    ADOTableselasabel1: TDateTimeField;
    ADOTableselasasound1: TWideStringField;
    ADOTableselasabel2: TDateTimeField;
    ADOTableselasasound2: TWideStringField;
    ADOTableselasabel3: TDateTimeField;
    ADOTableselasasound3: TWideStringField;
    ADOTableselasabel4: TDateTimeField;
    ADOTableselasasound4: TWideStringField;
    ADOTableselasabel5: TDateTimeField;
    ADOTableselasasound5: TWideStringField;
    ADOTableselasabel6: TDateTimeField;
    ADOTableselasasound6: TWideStringField;
    ADOTableselasabel7: TDateTimeField;
    ADOTableselasasound7: TWideStringField;
    ADOTableselasabel8: TDateTimeField;
    ADOTableselasasound8: TWideStringField;
    ADOTableselasabel9: TDateTimeField;
    ADOTableselasasound9: TWideStringField;
    ADOTableselasabel10: TDateTimeField;
    ADOTableselasasound10: TWideStringField;
    ADOTableselasabel11: TDateTimeField;
    ADOTableselasasound11: TWideStringField;
    ADOTableselasabel12: TDateTimeField;
    ADOTableselasasound12: TWideStringField;
    ADOTableselasabel13: TDateTimeField;
    ADOTableselasasound13: TWideStringField;
    ADOTableselasabel14: TDateTimeField;
    ADOTableselasasound14: TWideStringField;
    ADOTableselasabel15: TDateTimeField;
    ADOTableselasasound15: TWideStringField;
    panelrabu: TsuiSideChannel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DTPJamrabu1: TDateTimePicker;
    belrabu1: TEdit;
    suiButton31: TsuiButton;
    suiButton32: TsuiButton;
    belrabu2: TEdit;
    DTPJamrabu2: TDateTimePicker;
    DTPJamrabu3: TDateTimePicker;
    belrabu3: TEdit;
    suiButton33: TsuiButton;
    suiButton34: TsuiButton;
    belrabu4: TEdit;
    DTPJamrabu4: TDateTimePicker;
    DTPJamrabu5: TDateTimePicker;
    belrabu5: TEdit;
    suiButton35: TsuiButton;
    suiButton36: TsuiButton;
    belrabu6: TEdit;
    DTPJamrabu6: TDateTimePicker;
    DTPJamrabu7: TDateTimePicker;
    belrabu7: TEdit;
    suiButton37: TsuiButton;
    suiButton38: TsuiButton;
    belrabu8: TEdit;
    DTPJamrabu8: TDateTimePicker;
    DTPJamrabu9: TDateTimePicker;
    belrabu9: TEdit;
    suiButton39: TsuiButton;
    suiButton40: TsuiButton;
    belrabu10: TEdit;
    DTPJamrabu10: TDateTimePicker;
    DTPJamrabu11: TDateTimePicker;
    belrabu11: TEdit;
    suiButton41: TsuiButton;
    suiButton42: TsuiButton;
    belrabu12: TEdit;
    DTPJamrabu12: TDateTimePicker;
    DTPJamrabu13: TDateTimePicker;
    belrabu13: TEdit;
    suiButton43: TsuiButton;
    suiButton44: TsuiButton;
    belrabu14: TEdit;
    DTPJamrabu14: TDateTimePicker;
    DTPJamrabu15: TDateTimePicker;
    belrabu15: TEdit;
    suiButton45: TsuiButton;
    suiDBGrid3: TsuiDBGrid;
    btnsimpanrabu: TsuiButton;
    btneditrabu: TsuiButton;
    btnhapusrabu: TsuiButton;
    btnbatalrabu: TsuiButton;
    cmbsoundrabu: TComboBox;
    mp3playerrabu: TMediaPlayer;
    DataSourcerabu: TDataSource;
    ADOTablerabu: TADOTable;
    ADOTablerabubel1: TDateTimeField;
    ADOTablerabusound1: TWideStringField;
    ADOTablerabubel2: TDateTimeField;
    ADOTablerabusound2: TWideStringField;
    ADOTablerabubel3: TDateTimeField;
    ADOTablerabusound3: TWideStringField;
    ADOTablerabubel4: TDateTimeField;
    ADOTablerabusound4: TWideStringField;
    ADOTablerabubel5: TDateTimeField;
    ADOTablerabusound5: TWideStringField;
    ADOTablerabubel6: TDateTimeField;
    ADOTablerabusound6: TWideStringField;
    ADOTablerabubel7: TDateTimeField;
    ADOTablerabusound7: TWideStringField;
    ADOTablerabubel8: TDateTimeField;
    ADOTablerabusound8: TWideStringField;
    ADOTablerabubel9: TDateTimeField;
    ADOTablerabusound9: TWideStringField;
    ADOTablerabubel10: TDateTimeField;
    ADOTablerabusound10: TWideStringField;
    ADOTablerabubel11: TDateTimeField;
    ADOTablerabusound11: TWideStringField;
    ADOTablerabubel12: TDateTimeField;
    ADOTablerabusound12: TWideStringField;
    ADOTablerabubel13: TDateTimeField;
    ADOTablerabusound13: TWideStringField;
    ADOTablerabubel14: TDateTimeField;
    ADOTablerabusound14: TWideStringField;
    ADOTablerabubel15: TDateTimeField;
    ADOTablerabusound15: TWideStringField;
    btnSimpan: TsuiButton;
    panelKamis: TsuiSideChannel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    DTPJamkamis1: TDateTimePicker;
    belkamis1: TEdit;
    suiButton46: TsuiButton;
    suiButton47: TsuiButton;
    belkamis2: TEdit;
    DTPJamkamis2: TDateTimePicker;
    DTPJamkamis3: TDateTimePicker;
    belkamis3: TEdit;
    suiButton48: TsuiButton;
    suiButton49: TsuiButton;
    belkamis4: TEdit;
    DTPJamkamis4: TDateTimePicker;
    DTPJamkamis5: TDateTimePicker;
    belkamis5: TEdit;
    suiButton50: TsuiButton;
    suiButton51: TsuiButton;
    belkamis6: TEdit;
    DTPJamkamis6: TDateTimePicker;
    DTPJamkamis7: TDateTimePicker;
    belkamis7: TEdit;
    suiButton52: TsuiButton;
    suiButton53: TsuiButton;
    belkamis8: TEdit;
    DTPJamkamis8: TDateTimePicker;
    DTPJamkamis9: TDateTimePicker;
    belkamis9: TEdit;
    suiButton54: TsuiButton;
    suiButton55: TsuiButton;
    belkamis10: TEdit;
    DTPJamkamis10: TDateTimePicker;
    DTPJamkamis11: TDateTimePicker;
    belkamis11: TEdit;
    suiButton56: TsuiButton;
    suiButton57: TsuiButton;
    belkamis12: TEdit;
    DTPJamkamis12: TDateTimePicker;
    DTPJamkamis13: TDateTimePicker;
    belkamis13: TEdit;
    suiButton58: TsuiButton;
    suiButton59: TsuiButton;
    belkamis14: TEdit;
    DTPJamkamis14: TDateTimePicker;
    DTPJamkamis15: TDateTimePicker;
    belkamis15: TEdit;
    suiButton60: TsuiButton;
    suiDBGrid4: TsuiDBGrid;
    btnsimpankamis: TsuiButton;
    btneditkamis: TsuiButton;
    btnhapuskamis: TsuiButton;
    btnbatalkamis: TsuiButton;
    cmbsoundkamis: TComboBox;
    mp3playerkamis: TMediaPlayer;
    ADOTablekamis: TADOTable;
    DataSourcekamis: TDataSource;
    ADOTablekamisbel1: TDateTimeField;
    ADOTablekamissound1: TWideStringField;
    ADOTablekamisbel2: TDateTimeField;
    ADOTablekamissound2: TWideStringField;
    ADOTablekamisbel3: TDateTimeField;
    ADOTablekamissound3: TWideStringField;
    ADOTablekamisbel4: TDateTimeField;
    ADOTablekamissound4: TWideStringField;
    ADOTablekamisbel5: TDateTimeField;
    ADOTablekamissound5: TWideStringField;
    ADOTablekamisbel6: TDateTimeField;
    ADOTablekamissound6: TWideStringField;
    ADOTablekamisbel7: TDateTimeField;
    ADOTablekamissound7: TWideStringField;
    ADOTablekamisbel8: TDateTimeField;
    ADOTablekamissound8: TWideStringField;
    ADOTablekamisbel9: TDateTimeField;
    ADOTablekamissound9: TWideStringField;
    ADOTablekamisbel10: TDateTimeField;
    ADOTablekamissound10: TWideStringField;
    ADOTablekamisbel11: TDateTimeField;
    ADOTablekamissound11: TWideStringField;
    ADOTablekamisbel12: TDateTimeField;
    ADOTablekamissound12: TWideStringField;
    ADOTablekamisbel13: TDateTimeField;
    ADOTablekamissound13: TWideStringField;
    ADOTablekamisbel14: TDateTimeField;
    ADOTablekamissound14: TWideStringField;
    ADOTablekamisbel15: TDateTimeField;
    ADOTablekamissound15: TWideStringField;
    Paneljumat: TsuiSideChannel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    DTPJamjumat1: TDateTimePicker;
    beljumat1: TEdit;
    suiButton61: TsuiButton;
    suiButton62: TsuiButton;
    beljumat2: TEdit;
    DTPJamjumat2: TDateTimePicker;
    DTPJamjumat3: TDateTimePicker;
    beljumat3: TEdit;
    suiButton63: TsuiButton;
    suiButton64: TsuiButton;
    beljumat4: TEdit;
    DTPJamjumat4: TDateTimePicker;
    DTPJamjumat5: TDateTimePicker;
    beljumat5: TEdit;
    suiButton65: TsuiButton;
    suiButton66: TsuiButton;
    beljumat6: TEdit;
    DTPJamjumat6: TDateTimePicker;
    DTPJamjumat7: TDateTimePicker;
    beljumat7: TEdit;
    suiButton67: TsuiButton;
    suiButton68: TsuiButton;
    beljumat8: TEdit;
    DTPJamjumat8: TDateTimePicker;
    DTPJamjumat9: TDateTimePicker;
    beljumat9: TEdit;
    suiButton69: TsuiButton;
    suiButton70: TsuiButton;
    beljumat10: TEdit;
    DTPJamjumat10: TDateTimePicker;
    DTPJamjumat11: TDateTimePicker;
    beljumat11: TEdit;
    suiButton71: TsuiButton;
    suiButton72: TsuiButton;
    beljumat12: TEdit;
    DTPJamjumat12: TDateTimePicker;
    DTPJamjumat13: TDateTimePicker;
    beljumat13: TEdit;
    suiButton73: TsuiButton;
    suiButton74: TsuiButton;
    beljumat14: TEdit;
    DTPJamjumat14: TDateTimePicker;
    DTPJamjumat15: TDateTimePicker;
    beljumat15: TEdit;
    suiButton75: TsuiButton;
    suiDBGrid5: TsuiDBGrid;
    btsimpanjumat: TsuiButton;
    btneditjumat: TsuiButton;
    btnhapusjumat: TsuiButton;
    btnbataljumat: TsuiButton;
    cmbsoundjumat: TComboBox;
    mp3playerjumat: TMediaPlayer;
    DataSourcejumat: TDataSource;
    ADOTablejumat: TADOTable;
    ADOTablejumatbel1: TDateTimeField;
    ADOTablejumatsound1: TWideStringField;
    ADOTablejumatbel2: TDateTimeField;
    ADOTablejumatsound2: TWideStringField;
    ADOTablejumatbel3: TDateTimeField;
    ADOTablejumatsound3: TWideStringField;
    ADOTablejumatbel4: TDateTimeField;
    ADOTablejumatsound4: TWideStringField;
    ADOTablejumatbel5: TDateTimeField;
    ADOTablejumatsound5: TWideStringField;
    ADOTablejumatbel6: TDateTimeField;
    ADOTablejumatsound6: TWideStringField;
    ADOTablejumatbel7: TDateTimeField;
    ADOTablejumatsound7: TWideStringField;
    ADOTablejumatbel8: TDateTimeField;
    ADOTablejumatsound8: TWideStringField;
    ADOTablejumatbel9: TDateTimeField;
    ADOTablejumatsound9: TWideStringField;
    ADOTablejumatbel10: TDateTimeField;
    ADOTablejumatsound10: TWideStringField;
    ADOTablejumatbel11: TDateTimeField;
    ADOTablejumatsound11: TWideStringField;
    ADOTablejumatbel12: TDateTimeField;
    ADOTablejumatsound12: TWideStringField;
    ADOTablejumatbel13: TDateTimeField;
    ADOTablejumatsound13: TWideStringField;
    ADOTablejumatbel14: TDateTimeField;
    ADOTablejumatsound14: TWideStringField;
    ADOTablejumatbel15: TDateTimeField;
    ADOTablejumatsound15: TWideStringField;
    panelsabtu: TsuiSideChannel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    DTPJamsabtu1: TDateTimePicker;
    belsabtu1: TEdit;
    suiButton76: TsuiButton;
    suiButton77: TsuiButton;
    belsabtu2: TEdit;
    DTPJamsabtu2: TDateTimePicker;
    DTPJamsabtu3: TDateTimePicker;
    belsabtu3: TEdit;
    suiButton78: TsuiButton;
    suiButton79: TsuiButton;
    belsabtu4: TEdit;
    DTPJamsabtu4: TDateTimePicker;
    DTPJamsabtu5: TDateTimePicker;
    belsabtu5: TEdit;
    suiButton80: TsuiButton;
    suiButton81: TsuiButton;
    belsabtu6: TEdit;
    DTPJamsabtu6: TDateTimePicker;
    DTPJamsabtu7: TDateTimePicker;
    belsabtu7: TEdit;
    suiButton82: TsuiButton;
    suiButton83: TsuiButton;
    belsabtu8: TEdit;
    DTPJamsabtu8: TDateTimePicker;
    DTPJamsabtu9: TDateTimePicker;
    belsabtu9: TEdit;
    suiButton84: TsuiButton;
    suiButton85: TsuiButton;
    belsabtu10: TEdit;
    DTPJamsabtu10: TDateTimePicker;
    DTPJamsabtu11: TDateTimePicker;
    belsabtu11: TEdit;
    suiButton86: TsuiButton;
    suiButton87: TsuiButton;
    belsabtu12: TEdit;
    DTPJamsabtu12: TDateTimePicker;
    DTPJamsabtu13: TDateTimePicker;
    belsabtu13: TEdit;
    suiButton88: TsuiButton;
    suiButton89: TsuiButton;
    belsabtu14: TEdit;
    DTPJamsabtu14: TDateTimePicker;
    DTPJamsabtu15: TDateTimePicker;
    belsabtu15: TEdit;
    suiButton90: TsuiButton;
    suiDBGrid6: TsuiDBGrid;
    btnsimpansabtu: TsuiButton;
    btneditsabtu: TsuiButton;
    btnhapussabtu: TsuiButton;
    btnbatalsabtu: TsuiButton;
    cmbsoundsabtu: TComboBox;
    mp3playersabtu: TMediaPlayer;
    ADOTablesabtu: TADOTable;
    DataSourcesabttu: TDataSource;
    ADOTablesabtubel1: TDateTimeField;
    ADOTablesabtusound1: TWideStringField;
    ADOTablesabtubel2: TDateTimeField;
    ADOTablesabtusound2: TWideStringField;
    ADOTablesabtubel3: TDateTimeField;
    ADOTablesabtusound3: TWideStringField;
    ADOTablesabtubel4: TDateTimeField;
    ADOTablesabtusound4: TWideStringField;
    ADOTablesabtubel5: TDateTimeField;
    ADOTablesabtusound5: TWideStringField;
    ADOTablesabtubel6: TDateTimeField;
    ADOTablesabtusound6: TWideStringField;
    ADOTablesabtubel7: TDateTimeField;
    ADOTablesabtusound7: TWideStringField;
    ADOTablesabtubel8: TDateTimeField;
    ADOTablesabtusound8: TWideStringField;
    ADOTablesabtubel9: TDateTimeField;
    ADOTablesabtusound9: TWideStringField;
    ADOTablesabtubel10: TDateTimeField;
    ADOTablesabtusound10: TWideStringField;
    ADOTablesabtubel11: TDateTimeField;
    ADOTablesabtusound11: TWideStringField;
    ADOTablesabtubel12: TDateTimeField;
    ADOTablesabtusound12: TWideStringField;
    ADOTablesabtubel13: TDateTimeField;
    ADOTablesabtusound13: TWideStringField;
    ADOTablesabtubel14: TDateTimeField;
    ADOTablesabtusound14: TWideStringField;
    ADOTablesabtubel15: TDateTimeField;
    ADOTablesabtusound15: TWideStringField;
    Label19: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    BtnKeluar: TsuiButton;
    Image1: TImage;
    Label100: TLabel;
    procedure suiButton1Click(Sender: TObject);
    procedure BtnKeluarClick(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure suiButton9Click(Sender: TObject);
    procedure suiButton10Click(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure DTPJam1KeyPress(Sender: TObject; var Key: Char);
    procedure bel1KeyPress(Sender: TObject; var Key: Char);
    procedure DTPJam2KeyPress(Sender: TObject; var Key: Char);
    procedure bel2KeyPress(Sender: TObject; var Key: Char);
    procedure DTPJam3KeyPress(Sender: TObject; var Key: Char);
    procedure bel3KeyPress(Sender: TObject; var Key: Char);
    procedure DTPJam4KeyPress(Sender: TObject; var Key: Char);
    procedure bel4KeyPress(Sender: TObject; var Key: Char);
    procedure DTPJam5KeyPress(Sender: TObject; var Key: Char);
    procedure DTPJam6KeyPress(Sender: TObject; var Key: Char);
    procedure DTPJam7KeyPress(Sender: TObject; var Key: Char);
    procedure DTPJam8KeyPress(Sender: TObject; var Key: Char);
    procedure DTPJam9KeyPress(Sender: TObject; var Key: Char);
    procedure DTPJam10KeyPress(Sender: TObject; var Key: Char);
    procedure bel5KeyPress(Sender: TObject; var Key: Char);
    procedure bel6KeyPress(Sender: TObject; var Key: Char);
    procedure bel7KeyPress(Sender: TObject; var Key: Char);
    procedure bel8KeyPress(Sender: TObject; var Key: Char);
    procedure bel9KeyPress(Sender: TObject; var Key: Char);
    procedure bel10KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure suiDBGrid1CellClick(Column: TColumn);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure cmbSoundChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exit1Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure DTPJam11KeyPress(Sender: TObject; var Key: Char);
    procedure DTPJam12KeyPress(Sender: TObject; var Key: Char);
    procedure DTPJam13KeyPress(Sender: TObject; var Key: Char);
    procedure DTPJam14KeyPress(Sender: TObject; var Key: Char);
    procedure DTPJam15KeyPress(Sender: TObject; var Key: Char);
    procedure bel11KeyPress(Sender: TObject; var Key: Char);
    procedure bel12KeyPress(Sender: TObject; var Key: Char);
    procedure bel13KeyPress(Sender: TObject; var Key: Char);
    procedure bel14KeyPress(Sender: TObject; var Key: Char);
    procedure bel15KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton16Click(Sender: TObject);
    procedure suiButton17Click(Sender: TObject);
    procedure suiButton18Click(Sender: TObject);
    procedure suiButton19Click(Sender: TObject);
    procedure suiButton20Click(Sender: TObject);
    procedure suiButton21Click(Sender: TObject);
    procedure suiButton22Click(Sender: TObject);
    procedure suiButton23Click(Sender: TObject);
    procedure suiButton24Click(Sender: TObject);
    procedure suiButton25Click(Sender: TObject);
    procedure suiButton26Click(Sender: TObject);
    procedure suiButton27Click(Sender: TObject);
    procedure suiButton28Click(Sender: TObject);
    procedure suiButton29Click(Sender: TObject);
    procedure suiButton30Click(Sender: TObject);
    procedure cmbsoundselasaChange(Sender: TObject);
    procedure btnsimpanselalsaClick(Sender: TObject);
    procedure btnbatalselasaClick(Sender: TObject);
    procedure btneditselasaClick(Sender: TObject);
    procedure btnhapuselasaClick(Sender: TObject);
    procedure suiDBGrid2CellClick(Column: TColumn);
    procedure suiDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton31Click(Sender: TObject);
    procedure suiButton32Click(Sender: TObject);
    procedure suiButton33Click(Sender: TObject);
    procedure suiButton34Click(Sender: TObject);
    procedure suiButton35Click(Sender: TObject);
    procedure suiButton36Click(Sender: TObject);
    procedure suiButton37Click(Sender: TObject);
    procedure suiButton38Click(Sender: TObject);
    procedure suiButton39Click(Sender: TObject);
    procedure suiButton40Click(Sender: TObject);
    procedure suiButton41Click(Sender: TObject);
    procedure suiButton42Click(Sender: TObject);
    procedure suiButton43Click(Sender: TObject);
    procedure suiButton44Click(Sender: TObject);
    procedure suiButton45Click(Sender: TObject);
    procedure btnsimpanrabuClick(Sender: TObject);
    procedure btnbatalrabuClick(Sender: TObject);
    procedure btneditrabuClick(Sender: TObject);
    procedure btnhapusrabuClick(Sender: TObject);
    procedure cmbsoundrabuChange(Sender: TObject);
    procedure suiDBGrid3CellClick(Column: TColumn);
    procedure suiDBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton46Click(Sender: TObject);
    procedure suiButton47Click(Sender: TObject);
    procedure suiButton48Click(Sender: TObject);
    procedure suiButton49Click(Sender: TObject);
    procedure suiButton50Click(Sender: TObject);
    procedure suiButton51Click(Sender: TObject);
    procedure suiButton52Click(Sender: TObject);
    procedure suiButton53Click(Sender: TObject);
    procedure suiButton54Click(Sender: TObject);
    procedure suiButton55Click(Sender: TObject);
    procedure suiButton56Click(Sender: TObject);
    procedure suiButton57Click(Sender: TObject);
    procedure suiButton58Click(Sender: TObject);
    procedure suiButton59Click(Sender: TObject);
    procedure suiButton60Click(Sender: TObject);
    procedure btnsimpankamisClick(Sender: TObject);
    procedure btnbatalkamisClick(Sender: TObject);
    procedure btnhapuskamisClick(Sender: TObject);
    procedure btneditkamisClick(Sender: TObject);
    procedure cmbsoundkamisChange(Sender: TObject);
    procedure suiDBGrid4CellClick(Column: TColumn);
    procedure suiDBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton61Click(Sender: TObject);
    procedure suiButton62Click(Sender: TObject);
    procedure suiButton63Click(Sender: TObject);
    procedure suiButton64Click(Sender: TObject);
    procedure suiButton65Click(Sender: TObject);
    procedure suiButton66Click(Sender: TObject);
    procedure suiButton67Click(Sender: TObject);
    procedure suiButton68Click(Sender: TObject);
    procedure suiButton69Click(Sender: TObject);
    procedure suiButton70Click(Sender: TObject);
    procedure suiButton71Click(Sender: TObject);
    procedure suiButton72Click(Sender: TObject);
    procedure suiButton73Click(Sender: TObject);
    procedure suiButton74Click(Sender: TObject);
    procedure suiButton75Click(Sender: TObject);
    procedure btsimpanjumatClick(Sender: TObject);
    procedure btnbataljumatClick(Sender: TObject);
    procedure btneditjumatClick(Sender: TObject);
    procedure btnhapusjumatClick(Sender: TObject);
    procedure cmbsoundjumatChange(Sender: TObject);
    procedure suiDBGrid5CellClick(Column: TColumn);
    procedure suiDBGrid5KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton76Click(Sender: TObject);
    procedure suiButton77Click(Sender: TObject);
    procedure suiButton78Click(Sender: TObject);
    procedure suiButton79Click(Sender: TObject);
    procedure suiButton80Click(Sender: TObject);
    procedure suiButton81Click(Sender: TObject);
    procedure suiButton82Click(Sender: TObject);
    procedure suiButton83Click(Sender: TObject);
    procedure suiButton84Click(Sender: TObject);
    procedure suiButton85Click(Sender: TObject);
    procedure suiButton86Click(Sender: TObject);
    procedure suiButton87Click(Sender: TObject);
    procedure suiButton88Click(Sender: TObject);
    procedure suiButton89Click(Sender: TObject);
    procedure suiButton90Click(Sender: TObject);
    procedure btnsimpansabtuClick(Sender: TObject);
    procedure btnbatalsabtuClick(Sender: TObject);
    procedure btneditsabtuClick(Sender: TObject);
    procedure btnhapussabtuClick(Sender: TObject);
    procedure cmbsoundsabtuChange(Sender: TObject);
    procedure suiDBGrid6CellClick(Column: TColumn);
    procedure suiDBGrid6KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Icontray(var Msg: TMessage); message WM_ICONTRAY;   
  public
    { Public declarations }
  end;

var
  frmUtama: TfrmUtama;
  NotifyIconData: TNotifyIconData;

implementation

uses DateUtils;

{$R *.dfm}

procedure TfrmUtama.Icontray(var Msg: TMessage);
var
  CursorPos : TPoint;
begin 
  if Msg.lParam = WM_RBUTTONDOWN then
  begin
      GetCursorPos(CursorPos);
      SetForegroundWindow(Handle);        // suggested by Berend Radstaat
      suiPopupMenu1.Popup(CursorPos.x, CursorPos.y);
      PostMessage(Handle, WM_NULL, 0, 0); // suggested by Berend Radstaat
  end
  else
  inherited;
end; 

procedure TfrmUtama.suiButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    bel1.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.BtnKeluarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmUtama.suiButton2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    bel2.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton3Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    bel3.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton4Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    bel4.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton5Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    bel5.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton6Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    bel6.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton7Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    bel7.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton8Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    bel8.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton9Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    bel9.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton10Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    bel10.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.BtnSimpanClick(Sender: TObject);
begin
  if(Trim(bel1.Text)='')and(Trim(bel2.Text)='')and(Trim(bel3.Text)='')and(Trim(bel4.Text)='')
    and(Trim(bel5.Text)='')and(Trim(bel6.Text)='')and(Trim(bel7.Text)='')and(Trim(bel8.Text)='')
    and(Trim(bel9.Text)='')and(Trim(bel10.Text)='')and(Trim(bel15.Text)='')
    and(Trim(bel11.Text)='')and(Trim(bel12.Text)='')and(Trim(bel13.Text)='')and(Trim(bel14.Text)='') then
  begin
     MessageDlg('Minimal harus ada satu sound terisi..!',mtInformation,[mbOK],0);
     bel1.Text;
  end
  else
  if(not ADOTable1.IsEmpty)then
  begin
     MessageDlg('Maaf data sudah terisi, hanya bisa satu record saja..!',mtInformation,[mbOK],0);
     bel1.Text;
  end
  else
  if(ADOTable1.IsEmpty)then
  begin
     ADOTable1.Insert;
     ADOTable1bel1.Value:=DTPJam1.Time;
     ADOTable1sound1.Value:=bel1.Text;

     ADOTable1bel2.Value:=DTPJam2.Time;
     ADOTable1sound2.Value:=bel2.Text;

     ADOTable1bel3.Value:=DTPJam3.Time;
     ADOTable1sound3.Value:=bel3.Text;

     ADOTable1bel4.Value:=DTPJam4.Time;
     ADOTable1sound4.Value:=bel4.Text;

     ADOTable1bel5.Value:=DTPJam5.Time;
     ADOTable1sound5.Value:=bel5.Text;

     ADOTable1bel6.Value:=DTPJam6.Time;
     ADOTable1sound6.Value:=bel6.Text;

     ADOTable1bel7.Value:=DTPJam7.Time;
     ADOTable1sound7.Value:=bel7.Text;

     ADOTable1bel8.Value:=DTPJam8.Time;
     ADOTable1sound8.Value:=bel8.Text;

     ADOTable1bel9.Value:=DTPJam9.Time;
     ADOTable1sound9.Value:=bel9.Text;

     ADOTable1bel10.Value:=DTPJam10.Time;
     ADOTable1sound10.Value:=bel10.Text;

     ADOTable1bel11.Value:=DTPJam11.Time;
     ADOTable1sound11.Value:=bel11.Text;

     ADOTable1bel12.Value:=DTPJam12.Time;
     ADOTable1sound12.Value:=bel12.Text;

     ADOTable1bel13.Value:=DTPJam13.Time;
     ADOTable1sound13.Value:=bel13.Text;

     ADOTable1bel14.Value:=DTPJam14.Time;
     ADOTable1sound14.Value:=bel14.Text;

     ADOTable1bel15.Value:=DTPJam15.Time;
     ADOTable1sound15.Value:=bel15.Text;
     
     ADOTable1.Post;
     BtnBatalClick(sender);
  end;
end;

procedure TfrmUtama.BtnHapusClick(Sender: TObject);
begin
  if(not ADOTable1.IsEmpty)then ADOTable1.Delete
  else
  if(ADOTable1.IsEmpty) then
  begin
    MessageDlg('Data sudah kosong..!!!',mtWarning,[mbOK],0);
    bel1.SetFocus;
  end;
end;

procedure TfrmUtama.BtnBatalClick(Sender: TObject);
begin
  DTPJam1.Time:=Now;
  bel1.Clear;

  DTPJam2.Time:=Now;
  bel2.Clear;

  DTPJam3.Time:=Now;
  bel3.Clear;

  DTPJam4.Time:=Now;
  bel4.Clear;

  DTPJam5.Time:=Now;
  bel5.Clear;

  DTPJam6.Time:=Now;
  bel6.Clear;

  DTPJam7.Time:=Now;
  bel7.Clear;

  DTPJam8.Time:=Now;
  bel8.Clear;

  DTPJam9.Time:=Now;
  bel9.Clear;

  DTPJam10.Time:=Now;
  bel10.Clear;

  DTPJam11.Time:=Now;
  bel11.Clear;

  DTPJam12.Time:=Now;
  bel12.Clear;

  DTPJam13.Time:=Now;
  bel13.Clear;

  DTPJam14.Time:=Now;
  bel14.Clear;

  DTPJam15.Time:=Now;
  bel15.Clear;
  DTPJam1.SetFocus;
end;

procedure TfrmUtama.BtnEditClick(Sender: TObject);
begin
  if(Trim(bel1.Text)='')and(Trim(bel2.Text)='')and(Trim(bel3.Text)='')and(Trim(bel4.Text)='')
    and(Trim(bel5.Text)='')and(Trim(bel6.Text)='')and(Trim(bel7.Text)='')and(Trim(bel8.Text)='')
    and(Trim(bel9.Text)='')and(Trim(bel10.Text)='')and(Trim(bel15.Text)='')
    and(Trim(bel11.Text)='')and(Trim(bel12.Text)='')and(Trim(bel13.Text)='')and(Trim(bel14.Text)='') then
  begin
     MessageDlg('Minimal harus ada satu sound terisi..!',mtInformation,[mbOK],0);
     bel1.Text;
  end
  else
  if(ADOTable1.IsEmpty)then
  begin
     MessageDlg('Maaf data masih kosong, tidak ada data yang bisa anda edit..!',mtInformation,[mbOK],0);
     bel1.Text;
  end
  else
  if(not ADOTable1.IsEmpty)then
  begin
     ADOTable1.Edit;
     ADOTable1bel1.Value:=DTPJam1.Time;
     ADOTable1sound1.Value:=bel1.Text;

     ADOTable1bel2.Value:=DTPJam2.Time;
     ADOTable1sound2.Value:=bel2.Text;

     ADOTable1bel3.Value:=DTPJam3.Time;
     ADOTable1sound3.Value:=bel3.Text;

     ADOTable1bel4.Value:=DTPJam4.Time;
     ADOTable1sound4.Value:=bel4.Text;

     ADOTable1bel5.Value:=DTPJam5.Time;
     ADOTable1sound5.Value:=bel5.Text;

     ADOTable1bel6.Value:=DTPJam6.Time;
     ADOTable1sound6.Value:=bel6.Text;

     ADOTable1bel7.Value:=DTPJam7.Time;
     ADOTable1sound7.Value:=bel7.Text;

     ADOTable1bel8.Value:=DTPJam8.Time;
     ADOTable1sound8.Value:=bel8.Text;

     ADOTable1bel9.Value:=DTPJam9.Time;
     ADOTable1sound9.Value:=bel9.Text;

     ADOTable1bel10.Value:=DTPJam10.Time;
     ADOTable1sound10.Value:=bel10.Text;

     ADOTable1bel11.Value:=DTPJam11.Time;
     ADOTable1sound11.Value:=bel11.Text;

     ADOTable1bel12.Value:=DTPJam12.Time;
     ADOTable1sound12.Value:=bel12.Text;

     ADOTable1bel13.Value:=DTPJam13.Time;
     ADOTable1sound13.Value:=bel13.Text;

     ADOTable1bel14.Value:=DTPJam14.Time;
     ADOTable1sound14.Value:=bel14.Text;

     ADOTable1bel15.Value:=DTPJam15.Time;
     ADOTable1sound15.Value:=bel15.Text;
     ADOTable1.Post;
     BtnBatalClick(sender);
  end;
end;

procedure TfrmUtama.DTPJam1KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then bel1.SetFocus;
end;

procedure TfrmUtama.bel1KeyPress(Sender: TObject; var Key: Char);
begin
 if(Key=chr(13))then DTPJam2.SetFocus;
end;

procedure TfrmUtama.DTPJam2KeyPress(Sender: TObject; var Key: Char);
begin
 if(Key=chr(13))then bel2.SetFocus;
end;

procedure TfrmUtama.bel2KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then DTPJam3.SetFocus;
end;

procedure TfrmUtama.DTPJam3KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then bel3.SetFocus;
end;

procedure TfrmUtama.bel3KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then DTPJam4.SetFocus;
end;

procedure TfrmUtama.DTPJam4KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then bel4.SetFocus;
end;

procedure TfrmUtama.bel4KeyPress(Sender: TObject; var Key: Char);
begin
 if(Key=chr(13))then DTPJam5.SetFocus;
end;

procedure TfrmUtama.DTPJam5KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then bel5.SetFocus;
end;

procedure TfrmUtama.DTPJam6KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then bel6.SetFocus;
end;

procedure TfrmUtama.DTPJam7KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then bel7.SetFocus;
end;

procedure TfrmUtama.DTPJam8KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then bel8.SetFocus;
end;

procedure TfrmUtama.DTPJam9KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then bel9.SetFocus;
end;

procedure TfrmUtama.DTPJam10KeyPress(Sender: TObject; var Key: Char);
begin
 if(Key=chr(13))then bel10.SetFocus;
end;

procedure TfrmUtama.bel5KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then DTPJam6.SetFocus;
end;

procedure TfrmUtama.bel6KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then DTPJam7.SetFocus;
end;

procedure TfrmUtama.bel7KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then DTPJam8.SetFocus;
end;

procedure TfrmUtama.bel8KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then DTPJam9.SetFocus;
end;

procedure TfrmUtama.bel9KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then DTPJam10.SetFocus;
end;

procedure TfrmUtama.bel10KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then DTPJam11.SetFocus;
end;

procedure TfrmUtama.FormShow(Sender: TObject);
begin
  Label12.Caption:=TimeToStr(Now);
  BtnBatalClick(sender);  
  btnbatalselasaClick(sender);   
  btnbatalrabuClick(sender);    
  btnbatalkamisClick(sender);
  btnbataljumatClick(sender);
  btnbatalsabtuClick(sender);
  ADOTable1.Active:=true;      
  ADOTableselasa.Active:=true;
  ADOTablerabu.Active:=true;  
  ADOTablekamis.Active:=true;
  ADOTablejumat.Active:=true;  
  ADOTablesabtu.Active:=true;
  Label19.Caption:=FormatDateTime('dddd',now());
end;

procedure TfrmUtama.suiDBGrid1CellClick(Column: TColumn);
begin
  if(not ADOTable1.IsEmpty)then
  begin
    DTPJam1.Time:=ADOTable1bel1.Value;
    bel1.Text:=ADOTable1sound1.Value;

    DTPJam2.Time:=ADOTable1bel2.Value;
    bel2.Text:=ADOTable1sound2.Value;

    DTPJam3.Time:=ADOTable1bel3.Value;
    bel3.Text:=ADOTable1sound3.Value;

    DTPJam4.Time:=ADOTable1bel4.Value;
    bel4.Text:=ADOTable1sound4.Value;

    DTPJam5.Time:=ADOTable1bel5.Value;
    bel5.Text:=ADOTable1sound5.Value;

    DTPJam6.Time:=ADOTable1bel6.Value;
    bel6.Text:=ADOTable1sound6.Value;

    DTPJam7.Time:=ADOTable1bel7.Value;
    bel7.Text:=ADOTable1sound7.Value;

    DTPJam8.Time:=ADOTable1bel8.Value;
    bel8.Text:=ADOTable1sound8.Value;

    DTPJam9.Time:=ADOTable1bel9.Value;
    bel9.Text:=ADOTable1sound9.Value;

    DTPJam10.Time:=ADOTable1bel10.Value;
    bel10.Text:=ADOTable1sound10.Value;

    DTPJam11.Time:=ADOTable1bel11.Value;
    bel11.Text:=ADOTable1sound11.Value;

    DTPJam12.Time:=ADOTable1bel12.Value;
    bel12.Text:=ADOTable1sound12.Value;

    DTPJam13.Time:=ADOTable1bel13.Value;
    bel13.Text:=ADOTable1sound13.Value;

    DTPJam14.Time:=ADOTable1bel14.Value;
    bel14.Text:=ADOTable1sound14.Value;

    DTPJam15.Time:=ADOTable1bel15.Value;
    bel15.Text:=ADOTable1sound15.Value;
  end
end;

procedure TfrmUtama.suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if(not ADOTable1.IsEmpty)then
  begin
    DTPJam1.Time:=ADOTable1bel1.Value;
    bel1.Text:=ADOTable1sound1.Value;

    DTPJam2.Time:=ADOTable1bel2.Value;
    bel2.Text:=ADOTable1sound2.Value;

    DTPJam3.Time:=ADOTable1bel3.Value;
    bel3.Text:=ADOTable1sound3.Value;

    DTPJam4.Time:=ADOTable1bel4.Value;
    bel4.Text:=ADOTable1sound4.Value;

    DTPJam5.Time:=ADOTable1bel5.Value;
    bel5.Text:=ADOTable1sound5.Value;

    DTPJam6.Time:=ADOTable1bel6.Value;
    bel6.Text:=ADOTable1sound6.Value;

    DTPJam7.Time:=ADOTable1bel7.Value;
    bel7.Text:=ADOTable1sound7.Value;

    DTPJam8.Time:=ADOTable1bel8.Value;
    bel8.Text:=ADOTable1sound8.Value;

    DTPJam9.Time:=ADOTable1bel9.Value;
    bel9.Text:=ADOTable1sound9.Value;

    DTPJam10.Time:=ADOTable1bel10.Value;
    bel10.Text:=ADOTable1sound10.Value;

    DTPJam11.Time:=ADOTable1bel11.Value;
    bel11.Text:=ADOTable1sound11.Value;

    DTPJam12.Time:=ADOTable1bel12.Value;
    bel12.Text:=ADOTable1sound12.Value;

    DTPJam13.Time:=ADOTable1bel13.Value;
    bel13.Text:=ADOTable1sound13.Value;

    DTPJam14.Time:=ADOTable1bel14.Value;
    bel14.Text:=ADOTable1sound14.Value;

    DTPJam15.Time:=ADOTable1bel15.Value;
    bel15.Text:=ADOTable1sound15.Value
  end
end;

procedure TfrmUtama.Timer1Timer(Sender: TObject);
begin
  Label12.Caption:=TimeToStr(Now);
	if(UpperCase(label19.caption)='SENIN')or (UpperCase(label19.caption)='MONDAY')then
    begin
		if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel1.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel2.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel3.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel4.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel5.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel6.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel7.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel8.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel9.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel10.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel11.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel12.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel13.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel14.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel15.Value))then
		  begin
		  
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel1.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound1.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel2.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound2.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel3.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound3.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel4.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound4.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel5.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound5.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel6.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound6.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel7.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound7.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel8.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound8.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel9.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound9.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel10.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound10.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel11.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound11.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel12.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound12.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel13.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound13.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel14.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound14.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTable1bel15.Value))then
			begin
			  mp3Player.FileName:=ADOTable1sound15.Value;
			end
			else
			if(cmbSound.Text='')then
			begin
			  mp3Player.Close;
			end;
			if FileExists(mp3Player.FileName)then
			begin
			   mp3Player.Open;
			   mp3Player.Play;
			end
			else
			if not FileExists(mp3Player.FileName)then
			begin
			  mp3Player.Close;
			end;
		  end;
	end
  else
  	if(UpperCase(label19.caption)='SELASA')or (UpperCase(label19.caption)='TUESDAY')then
    begin
		if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel1.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel2.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel3.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel4.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel5.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel6.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel7.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel8.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel9.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel10.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel11.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel12.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel13.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel14.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel15.Value))then
		  begin
		  
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel1.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound1.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel2.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound2.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel3.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound3.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel4.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound4.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel5.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound5.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel6.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound6.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel7.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound7.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel8.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound8.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel9.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound9.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel10.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound10.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel11.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound11.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel12.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound12.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel13.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound13.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel14.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound14.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTableselasabel15.Value))then
			begin
			  mp3Playerselasa.FileName:=ADOTableselasasound15.Value;
			end
			else
			if(cmbSound.Text='')then
			begin
			  mp3Playerselasa.Close;
			end;
			if FileExists(mp3Playerselasa.FileName)then
			begin
			   mp3Playerselasa.Open;
			   mp3Playerselasa.Play;
			end
			else
			if not FileExists(mp3Playerselasa.FileName)then
			begin
			  mp3Playerselasa.Close;
			end;
		  end;
	end
  ELSE
  	if(UpperCase(label19.caption)='RABU')or (UpperCase(label19.caption)='WEDNESDAY')then
    begin
		if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel1.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel2.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel3.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel4.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel5.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel6.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel7.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel8.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel9.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel10.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel11.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel12.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel13.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel14.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel15.Value))then
		  begin
		  
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel1.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound1.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel2.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound2.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel3.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound3.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel4.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound4.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel5.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound5.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel6.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound6.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel7.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound7.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel8.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound8.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel9.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound9.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel10.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound10.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel11.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound11.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel12.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound12.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel13.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound13.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel14.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound14.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablerabubel15.Value))then
			begin
			  mp3Playerrabu.FileName:=ADOTablerabusound15.Value;
			end
			else
			if(cmbSound.Text='')then
			begin
			  mp3Playerrabu.Close;
			end;
			if FileExists(mp3Playerrabu.FileName)then
			begin
			   mp3Playerrabu.Open;
			   mp3Playerrabu.Play;
			end
			else
			if not FileExists(mp3Playerrabu.FileName)then
			begin
			  mp3Playerrabu.Close;
			end;
		  end;
	end
  ELSE
  	if(UpperCase(label19.caption)='KAMIS')or (UpperCase(label19.caption)='THURSDAY')then
    begin
		if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel1.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel2.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel3.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel4.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel5.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel6.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel7.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel8.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel9.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel10.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel11.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel12.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel13.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel14.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel15.Value))then
		  begin
		  
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel1.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound1.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel2.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound2.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel3.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound3.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel4.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound4.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel5.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound5.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel6.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound6.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel7.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound7.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel8.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound8.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel9.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound9.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel10.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound10.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel11.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound11.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel12.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound12.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel13.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound13.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel14.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound14.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablekamisbel15.Value))then
			begin
			  mp3Playerkamis.FileName:=ADOTablekamissound15.Value;
			end
			else
			if(cmbSound.Text='')then
			begin
			  mp3Playerkamis.Close;
			end;
			if FileExists(mp3Playerkamis.FileName)then
			begin
			   mp3Playerkamis.Open;
			   mp3Playerkamis.Play;
			end
			else
			if not FileExists(mp3Playerkamis.FileName)then
			begin
			  mp3Playerkamis.Close;
			end;
		  end;
	end
  ELSE
  	if(UpperCase(label19.caption)='JUMAT')or (UpperCase(label19.caption)='FRIDAY')then
    begin
		if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel1.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel2.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel3.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel4.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel5.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel6.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel7.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel8.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel9.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel10.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel11.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel12.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel13.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel14.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel15.Value))then
		  begin
		  
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel1.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound1.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel2.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound2.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel3.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound3.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel4.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound4.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel5.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound5.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel6.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound6.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel7.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound7.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel8.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound8.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel9.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound9.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel10.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound10.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel11.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound11.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel12.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound12.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel13.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound13.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel14.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound14.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablejumatbel15.Value))then
			begin
			  mp3Playerjumat.FileName:=ADOTablejumatsound15.Value;
			end
			else
			if(cmbSound.Text='')then
			begin
			  mp3Playerjumat.Close;
			end;
			if FileExists(mp3Playerjumat.FileName)then
			begin
			   mp3Playerjumat.Open;
			   mp3Playerjumat.Play;
			end
			else
			if not FileExists(mp3Playerjumat.FileName)then
			begin
			  mp3Playerjumat.Close;
			end;
		  end;
	end
  ELSE
  	if(UpperCase(label19.caption)='SABTU')or (UpperCase(label19.caption)='SATURDAY')then
    begin
		if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel1.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel2.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel3.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel4.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel5.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel6.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel7.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel8.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel9.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel10.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel11.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel12.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel13.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel14.Value))or
			(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel15.Value))then
		  begin
		  
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel1.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound1.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel2.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound2.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel3.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound3.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel4.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound4.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel5.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound5.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel6.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound6.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel7.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound7.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel8.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound8.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel9.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound9.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel10.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound10.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel11.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound11.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel12.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound12.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel13.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound13.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel14.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound14.Value;
			end
			else
			if(FormatDateTime('hh:mm:ss',Now)=FormatDateTime('hh:mm:ss',ADOTablesabtubel15.Value))then
			begin
			  mp3Playersabtu.FileName:=ADOTablesabtusound15.Value;
			end
			else
			if(cmbSound.Text='')then
			begin
			  mp3Playersabtu.Close;
			end;
			if FileExists(mp3Playersabtu.FileName)then
			begin
			   mp3Playersabtu.Open;
			   mp3Playersabtu.Play;
			end
			else
			if not FileExists(mp3Playersabtu.FileName)then
			begin
			  mp3Playersabtu.Close;
			end;
		  end;
	end
end;

procedure TfrmUtama.cmbSoundChange(Sender: TObject);
begin
  if(cmbSound.Text='Bel 1')then
  begin
     mp3Player.FileName:=ADOTable1sound1.Value;
  end
  else
  if(cmbSound.Text='Bel 2')then
  begin
    mp3Player.FileName:=ADOTable1sound2.Value;
  end
  else
  if(cmbSound.Text='Bel 3')then
  begin
    mp3Player.FileName:=ADOTable1sound3.Value;
  end
  else
  if(cmbSound.Text='Bel 4')then
  begin
    mp3Player.FileName:=ADOTable1sound4.Value;
  end
  else
  if(cmbSound.Text='Bel 5')then
  begin
    mp3Player.FileName:=ADOTable1sound5.Value;
  end
  else
  if(cmbSound.Text='Bel 6')then
  begin
    mp3Player.FileName:=ADOTable1sound6.Value;
  end
  else
  if(cmbSound.Text='Bel 7')then
  begin
    mp3Player.FileName:=ADOTable1sound7.Value;
  end
  else
  if(cmbSound.Text='Bel 8')then
  begin
    mp3Player.FileName:=ADOTable1sound8.Value;
  end
  else
  if(cmbSound.Text='Bel 9')then
  begin
    mp3Player.FileName:=ADOTable1sound9.Value;
  end
  else
  if(cmbSound.Text='Bel 10')then
  begin
    mp3Player.FileName:=ADOTable1sound10.Value;
  end
  else
  if(cmbSound.Text='Bel 11')then
  begin
    mp3Player.FileName:=ADOTable1sound11.Value;
  end
  else
  if(cmbSound.Text='Bel 12')then
  begin
    mp3Player.FileName:=ADOTable1sound12.Value;
  end
  else
  if(cmbSound.Text='Bel 13')then
  begin
    mp3Player.FileName:=ADOTable1sound13.Value;
  end
  else
  if(cmbSound.Text='Bel 14')then
  begin
    mp3Player.FileName:=ADOTable1sound14.Value;
  end
  else
  if(cmbSound.Text='Bel 15')then
  begin
    mp3Player.FileName:=ADOTable1sound15.Value;
  end
  else
  if(cmbSound.Text='')then
  begin
    mp3Player.Close;
  end;
  if FileExists(mp3Player.FileName)then
  begin
      mp3Player.Open 
  end
  else
  if not FileExists(mp3Player.FileName)then mp3Player.Close
end;

procedure TfrmUtama.FormCreate(Sender: TObject);
begin
 with NotifyIconData do
 begin
   hIcon := Icon.Handle;
   StrPCopy(szTip, Application.Title);
   Wnd := Handle;
   uCallbackMessage := WM_ICONTRAY;
   uID := 1;
   uFlags := NIF_MESSAGE + NIF_ICON + NIF_TIP;
   cbSize := sizeof(TNotifyIconData);
 end;
    Shell_NotifyIcon(NIM_ADD, @NotifyIconData);
end;

procedure TfrmUtama.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caNone;     
  Hide;
  Shell_NotifyIcon(NIM_ADD, @NotifyIconData);
end;

procedure TfrmUtama.Exit1Click(Sender: TObject);
begin
  Shell_NotifyIcon(NIM_DELETE, @NotifyIconData); 
  Application.ProcessMessages;
  Application.Terminate; 
end;

procedure TfrmUtama.Show1Click(Sender: TObject);
begin
  Show;     
  Shell_NotifyIcon(NIM_DELETE, @NotifyIconData); 
end;

procedure TfrmUtama.DTPJam11KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then bel11.SetFocus;
end;

procedure TfrmUtama.DTPJam12KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then bel12.SetFocus;
end;

procedure TfrmUtama.DTPJam13KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then bel13.SetFocus;
end;

procedure TfrmUtama.DTPJam14KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then bel14.SetFocus;
end;

procedure TfrmUtama.DTPJam15KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then bel15.SetFocus;
end;

procedure TfrmUtama.bel11KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then DTPJam12.SetFocus;
end;

procedure TfrmUtama.bel12KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then DTPJam13.SetFocus;
end;

procedure TfrmUtama.bel13KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then DTPJam14.SetFocus;
end;

procedure TfrmUtama.bel14KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then DTPJam15.SetFocus;
end;

procedure TfrmUtama.bel15KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=chr(13))then BtnSimpan.SetFocus;
end;

procedure TfrmUtama.suiButton16Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa1.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton17Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa2.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton18Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa3.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton19Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa4.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton20Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa5.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton21Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa6.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton22Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa7.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton23Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa8.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton24Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa9.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton25Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa10.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton26Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa11.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton27Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa12.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton28Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa13.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton29Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa14.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton30Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belselasa15.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.cmbsoundselasaChange(Sender: TObject);
begin
  if(cmbsoundselasa.Text='Bel 1')then
  begin
     mp3playerselasa.FileName:=ADOTableselasasound1.Value;
  end
  else
  if(cmbsoundselasa.Text='Bel 2')then
  begin
    mp3playerselasa.FileName:=ADOTableselasasound2.Value;
  end
  else
  if(cmbsoundselasa.Text='Bel 3')then
  begin
    mp3playerselasa.FileName:=ADOTableselasasound3.Value;
  end
  else
  if(cmbsoundselasa.Text='Bel 4')then
  begin
    mp3playerselasa.FileName:=ADOTableselasasound4.Value;
  end
  else
  if(cmbsoundselasa.Text='Bel 5')then
  begin
    mp3playerselasa.FileName:=ADOTableselasasound5.Value;
  end
  else
  if(cmbsoundselasa.Text='Bel 6')then
  begin
    mp3playerselasa.FileName:=ADOTableselasasound6.Value;
  end
  else
  if(cmbsoundselasa.Text='Bel 7')then
  begin
    mp3playerselasa.FileName:=ADOTableselasasound7.Value;
  end
  else
  if(cmbsoundselasa.Text='Bel 8')then
  begin
    mp3playerselasa.FileName:=ADOTableselasasound8.Value;
  end
  else
  if(cmbsoundselasa.Text='Bel 9')then
  begin
    mp3playerselasa.FileName:=ADOTableselasasound9.Value;
  end
  else
  if(cmbsoundselasa.Text='Bel 10')then
  begin
    mp3playerselasa.FileName:=ADOTableselasasound10.Value;
  end
  else
  if(cmbsoundselasa.Text='Bel 11')then
  begin
    mp3playerselasa.FileName:=ADOTableselasasound11.Value;
  end
  else
  if(cmbsoundselasa.Text='Bel 12')then
  begin
    mp3playerselasa.FileName:=ADOTableselasasound12.Value;
  end
  else
  if(cmbsoundselasa.Text='Bel 13')then
  begin
    mp3playerselasa.FileName:=ADOTableselasasound13.Value;
  end
  else
  if(cmbsoundselasa.Text='Bel 14')then
  begin
    mp3playerselasa.FileName:=ADOTableselasasound14.Value;
  end
  else
  if(cmbsoundselasa.Text='Bel 15')then
  begin
    mp3playerselasa.FileName:=ADOTableselasasound15.Value;
  end
  else
  if(cmbsoundselasa.Text='')then
  begin
    mp3playerselasa.Close;
  end;
  if FileExists(mp3playerselasa.FileName)then
  begin
      mp3playerselasa.Open 
  end
  else
  if not FileExists(mp3playerselasa.FileName)then mp3playerselasa.Close
end;

procedure TfrmUtama.btnsimpanselalsaClick(Sender: TObject);
begin
  if(Trim(belselasa1.Text)='')and(Trim(belselasa2.Text)='')and(Trim(belselasa3.Text)='')and(Trim(belselasa4.Text)='')
    and(Trim(belselasa5.Text)='')and(Trim(belselasa6.Text)='')and(Trim(belselasa7.Text)='')and(Trim(belselasa8.Text)='')
    and(Trim(belselasa9.Text)='')and(Trim(belselasa10.Text)='')and(Trim(belselasa15.Text)='')
    and(Trim(belselasa11.Text)='')and(Trim(belselasa12.Text)='')and(Trim(belselasa13.Text)='')and(Trim(belselasa14.Text)='') then
  begin
     MessageDlg('Minimal harus ada satu sound terisi..!',mtInformation,[mbOK],0);
     belselasa1.Text;
  end
  else
  if(not ADOTableselasa.IsEmpty)then
  begin
     MessageDlg('Maaf data sudah terisi, hanya bisa satu record saja..!',mtInformation,[mbOK],0);
     belselasa1.Text;
  end
  else
  if(ADOTableselasa.IsEmpty)then
  begin
     ADOTableselasa.Insert;
     ADOTableselasabel1.Value:=DTPJamselasa1.Time;
     ADOTableselasasound1.Value:=belselasa1.Text;

     ADOTableselasabel2.Value:=DTPJamselasa2.Time;
     ADOTableselasasound2.Value:=belselasa2.Text;

     ADOTableselasabel3.Value:=DTPJamselasa3.Time;
     ADOTableselasasound3.Value:=belselasa3.Text;

     ADOTableselasabel4.Value:=DTPJamselasa4.Time;
     ADOTableselasasound4.Value:=belselasa4.Text;

     ADOTableselasabel5.Value:=DTPJamselasa5.Time;
     ADOTableselasasound5.Value:=belselasa5.Text;

     ADOTableselasabel6.Value:=DTPJamselasa6.Time;
     ADOTableselasasound6.Value:=belselasa6.Text;

     ADOTableselasabel7.Value:=DTPJamselasa7.Time;
     ADOTableselasasound7.Value:=belselasa7.Text;

     ADOTableselasabel8.Value:=DTPJamselasa8.Time;
     ADOTableselasasound8.Value:=belselasa8.Text;

     ADOTableselasabel9.Value:=DTPJamselasa9.Time;
     ADOTableselasasound9.Value:=belselasa9.Text;

     ADOTableselasabel10.Value:=DTPJamselasa10.Time;
     ADOTableselasasound10.Value:=belselasa10.Text;

     ADOTableselasabel11.Value:=DTPJamselasa11.Time;
     ADOTableselasasound11.Value:=belselasa11.Text;

     ADOTableselasabel12.Value:=DTPJamselasa12.Time;
     ADOTableselasasound12.Value:=belselasa12.Text;

     ADOTableselasabel13.Value:=DTPJamselasa13.Time;
     ADOTableselasasound13.Value:=belselasa13.Text;

     ADOTableselasabel14.Value:=DTPJamselasa14.Time;
     ADOTableselasasound14.Value:=belselasa14.Text;

     ADOTableselasabel15.Value:=DTPJamselasa15.Time;
     ADOTableselasasound15.Value:=belselasa15.Text;
     
     ADOTableselasa.Post;
     btnbatalselasaClick(sender);
  end;
end;

procedure TfrmUtama.btnbatalselasaClick(Sender: TObject);
begin
  DTPJamselasa1.Time:=Now;
  belselasa1.Clear;

  DTPJamselasa2.Time:=Now;
  belselasa2.Clear;

  DTPJamselasa3.Time:=Now;
  belselasa3.Clear;

  DTPJamselasa4.Time:=Now;
  belselasa4.Clear;

  DTPJamselasa5.Time:=Now;
  belselasa5.Clear;

  DTPJamselasa6.Time:=Now;
  belselasa6.Clear;

  DTPJamselasa7.Time:=Now;
  belselasa7.Clear;

  DTPJamselasa8.Time:=Now;
  belselasa8.Clear;

  DTPJamselasa9.Time:=Now;
  belselasa9.Clear;

  DTPJamselasa10.Time:=Now;
  belselasa10.Clear;

  DTPJamselasa11.Time:=Now;
  belselasa11.Clear;

  DTPJamselasa12.Time:=Now;
  belselasa12.Clear;

  DTPJamselasa13.Time:=Now;
  belselasa13.Clear;

  DTPJamselasa14.Time:=Now;
  belselasa14.Clear;

  DTPJamselasa15.Time:=Now;
  belselasa15.Clear;
  DTPJamselasa1.SetFocus;
end;

procedure TfrmUtama.btneditselasaClick(Sender: TObject);
begin
  if(Trim(belselasa1.Text)='')and(Trim(belselasa2.Text)='')and(Trim(belselasa3.Text)='')and(Trim(belselasa4.Text)='')
    and(Trim(belselasa5.Text)='')and(Trim(belselasa6.Text)='')and(Trim(belselasa7.Text)='')and(Trim(belselasa8.Text)='')
    and(Trim(belselasa9.Text)='')and(Trim(belselasa10.Text)='')and(Trim(belselasa15.Text)='')
    and(Trim(belselasa11.Text)='')and(Trim(belselasa12.Text)='')and(Trim(belselasa13.Text)='')and(Trim(belselasa14.Text)='') then
  begin
     MessageDlg('Minimal harus ada satu sound terisi..!',mtInformation,[mbOK],0);
     belselasa1.Text;
  end
  else
  if(ADOTableselasa.IsEmpty)then
  begin
     MessageDlg('Maaf data masih kosong, tidak ada data yang bisa anda edit..!',mtInformation,[mbOK],0);
     belselasa1.Text;
  end
  else
  if(not ADOTableselasa.IsEmpty)then
  begin
     ADOTableselasa.Edit;
     ADOTableselasabel1.Value:=DTPJamselasa1.Time;
     ADOTableselasasound1.Value:=belselasa1.Text;

     ADOTableselasabel2.Value:=DTPJamselasa2.Time;
     ADOTableselasasound2.Value:=belselasa2.Text;

     ADOTableselasabel3.Value:=DTPJamselasa3.Time;
     ADOTableselasasound3.Value:=belselasa3.Text;

     ADOTableselasabel4.Value:=DTPJamselasa4.Time;
     ADOTableselasasound4.Value:=belselasa4.Text;

     ADOTableselasabel5.Value:=DTPJamselasa5.Time;
     ADOTableselasasound5.Value:=belselasa5.Text;

     ADOTableselasabel6.Value:=DTPJamselasa6.Time;
     ADOTableselasasound6.Value:=belselasa6.Text;

     ADOTableselasabel7.Value:=DTPJamselasa7.Time;
     ADOTableselasasound7.Value:=belselasa7.Text;

     ADOTableselasabel8.Value:=DTPJamselasa8.Time;
     ADOTableselasasound8.Value:=belselasa8.Text;

     ADOTableselasabel9.Value:=DTPJamselasa9.Time;
     ADOTableselasasound9.Value:=belselasa9.Text;

     ADOTableselasabel10.Value:=DTPJamselasa10.Time;
     ADOTableselasasound10.Value:=belselasa10.Text;

     ADOTableselasabel11.Value:=DTPJamselasa11.Time;
     ADOTableselasasound11.Value:=belselasa11.Text;

     ADOTableselasabel12.Value:=DTPJamselasa12.Time;
     ADOTableselasasound12.Value:=belselasa12.Text;

     ADOTableselasabel13.Value:=DTPJamselasa13.Time;
     ADOTableselasasound13.Value:=belselasa13.Text;

     ADOTableselasabel14.Value:=DTPJamselasa14.Time;
     ADOTableselasasound14.Value:=belselasa14.Text;

     ADOTableselasabel15.Value:=DTPJamselasa15.Time;
     ADOTableselasasound15.Value:=belselasa15.Text;
     ADOTableselasa.Post;
     btnbatalselasaClick(sender);
  end;
end;

procedure TfrmUtama.btnhapuselasaClick(Sender: TObject);
begin
  if(not ADOTableselasa.IsEmpty)then ADOTableselasa.Delete
  else
  if(ADOTableselasa.isEmpty) then
  begin
    MessageDlg('Data sudah kosong..!!!',mtWarning,[mbOK],0);
    belselasa1.SetFocus;
  end;
end;

procedure TfrmUtama.suiDBGrid2CellClick(Column: TColumn);
begin
  if(not ADOTableselasa.IsEmpty)then
  begin
    DTPJamselasa1.Time:=ADOTableselasabel1.Value;
    belselasa1.Text:=ADOTableselasasound1.Value;

    DTPJamselasa2.Time:=ADOTableselasabel2.Value;
    belselasa2.Text:=ADOTableselasasound2.Value;

    DTPJamselasa3.Time:=ADOTableselasabel3.Value;
    belselasa3.Text:=ADOTableselasasound3.Value;

    DTPJamselasa4.Time:=ADOTableselasabel4.Value;
    belselasa4.Text:=ADOTableselasasound4.Value;

    DTPJamselasa5.Time:=ADOTableselasabel5.Value;
    belselasa5.Text:=ADOTableselasasound5.Value;

    DTPJamselasa6.Time:=ADOTableselasabel6.Value;
    belselasa6.Text:=ADOTableselasasound6.Value;

    DTPJamselasa7.Time:=ADOTableselasabel7.Value;
    belselasa7.Text:=ADOTableselasasound7.Value;

    DTPJamselasa8.Time:=ADOTableselasabel8.Value;
    belselasa8.Text:=ADOTableselasasound8.Value;

    DTPJamselasa9.Time:=ADOTableselasabel9.Value;
    belselasa9.Text:=ADOTableselasasound9.Value;

    DTPJamselasa10.Time:=ADOTableselasabel10.Value;
    belselasa10.Text:=ADOTableselasasound10.Value;

    DTPJamselasa11.Time:=ADOTableselasabel11.Value;
    belselasa11.Text:=ADOTableselasasound11.Value;

    DTPJamselasa12.Time:=ADOTableselasabel12.Value;
    belselasa12.Text:=ADOTableselasasound12.Value;

    DTPJamselasa13.Time:=ADOTableselasabel13.Value;
    belselasa13.Text:=ADOTableselasasound13.Value;

    DTPJamselasa14.Time:=ADOTableselasabel14.Value;
    belselasa14.Text:=ADOTableselasasound14.Value;

    DTPJamselasa15.Time:=ADOTableselasabel15.Value;
    belselasa15.Text:=ADOTableselasasound15.Value;
  end
end;

procedure TfrmUtama.suiDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if(not ADOTableselasa.IsEmpty)then
  begin
    DTPJamselasa1.Time:=ADOTableselasabel1.Value;
    belselasa1.Text:=ADOTableselasasound1.Value;

    DTPJamselasa2.Time:=ADOTableselasabel2.Value;
    belselasa2.Text:=ADOTableselasasound2.Value;

    DTPJamselasa3.Time:=ADOTableselasabel3.Value;
    belselasa3.Text:=ADOTableselasasound3.Value;

    DTPJamselasa4.Time:=ADOTableselasabel4.Value;
    belselasa4.Text:=ADOTableselasasound4.Value;

    DTPJamselasa5.Time:=ADOTableselasabel5.Value;
    belselasa5.Text:=ADOTableselasasound5.Value;

    DTPJamselasa6.Time:=ADOTableselasabel6.Value;
    belselasa6.Text:=ADOTableselasasound6.Value;

    DTPJamselasa7.Time:=ADOTableselasabel7.Value;
    belselasa7.Text:=ADOTableselasasound7.Value;

    DTPJamselasa8.Time:=ADOTableselasabel8.Value;
    belselasa8.Text:=ADOTableselasasound8.Value;

    DTPJamselasa9.Time:=ADOTableselasabel9.Value;
    belselasa9.Text:=ADOTableselasasound9.Value;

    DTPJamselasa10.Time:=ADOTableselasabel10.Value;
    belselasa10.Text:=ADOTableselasasound10.Value;

    DTPJamselasa11.Time:=ADOTableselasabel11.Value;
    belselasa11.Text:=ADOTableselasasound11.Value;

    DTPJamselasa12.Time:=ADOTableselasabel12.Value;
    belselasa12.Text:=ADOTableselasasound12.Value;

    DTPJamselasa13.Time:=ADOTableselasabel13.Value;
    belselasa13.Text:=ADOTableselasasound13.Value;

    DTPJamselasa14.Time:=ADOTableselasabel14.Value;
    belselasa14.Text:=ADOTableselasasound14.Value;

    DTPJamselasa15.Time:=ADOTableselasabel15.Value;
    belselasa15.Text:=ADOTableselasasound15.Value;
  end
end;

procedure TfrmUtama.suiButton31Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belrabu1.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton32Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belrabu2.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton33Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belrabu3.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton34Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belrabu4.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton35Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belrabu5.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton36Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belrabu6.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton37Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belrabu7.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton38Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belrabu8.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton39Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belrabu9.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton40Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belrabu10.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton41Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belrabu11.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton42Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
  begin
    belrabu12.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton43Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belrabu13.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton44Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belrabu14.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton45Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belrabu15.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.btnsimpanrabuClick(Sender: TObject);
begin
  if(Trim(belrabu1.Text)='')and(Trim(belrabu2.Text)='')and(Trim(belrabu3.Text)='')and(Trim(belrabu4.Text)='')
    and(Trim(belrabu5.Text)='')and(Trim(belrabu6.Text)='')and(Trim(belrabu7.Text)='')and(Trim(belrabu8.Text)='')
    and(Trim(belrabu9.Text)='')and(Trim(belrabu10.Text)='')and(Trim(belrabu15.Text)='')
    and(Trim(belrabu11.Text)='')and(Trim(belrabu12.Text)='')and(Trim(belrabu13.Text)='')and(Trim(belrabu14.Text)='') then
  begin
     MessageDlg('Minimal harus ada satu sound terisi..!',mtInformation,[mbOK],0);
     belrabu1.Text;
  end
  else
  if(not ADOTablerabu.IsEmpty)then
  begin
     MessageDlg('Maaf data sudah terisi, hanya bisa satu record saja..!',mtInformation,[mbOK],0);
     belrabu1.Text;
  end
  else
  if(ADOTablerabu.IsEmpty)then
  begin
     ADOTablerabu.Insert;
     ADOTablerabubel1.Value:=DTPJamrabu1.Time;
     ADOTablerabusound1.Value:=belrabu1.Text;

     ADOTablerabubel2.Value:=DTPJamrabu2.Time;
     ADOTablerabusound2.Value:=belrabu2.Text;

     ADOTablerabubel3.Value:=DTPJamrabu3.Time;
     ADOTablerabusound3.Value:=belrabu3.Text;

     ADOTablerabubel4.Value:=DTPJamrabu4.Time;
     ADOTablerabusound4.Value:=belrabu4.Text;

     ADOTablerabubel5.Value:=DTPJamrabu5.Time;
     ADOTablerabusound5.Value:=belrabu5.Text;

     ADOTablerabubel6.Value:=DTPJamrabu6.Time;
     ADOTablerabusound6.Value:=belrabu6.Text;

     ADOTablerabubel7.Value:=DTPJamrabu7.Time;
     ADOTablerabusound7.Value:=belrabu7.Text;

     ADOTablerabubel8.Value:=DTPJamrabu8.Time;
     ADOTablerabusound8.Value:=belrabu8.Text;

     ADOTablerabubel9.Value:=DTPJamrabu9.Time;
     ADOTablerabusound9.Value:=belrabu9.Text;

     ADOTablerabubel10.Value:=DTPJamrabu10.Time;
     ADOTablerabusound10.Value:=belrabu10.Text;

     ADOTablerabubel11.Value:=DTPJamrabu11.Time;
     ADOTablerabusound11.Value:=belrabu11.Text;

     ADOTablerabubel12.Value:=DTPJamrabu12.Time;
     ADOTablerabusound12.Value:=belrabu12.Text;

     ADOTablerabubel13.Value:=DTPJamrabu13.Time;
     ADOTablerabusound13.Value:=belrabu13.Text;

     ADOTablerabubel14.Value:=DTPJamrabu14.Time;
     ADOTablerabusound14.Value:=belrabu14.Text;

     ADOTablerabubel15.Value:=DTPJamrabu15.Time;
     ADOTablerabusound15.Value:=belrabu15.Text;
     
     ADOTablerabu.Post;
     btnbatalrabuClick(sender);
  end;
end;

procedure TfrmUtama.btnbatalrabuClick(Sender: TObject);
begin
  DTPJamrabu1.Time:=Now;
  belrabu1.Clear;

  DTPJamrabu2.Time:=Now;
  belrabu2.Clear;

  DTPJamrabu3.Time:=Now;
  belrabu3.Clear;

  DTPJamrabu4.Time:=Now;
  belrabu4.Clear;

  DTPJamrabu5.Time:=Now;
  belrabu5.Clear;

  DTPJamrabu6.Time:=Now;
  belrabu6.Clear;

  DTPJamrabu7.Time:=Now;
  belrabu7.Clear;

  DTPJamrabu8.Time:=Now;
  belrabu8.Clear;

  DTPJamrabu9.Time:=Now;
  belrabu9.Clear;

  DTPJamrabu10.Time:=Now;
  belrabu10.Clear;

  DTPJamrabu11.Time:=Now;
  belrabu11.Clear;

  DTPJamrabu12.Time:=Now;
  belrabu12.Clear;

  DTPJamrabu13.Time:=Now;
  belrabu13.Clear;

  DTPJamrabu14.Time:=Now;
  belrabu14.Clear;

  DTPJamrabu15.Time:=Now;
  belrabu15.Clear;
  DTPJamrabu1.SetFocus;
end;

procedure TfrmUtama.btneditrabuClick(Sender: TObject);
begin
  if(Trim(belrabu1.Text)='')and(Trim(belrabu2.Text)='')and(Trim(belrabu3.Text)='')and(Trim(belrabu4.Text)='')
    and(Trim(belrabu5.Text)='')and(Trim(belrabu6.Text)='')and(Trim(belrabu7.Text)='')and(Trim(belrabu8.Text)='')
    and(Trim(belrabu9.Text)='')and(Trim(belrabu10.Text)='')and(Trim(belrabu15.Text)='')
    and(Trim(belrabu11.Text)='')and(Trim(belrabu12.Text)='')and(Trim(belrabu13.Text)='')and(Trim(belrabu14.Text)='') then
  begin
     MessageDlg('Minimal harus ada satu sound terisi..!',mtInformation,[mbOK],0);
     belrabu1.Text;
  end
  else
  if(ADOTablerabu.IsEmpty)then
  begin
     MessageDlg('Maaf data masih kosong, tidak ada data yang bisa anda edit..!',mtInformation,[mbOK],0);
     belrabu1.Text;
  end
  else
  if(not ADOTablerabu.IsEmpty)then
  begin
     ADOTablerabu.Edit;
     ADOTablerabubel1.Value:=DTPJamrabu1.Time;
     ADOTablerabusound1.Value:=belrabu1.Text;

     ADOTablerabubel2.Value:=DTPJamrabu2.Time;
     ADOTablerabusound2.Value:=belrabu2.Text;

     ADOTablerabubel3.Value:=DTPJamrabu3.Time;
     ADOTablerabusound3.Value:=belrabu3.Text;

     ADOTablerabubel4.Value:=DTPJamrabu4.Time;
     ADOTablerabusound4.Value:=belrabu4.Text;

     ADOTablerabubel5.Value:=DTPJamrabu5.Time;
     ADOTablerabusound5.Value:=belrabu5.Text;

     ADOTablerabubel6.Value:=DTPJamrabu6.Time;
     ADOTablerabusound6.Value:=belrabu6.Text;

     ADOTablerabubel7.Value:=DTPJamrabu7.Time;
     ADOTablerabusound7.Value:=belrabu7.Text;

     ADOTablerabubel8.Value:=DTPJamrabu8.Time;
     ADOTablerabusound8.Value:=belrabu8.Text;

     ADOTablerabubel9.Value:=DTPJamrabu9.Time;
     ADOTablerabusound9.Value:=belrabu9.Text;

     ADOTablerabubel10.Value:=DTPJamrabu10.Time;
     ADOTablerabusound10.Value:=belrabu10.Text;

     ADOTablerabubel11.Value:=DTPJamrabu11.Time;
     ADOTablerabusound11.Value:=belrabu11.Text;

     ADOTablerabubel12.Value:=DTPJamrabu12.Time;
     ADOTablerabusound12.Value:=belrabu12.Text;

     ADOTablerabubel13.Value:=DTPJamrabu13.Time;
     ADOTablerabusound13.Value:=belrabu13.Text;

     ADOTablerabubel14.Value:=DTPJamrabu14.Time;
     ADOTablerabusound14.Value:=belrabu14.Text;

     ADOTablerabubel15.Value:=DTPJamrabu15.Time;
     ADOTablerabusound15.Value:=belrabu15.Text;
     
     ADOTablerabu.Post;
     btnbatalrabuClick(sender);
  end;
end;

procedure TfrmUtama.btnhapusrabuClick(Sender: TObject);
begin
  if(not ADOTablerabu.IsEmpty)then ADOTablerabu.Delete
  else
  if(ADOTablerabu.isEmpty) then
  begin
    MessageDlg('Data sudah kosong..!!!',mtWarning,[mbOK],0);
    belrabu1.SetFocus;
  end;
end;

procedure TfrmUtama.cmbsoundrabuChange(Sender: TObject);
begin
  if(cmbsoundrabu.Text='Bel 1')then
  begin
     mp3playerrabu.FileName:=ADOTablerabusound1.Value;
  end
  else
  if(cmbsoundrabu.Text='Bel 2')then
  begin
    mp3playerrabu.FileName:=ADOTablerabusound2.Value;
  end
  else
  if(cmbsoundrabu.Text='Bel 3')then
  begin
    mp3playerrabu.FileName:=ADOTablerabusound3.Value;
  end
  else
  if(cmbsoundrabu.Text='Bel 4')then
  begin
    mp3playerrabu.FileName:=ADOTablerabusound4.Value;
  end
  else
  if(cmbsoundrabu.Text='Bel 5')then
  begin
    mp3playerrabu.FileName:=ADOTablerabusound5.Value;
  end
  else
  if(cmbsoundrabu.Text='Bel 6')then
  begin
    mp3playerrabu.FileName:=ADOTablerabusound6.Value;
  end
  else
  if(cmbsoundrabu.Text='Bel 7')then
  begin
    mp3playerrabu.FileName:=ADOTablerabusound7.Value;
  end
  else
  if(cmbsoundrabu.Text='Bel 8')then
  begin
    mp3playerrabu.FileName:=ADOTablerabusound8.Value;
  end
  else
  if(cmbsoundrabu.Text='Bel 9')then
  begin
    mp3playerrabu.FileName:=ADOTablerabusound9.Value;
  end
  else
  if(cmbsoundrabu.Text='Bel 10')then
  begin
    mp3playerrabu.FileName:=ADOTablerabusound10.Value;
  end
  else
  if(cmbsoundrabu.Text='Bel 11')then
  begin
    mp3playerrabu.FileName:=ADOTablerabusound11.Value;
  end
  else
  if(cmbsoundrabu.Text='Bel 12')then
  begin
    mp3playerrabu.FileName:=ADOTablerabusound12.Value;
  end
  else
  if(cmbsoundrabu.Text='Bel 13')then
  begin
    mp3playerrabu.FileName:=ADOTablerabusound13.Value;
  end
  else
  if(cmbsoundrabu.Text='Bel 14')then
  begin
    mp3playerrabu.FileName:=ADOTablerabusound14.Value;
  end
  else
  if(cmbsoundrabu.Text='Bel 15')then
  begin
    mp3playerrabu.FileName:=ADOTablerabusound15.Value;
  end
  else
  if(cmbsoundrabu.Text='')then
  begin
    mp3playerrabu.Close;
  end;
  if FileExists(mp3playerrabu.FileName)then
  begin
      mp3playerrabu.Open
  end
  else
  if not FileExists(mp3playerrabu.FileName)then mp3playerrabu.Close
end;

procedure TfrmUtama.suiDBGrid3CellClick(Column: TColumn);
begin
  if(not ADOTablerabu.IsEmpty)then
  begin
    DTPJamrabu1.Time:=ADOTablerabubel1.Value;
    belrabu1.Text:=ADOTablerabusound1.Value;

    DTPJamrabu2.Time:=ADOTablerabubel2.Value;
    belrabu2.Text:=ADOTablerabusound2.Value;

    DTPJamrabu3.Time:=ADOTablerabubel3.Value;
    belrabu3.Text:=ADOTablerabusound3.Value;

    DTPJamrabu4.Time:=ADOTablerabubel4.Value;
    belrabu4.Text:=ADOTablerabusound4.Value;

    DTPJamrabu5.Time:=ADOTablerabubel5.Value;
    belrabu5.Text:=ADOTablerabusound5.Value;

    DTPJamrabu6.Time:=ADOTablerabubel6.Value;
    belrabu6.Text:=ADOTablerabusound6.Value;

    DTPJamrabu7.Time:=ADOTablerabubel7.Value;
    belrabu7.Text:=ADOTablerabusound7.Value;

    DTPJamrabu8.Time:=ADOTablerabubel8.Value;
    belrabu8.Text:=ADOTablerabusound8.Value;

    DTPJamrabu9.Time:=ADOTablerabubel9.Value;
    belrabu9.Text:=ADOTablerabusound9.Value;

    DTPJamrabu10.Time:=ADOTablerabubel10.Value;
    belrabu10.Text:=ADOTablerabusound10.Value;

    DTPJamrabu11.Time:=ADOTablerabubel11.Value;
    belrabu11.Text:=ADOTablerabusound11.Value;

    DTPJamrabu12.Time:=ADOTablerabubel12.Value;
    belrabu12.Text:=ADOTablerabusound12.Value;

    DTPJamrabu13.Time:=ADOTablerabubel13.Value;
    belrabu13.Text:=ADOTablerabusound13.Value;

    DTPJamrabu14.Time:=ADOTablerabubel14.Value;
    belrabu14.Text:=ADOTablerabusound14.Value;

    DTPJamrabu15.Time:=ADOTablerabubel15.Value;
    belrabu15.Text:=ADOTablerabusound15.Value;
  end
end;

procedure TfrmUtama.suiDBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if(not ADOTablerabu.IsEmpty)then
  begin
    DTPJamrabu1.Time:=ADOTablerabubel1.Value;
    belrabu1.Text:=ADOTablerabusound1.Value;

    DTPJamrabu2.Time:=ADOTablerabubel2.Value;
    belrabu2.Text:=ADOTablerabusound2.Value;

    DTPJamrabu3.Time:=ADOTablerabubel3.Value;
    belrabu3.Text:=ADOTablerabusound3.Value;

    DTPJamrabu4.Time:=ADOTablerabubel4.Value;
    belrabu4.Text:=ADOTablerabusound4.Value;

    DTPJamrabu5.Time:=ADOTablerabubel5.Value;
    belrabu5.Text:=ADOTablerabusound5.Value;

    DTPJamrabu6.Time:=ADOTablerabubel6.Value;
    belrabu6.Text:=ADOTablerabusound6.Value;

    DTPJamrabu7.Time:=ADOTablerabubel7.Value;
    belrabu7.Text:=ADOTablerabusound7.Value;

    DTPJamrabu8.Time:=ADOTablerabubel8.Value;
    belrabu8.Text:=ADOTablerabusound8.Value;

    DTPJamrabu9.Time:=ADOTablerabubel9.Value;
    belrabu9.Text:=ADOTablerabusound9.Value;

    DTPJamrabu10.Time:=ADOTablerabubel10.Value;
    belrabu10.Text:=ADOTablerabusound10.Value;

    DTPJamrabu11.Time:=ADOTablerabubel11.Value;
    belrabu11.Text:=ADOTablerabusound11.Value;

    DTPJamrabu12.Time:=ADOTablerabubel12.Value;
    belrabu12.Text:=ADOTablerabusound12.Value;

    DTPJamrabu13.Time:=ADOTablerabubel13.Value;
    belrabu13.Text:=ADOTablerabusound13.Value;

    DTPJamrabu14.Time:=ADOTablerabubel14.Value;
    belrabu14.Text:=ADOTablerabusound14.Value;

    DTPJamrabu15.Time:=ADOTablerabubel15.Value;
    belrabu15.Text:=ADOTablerabusound15.Value;
  end
end;

procedure TfrmUtama.suiButton46Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis1.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton47Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis2.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton48Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis3.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton49Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis4.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton50Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis5.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton51Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis6.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton52Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis7.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton53Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis8.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton54Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis9.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton55Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis10.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton56Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis11.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton57Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis12.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton58Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis13.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton59Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis14.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton60Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belkamis15.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.btnsimpankamisClick(Sender: TObject);
begin
  if(Trim(belkamis1.Text)='')and(Trim(belkamis2.Text)='')and(Trim(belkamis3.Text)='')and(Trim(belkamis4.Text)='')
    and(Trim(belkamis5.Text)='')and(Trim(belkamis6.Text)='')and(Trim(belkamis7.Text)='')and(Trim(belkamis8.Text)='')
    and(Trim(belkamis9.Text)='')and(Trim(belkamis10.Text)='')and(Trim(belkamis15.Text)='')
    and(Trim(belkamis11.Text)='')and(Trim(belkamis12.Text)='')and(Trim(belkamis13.Text)='')and(Trim(belkamis14.Text)='') then
  begin
     MessageDlg('Minimal harus ada satu sound terisi..!',mtInformation,[mbOK],0);
     belkamis1.Text;
  end
  else
  if(not ADOTablekamis.IsEmpty)then
  begin
     MessageDlg('Maaf data sudah terisi, hanya bisa satu record saja..!',mtInformation,[mbOK],0);
     belkamis1.Text;
  end
  else
  if(ADOTablekamis.IsEmpty)then
  begin
     ADOTablekamis.Insert;
     ADOTablekamisbel1.Value:=DTPJamkamis1.Time;
     ADOTablekamissound1.Value:=belkamis1.Text;

     ADOTablekamisbel2.Value:=DTPJamkamis2.Time;
     ADOTablekamissound2.Value:=belkamis2.Text;

     ADOTablekamisbel3.Value:=DTPJamkamis3.Time;
     ADOTablekamissound3.Value:=belkamis3.Text;

     ADOTablekamisbel4.Value:=DTPJamkamis4.Time;
     ADOTablekamissound4.Value:=belkamis4.Text;

     ADOTablekamisbel5.Value:=DTPJamkamis5.Time;
     ADOTablekamissound5.Value:=belkamis5.Text;

     ADOTablekamisbel6.Value:=DTPJamkamis6.Time;
     ADOTablekamissound6.Value:=belkamis6.Text;

     ADOTablekamisbel7.Value:=DTPJamkamis7.Time;
     ADOTablekamissound7.Value:=belkamis7.Text;

     ADOTablekamisbel8.Value:=DTPJamkamis8.Time;
     ADOTablekamissound8.Value:=belkamis8.Text;

     ADOTablekamisbel9.Value:=DTPJamkamis9.Time;
     ADOTablekamissound9.Value:=belkamis9.Text;

     ADOTablekamisbel10.Value:=DTPJamkamis10.Time;
     ADOTablekamissound10.Value:=belkamis10.Text;

     ADOTablekamisbel11.Value:=DTPJamkamis11.Time;
     ADOTablekamissound11.Value:=belkamis11.Text;

     ADOTablekamisbel12.Value:=DTPJamkamis12.Time;
     ADOTablekamissound12.Value:=belkamis12.Text;

     ADOTablekamisbel13.Value:=DTPJamkamis13.Time;
     ADOTablekamissound13.Value:=belkamis13.Text;

     ADOTablekamisbel14.Value:=DTPJamkamis14.Time;
     ADOTablekamissound14.Value:=belkamis14.Text;

     ADOTablekamisbel15.Value:=DTPJamkamis15.Time;
     ADOTablekamissound15.Value:=belkamis15.Text;
     
     ADOTablekamis.Post;
     btnbatalkamisClick(sender);
  end;
end;

procedure TfrmUtama.btnbatalkamisClick(Sender: TObject);
begin
   DTPJamkamis1.Time:=Now;
  belkamis1.Clear;

  DTPJamkamis2.Time:=Now;
  belkamis2.Clear;

  DTPJamkamis3.Time:=Now;
  belkamis3.Clear;

  DTPJamkamis4.Time:=Now;
  belkamis4.Clear;

  DTPJamkamis5.Time:=Now;
  belkamis5.Clear;

  DTPJamkamis6.Time:=Now;
  belkamis6.Clear;

  DTPJamkamis7.Time:=Now;
  belkamis7.Clear;

  DTPJamkamis8.Time:=Now;
  belkamis8.Clear;

  DTPJamkamis9.Time:=Now;
  belkamis9.Clear;

  DTPJamkamis10.Time:=Now;
  belkamis10.Clear;

  DTPJamkamis11.Time:=Now;
  belkamis11.Clear;

  DTPJamkamis12.Time:=Now;
  belkamis12.Clear;

  DTPJamkamis13.Time:=Now;
  belkamis13.Clear;

  DTPJamkamis14.Time:=Now;
  belkamis14.Clear;

  DTPJamkamis15.Time:=Now;
  belkamis15.Clear;
  DTPJamkamis1.SetFocus;
end;

procedure TfrmUtama.btnhapuskamisClick(Sender: TObject);
begin
  if(not ADOTablekamis.IsEmpty)then ADOTablekamis.Delete
  else
  if(ADOTablekamis.isEmpty) then
  begin
    MessageDlg('Data sudah kosong..!!!',mtWarning,[mbOK],0);
    belkamis1.SetFocus;
  end;
end;

procedure TfrmUtama.btneditkamisClick(Sender: TObject);
begin
  if(Trim(belkamis1.Text)='')and(Trim(belkamis2.Text)='')and(Trim(belkamis3.Text)='')and(Trim(belkamis4.Text)='')
    and(Trim(belkamis5.Text)='')and(Trim(belkamis6.Text)='')and(Trim(belkamis7.Text)='')and(Trim(belkamis8.Text)='')
    and(Trim(belkamis9.Text)='')and(Trim(belkamis10.Text)='')and(Trim(belkamis15.Text)='')
    and(Trim(belkamis11.Text)='')and(Trim(belkamis12.Text)='')and(Trim(belkamis13.Text)='')and(Trim(belkamis14.Text)='') then
  begin
     MessageDlg('Minimal harus ada satu sound terisi..!',mtInformation,[mbOK],0);
     belkamis1.Text;
  end
  else
  if(ADOTablekamis.IsEmpty)then
  begin
     MessageDlg('Maaf data masih kosong, tidak ada data yang bisa anda edit..!',mtInformation,[mbOK],0);
     belkamis1.Text;
  end
  else
  if(not ADOTablekamis.IsEmpty)then
  begin
     ADOTablekamis.Edit;
     ADOTablekamisbel1.Value:=DTPJamkamis1.Time;
     ADOTablekamissound1.Value:=belkamis1.Text;

     ADOTablekamisbel2.Value:=DTPJamkamis2.Time;
     ADOTablekamissound2.Value:=belkamis2.Text;

     ADOTablekamisbel3.Value:=DTPJamkamis3.Time;
     ADOTablekamissound3.Value:=belkamis3.Text;

     ADOTablekamisbel4.Value:=DTPJamkamis4.Time;
     ADOTablekamissound4.Value:=belkamis4.Text;

     ADOTablekamisbel5.Value:=DTPJamkamis5.Time;
     ADOTablekamissound5.Value:=belkamis5.Text;

     ADOTablekamisbel6.Value:=DTPJamkamis6.Time;
     ADOTablekamissound6.Value:=belkamis6.Text;

     ADOTablekamisbel7.Value:=DTPJamkamis7.Time;
     ADOTablekamissound7.Value:=belkamis7.Text;

     ADOTablekamisbel8.Value:=DTPJamkamis8.Time;
     ADOTablekamissound8.Value:=belkamis8.Text;

     ADOTablekamisbel9.Value:=DTPJamkamis9.Time;
     ADOTablekamissound9.Value:=belkamis9.Text;

     ADOTablekamisbel10.Value:=DTPJamkamis10.Time;
     ADOTablekamissound10.Value:=belkamis10.Text;

     ADOTablekamisbel11.Value:=DTPJamkamis11.Time;
     ADOTablekamissound11.Value:=belkamis11.Text;

     ADOTablekamisbel12.Value:=DTPJamkamis12.Time;
     ADOTablekamissound12.Value:=belkamis12.Text;

     ADOTablekamisbel13.Value:=DTPJamkamis13.Time;
     ADOTablekamissound13.Value:=belkamis13.Text;

     ADOTablekamisbel14.Value:=DTPJamkamis14.Time;
     ADOTablekamissound14.Value:=belkamis14.Text;

     ADOTablekamisbel15.Value:=DTPJamkamis15.Time;
     ADOTablekamissound15.Value:=belkamis15.Text;
     
     ADOTablekamis.Post;
     btnbatalkamisClick(sender);
  end;
end;

procedure TfrmUtama.cmbsoundkamisChange(Sender: TObject);
begin
   if(cmbsoundkamis.Text='Bel 1')then
  begin
     mp3playerkamis.FileName:=ADOTablekamissound1.Value;
  end
  else
  if(cmbsoundkamis.Text='Bel 2')then
  begin
    mp3playerkamis.FileName:=ADOTablekamissound2.Value;
  end
  else
  if(cmbsoundkamis.Text='Bel 3')then
  begin
    mp3playerkamis.FileName:=ADOTablekamissound3.Value;
  end
  else
  if(cmbsoundkamis.Text='Bel 4')then
  begin
    mp3playerkamis.FileName:=ADOTablekamissound4.Value;
  end
  else
  if(cmbsoundkamis.Text='Bel 5')then
  begin
    mp3playerkamis.FileName:=ADOTablekamissound5.Value;
  end
  else
  if(cmbsoundkamis.Text='Bel 6')then
  begin
    mp3playerkamis.FileName:=ADOTablekamissound6.Value;
  end
  else
  if(cmbsoundkamis.Text='Bel 7')then
  begin
    mp3playerkamis.FileName:=ADOTablekamissound7.Value;
  end
  else
  if(cmbsoundkamis.Text='Bel 8')then
  begin
    mp3playerkamis.FileName:=ADOTablekamissound8.Value;
  end
  else
  if(cmbsoundkamis.Text='Bel 9')then
  begin
    mp3playerkamis.FileName:=ADOTablekamissound9.Value;
  end
  else
  if(cmbsoundkamis.Text='Bel 10')then
  begin
    mp3playerkamis.FileName:=ADOTablekamissound10.Value;
  end
  else
  if(cmbsoundkamis.Text='Bel 11')then
  begin
    mp3playerkamis.FileName:=ADOTablekamissound11.Value;
  end
  else
  if(cmbsoundkamis.Text='Bel 12')then
  begin
    mp3playerkamis.FileName:=ADOTablekamissound12.Value;
  end
  else
  if(cmbsoundkamis.Text='Bel 13')then
  begin
    mp3playerkamis.FileName:=ADOTablekamissound13.Value;
  end
  else
  if(cmbsoundkamis.Text='Bel 14')then
  begin
    mp3playerkamis.FileName:=ADOTablekamissound14.Value;
  end
  else
  if(cmbsoundkamis.Text='Bel 15')then
  begin
    mp3playerkamis.FileName:=ADOTablekamissound15.Value;
  end
  else
  if(cmbsoundkamis.Text='')then
  begin
    mp3playerkamis.Close;
  end;
  if FileExists(mp3playerkamis.FileName)then
  begin
      mp3playerkamis.Open
  end
  else
  if not FileExists(mp3playerkamis.FileName)then mp3playerkamis.Close
end;

procedure TfrmUtama.suiDBGrid4CellClick(Column: TColumn);
begin
  if(not ADOTablekamis.IsEmpty)then
  begin
    DTPJamkamis1.Time:=ADOTablekamisbel1.Value;
    belkamis1.Text:=ADOTablekamissound1.Value;

    DTPJamkamis2.Time:=ADOTablekamisbel2.Value;
    belkamis2.Text:=ADOTablekamissound2.Value;

    DTPJamkamis3.Time:=ADOTablekamisbel3.Value;
    belkamis3.Text:=ADOTablekamissound3.Value;

    DTPJamkamis4.Time:=ADOTablekamisbel4.Value;
    belkamis4.Text:=ADOTablekamissound4.Value;

    DTPJamkamis5.Time:=ADOTablekamisbel5.Value;
    belkamis5.Text:=ADOTablekamissound5.Value;

    DTPJamkamis6.Time:=ADOTablekamisbel6.Value;
    belkamis6.Text:=ADOTablekamissound6.Value;

    DTPJamkamis7.Time:=ADOTablekamisbel7.Value;
    belkamis7.Text:=ADOTablekamissound7.Value;

    DTPJamkamis8.Time:=ADOTablekamisbel8.Value;
    belkamis8.Text:=ADOTablekamissound8.Value;

    DTPJamkamis9.Time:=ADOTablekamisbel9.Value;
    belkamis9.Text:=ADOTablekamissound9.Value;

    DTPJamkamis10.Time:=ADOTablekamisbel10.Value;
    belkamis10.Text:=ADOTablekamissound10.Value;

    DTPJamkamis11.Time:=ADOTablekamisbel11.Value;
    belkamis11.Text:=ADOTablekamissound11.Value;

    DTPJamkamis12.Time:=ADOTablekamisbel12.Value;
    belkamis12.Text:=ADOTablekamissound12.Value;

    DTPJamkamis13.Time:=ADOTablekamisbel13.Value;
    belkamis13.Text:=ADOTablekamissound13.Value;

    DTPJamkamis14.Time:=ADOTablekamisbel14.Value;
    belkamis14.Text:=ADOTablekamissound14.Value;

    DTPJamkamis15.Time:=ADOTablekamisbel15.Value;
    belkamis15.Text:=ADOTablekamissound15.Value;
  end
end;

procedure TfrmUtama.suiDBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
  if(not ADOTablekamis.IsEmpty)then
  begin
    DTPJamkamis1.Time:=ADOTablekamisbel1.Value;
    belkamis1.Text:=ADOTablekamissound1.Value;

    DTPJamkamis2.Time:=ADOTablekamisbel2.Value;
    belkamis2.Text:=ADOTablekamissound2.Value;

    DTPJamkamis3.Time:=ADOTablekamisbel3.Value;
    belkamis3.Text:=ADOTablekamissound3.Value;

    DTPJamkamis4.Time:=ADOTablekamisbel4.Value;
    belkamis4.Text:=ADOTablekamissound4.Value;

    DTPJamkamis5.Time:=ADOTablekamisbel5.Value;
    belkamis5.Text:=ADOTablekamissound5.Value;

    DTPJamkamis6.Time:=ADOTablekamisbel6.Value;
    belkamis6.Text:=ADOTablekamissound6.Value;

    DTPJamkamis7.Time:=ADOTablekamisbel7.Value;
    belkamis7.Text:=ADOTablekamissound7.Value;

    DTPJamkamis8.Time:=ADOTablekamisbel8.Value;
    belkamis8.Text:=ADOTablekamissound8.Value;

    DTPJamkamis9.Time:=ADOTablekamisbel9.Value;
    belkamis9.Text:=ADOTablekamissound9.Value;

    DTPJamkamis10.Time:=ADOTablekamisbel10.Value;
    belkamis10.Text:=ADOTablekamissound10.Value;

    DTPJamkamis11.Time:=ADOTablekamisbel11.Value;
    belkamis11.Text:=ADOTablekamissound11.Value;

    DTPJamkamis12.Time:=ADOTablekamisbel12.Value;
    belkamis12.Text:=ADOTablekamissound12.Value;

    DTPJamkamis13.Time:=ADOTablekamisbel13.Value;
    belkamis13.Text:=ADOTablekamissound13.Value;

    DTPJamkamis14.Time:=ADOTablekamisbel14.Value;
    belkamis14.Text:=ADOTablekamissound14.Value;

    DTPJamkamis15.Time:=ADOTablekamisbel15.Value;
    belkamis15.Text:=ADOTablekamissound15.Value;
  end
end;

procedure TfrmUtama.suiButton61Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat1.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton62Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat2.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton63Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat3.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton64Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat4.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton65Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat5.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton66Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat6.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton67Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat7.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton68Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat8.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton69Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat9.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton70Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat10.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton71Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat11.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton72Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat12.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton73Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat13.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton74Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat14.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton75Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    beljumat15.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.btsimpanjumatClick(Sender: TObject);
begin
  if(Trim(beljumat1.Text)='')and(Trim(beljumat2.Text)='')and(Trim(beljumat3.Text)='')and(Trim(beljumat4.Text)='')
    and(Trim(beljumat5.Text)='')and(Trim(beljumat6.Text)='')and(Trim(beljumat7.Text)='')and(Trim(beljumat8.Text)='')
    and(Trim(beljumat9.Text)='')and(Trim(beljumat10.Text)='')and(Trim(beljumat15.Text)='')
    and(Trim(beljumat11.Text)='')and(Trim(beljumat12.Text)='')and(Trim(beljumat13.Text)='')and(Trim(beljumat14.Text)='') then
  begin
     MessageDlg('Minimal harus ada satu sound terisi..!',mtInformation,[mbOK],0);
     beljumat1.Text;
  end
  else
  if(not ADOTablejumat.IsEmpty)then
  begin
     MessageDlg('Maaf data sudah terisi, hanya bisa satu record saja..!',mtInformation,[mbOK],0);
     beljumat1.Text;
  end
  else
  if(ADOTablejumat.IsEmpty)then
  begin
     ADOTablejumat.Insert;
     ADOTablejumatbel1.Value:=DTPJamjumat1.Time;
     ADOTablejumatsound1.Value:=beljumat1.Text;

     ADOTablejumatbel2.Value:=DTPJamjumat2.Time;
     ADOTablejumatsound2.Value:=beljumat2.Text;

     ADOTablejumatbel3.Value:=DTPJamjumat3.Time;
     ADOTablejumatsound3.Value:=beljumat3.Text;

     ADOTablejumatbel4.Value:=DTPJamjumat4.Time;
     ADOTablejumatsound4.Value:=beljumat4.Text;

     ADOTablejumatbel5.Value:=DTPJamjumat5.Time;
     ADOTablejumatsound5.Value:=beljumat5.Text;

     ADOTablejumatbel6.Value:=DTPJamjumat6.Time;
     ADOTablejumatsound6.Value:=beljumat6.Text;

     ADOTablejumatbel7.Value:=DTPJamjumat7.Time;
     ADOTablejumatsound7.Value:=beljumat7.Text;

     ADOTablejumatbel8.Value:=DTPJamjumat8.Time;
     ADOTablejumatsound8.Value:=beljumat8.Text;

     ADOTablejumatbel9.Value:=DTPJamjumat9.Time;
     ADOTablejumatsound9.Value:=beljumat9.Text;

     ADOTablejumatbel10.Value:=DTPJamjumat10.Time;
     ADOTablejumatsound10.Value:=beljumat10.Text;

     ADOTablejumatbel11.Value:=DTPJamjumat11.Time;
     ADOTablejumatsound11.Value:=beljumat11.Text;

     ADOTablejumatbel12.Value:=DTPJamjumat12.Time;
     ADOTablejumatsound12.Value:=beljumat12.Text;

     ADOTablejumatbel13.Value:=DTPJamjumat13.Time;
     ADOTablejumatsound13.Value:=beljumat13.Text;

     ADOTablejumatbel14.Value:=DTPJamjumat14.Time;
     ADOTablejumatsound14.Value:=beljumat14.Text;

     ADOTablejumatbel15.Value:=DTPJamjumat15.Time;
     ADOTablejumatsound15.Value:=beljumat15.Text;
     
     ADOTablejumat.Post;
     btnbataljumatClick(sender);
  end;
end;

procedure TfrmUtama.btnbataljumatClick(Sender: TObject);
begin
   DTPJamjumat1.Time:=Now;
  beljumat1.Clear;

  DTPJamjumat2.Time:=Now;
  beljumat2.Clear;

  DTPJamjumat3.Time:=Now;
  beljumat3.Clear;

  DTPJamjumat4.Time:=Now;
  beljumat4.Clear;

  DTPJamjumat5.Time:=Now;
  beljumat5.Clear;

  DTPJamjumat6.Time:=Now;
  beljumat6.Clear;

  DTPJamjumat7.Time:=Now;
  beljumat7.Clear;

  DTPJamjumat8.Time:=Now;
  beljumat8.Clear;

  DTPJamjumat9.Time:=Now;
  beljumat9.Clear;

  DTPJamjumat10.Time:=Now;
  beljumat10.Clear;

  DTPJamjumat11.Time:=Now;
  beljumat11.Clear;

  DTPJamjumat12.Time:=Now;
  beljumat12.Clear;

  DTPJamjumat13.Time:=Now;
  beljumat13.Clear;

  DTPJamjumat14.Time:=Now;
  beljumat14.Clear;

  DTPJamjumat15.Time:=Now;
  beljumat15.Clear;
  DTPJamjumat1.SetFocus;
end;

procedure TfrmUtama.btneditjumatClick(Sender: TObject);
begin
  if(Trim(beljumat1.Text)='')and(Trim(beljumat2.Text)='')and(Trim(beljumat3.Text)='')and(Trim(beljumat4.Text)='')
    and(Trim(beljumat5.Text)='')and(Trim(beljumat6.Text)='')and(Trim(beljumat7.Text)='')and(Trim(beljumat8.Text)='')
    and(Trim(beljumat9.Text)='')and(Trim(beljumat10.Text)='')and(Trim(beljumat15.Text)='')
    and(Trim(beljumat11.Text)='')and(Trim(beljumat12.Text)='')and(Trim(beljumat13.Text)='')and(Trim(beljumat14.Text)='') then
  begin
     MessageDlg('Minimal harus ada satu sound terisi..!',mtInformation,[mbOK],0);
     beljumat1.Text;
  end
  else
  if(ADOTablejumat.IsEmpty)then
  begin
     MessageDlg('Maaf data masih kosong, tidak ada data yang bisa anda edit..!',mtInformation,[mbOK],0);
     beljumat1.Text;
  end
  else
  if(not ADOTablejumat.IsEmpty)then
  begin
     ADOTablejumat.Edit;
     ADOTablejumatbel1.Value:=DTPJamjumat1.Time;
     ADOTablejumatsound1.Value:=beljumat1.Text;

     ADOTablejumatbel2.Value:=DTPJamjumat2.Time;
     ADOTablejumatsound2.Value:=beljumat2.Text;

     ADOTablejumatbel3.Value:=DTPJamjumat3.Time;
     ADOTablejumatsound3.Value:=beljumat3.Text;

     ADOTablejumatbel4.Value:=DTPJamjumat4.Time;
     ADOTablejumatsound4.Value:=beljumat4.Text;

     ADOTablejumatbel5.Value:=DTPJamjumat5.Time;
     ADOTablejumatsound5.Value:=beljumat5.Text;

     ADOTablejumatbel6.Value:=DTPJamjumat6.Time;
     ADOTablejumatsound6.Value:=beljumat6.Text;

     ADOTablejumatbel7.Value:=DTPJamjumat7.Time;
     ADOTablejumatsound7.Value:=beljumat7.Text;

     ADOTablejumatbel8.Value:=DTPJamjumat8.Time;
     ADOTablejumatsound8.Value:=beljumat8.Text;

     ADOTablejumatbel9.Value:=DTPJamjumat9.Time;
     ADOTablejumatsound9.Value:=beljumat9.Text;

     ADOTablejumatbel10.Value:=DTPJamjumat10.Time;
     ADOTablejumatsound10.Value:=beljumat10.Text;

     ADOTablejumatbel11.Value:=DTPJamjumat11.Time;
     ADOTablejumatsound11.Value:=beljumat11.Text;

     ADOTablejumatbel12.Value:=DTPJamjumat12.Time;
     ADOTablejumatsound12.Value:=beljumat12.Text;

     ADOTablejumatbel13.Value:=DTPJamjumat13.Time;
     ADOTablejumatsound13.Value:=beljumat13.Text;

     ADOTablejumatbel14.Value:=DTPJamjumat14.Time;
     ADOTablejumatsound14.Value:=beljumat14.Text;

     ADOTablejumatbel15.Value:=DTPJamjumat15.Time;
     ADOTablejumatsound15.Value:=beljumat15.Text;

     ADOTablejumat.Post;
     btnbataljumatClick(sender);
  end;
end;

procedure TfrmUtama.btnhapusjumatClick(Sender: TObject);
begin
  if(not ADOTablejumat.IsEmpty)then ADOTablejumat.Delete
  else
  if(ADOTablejumat.isEmpty) then
  begin
    MessageDlg('Data sudah kosong..!!!',mtWarning,[mbOK],0);
    beljumat1.SetFocus;
  end;
end;

procedure TfrmUtama.cmbsoundjumatChange(Sender: TObject);
begin
    if(cmbsoundjumat.Text='Bel 1')then
  begin
     mp3playerjumat.FileName:=ADOTablejumatsound1.Value;
  end
  else
  if(cmbsoundjumat.Text='Bel 2')then
  begin
    mp3playerjumat.FileName:=ADOTablejumatsound2.Value;
  end
  else
  if(cmbsoundjumat.Text='Bel 3')then
  begin
    mp3playerjumat.FileName:=ADOTablejumatsound3.Value;
  end
  else
  if(cmbsoundjumat.Text='Bel 4')then
  begin
    mp3playerjumat.FileName:=ADOTablejumatsound4.Value;
  end
  else
  if(cmbsoundjumat.Text='Bel 5')then
  begin
    mp3playerjumat.FileName:=ADOTablejumatsound5.Value;
  end
  else
  if(cmbsoundjumat.Text='Bel 6')then
  begin
    mp3playerjumat.FileName:=ADOTablejumatsound6.Value;
  end
  else
  if(cmbsoundjumat.Text='Bel 7')then
  begin
    mp3playerjumat.FileName:=ADOTablejumatsound7.Value;
  end
  else
  if(cmbsoundjumat.Text='Bel 8')then
  begin
    mp3playerjumat.FileName:=ADOTablejumatsound8.Value;
  end
  else
  if(cmbsoundjumat.Text='Bel 9')then
  begin
    mp3playerjumat.FileName:=ADOTablejumatsound9.Value;
  end
  else
  if(cmbsoundjumat.Text='Bel 10')then
  begin
    mp3playerjumat.FileName:=ADOTablejumatsound10.Value;
  end
  else
  if(cmbsoundjumat.Text='Bel 11')then
  begin
    mp3playerjumat.FileName:=ADOTablejumatsound11.Value;
  end
  else
  if(cmbsoundjumat.Text='Bel 12')then
  begin
    mp3playerjumat.FileName:=ADOTablejumatsound12.Value;
  end
  else
  if(cmbsoundjumat.Text='Bel 13')then
  begin
    mp3playerjumat.FileName:=ADOTablejumatsound13.Value;
  end
  else
  if(cmbsoundjumat.Text='Bel 14')then
  begin
    mp3playerjumat.FileName:=ADOTablejumatsound14.Value;
  end
  else
  if(cmbsoundjumat.Text='Bel 15')then
  begin
    mp3playerjumat.FileName:=ADOTablejumatsound15.Value;
  end
  else
  if(cmbsoundjumat.Text='')then
  begin
    mp3playerjumat.Close;
  end;
  if FileExists(mp3playerjumat.FileName)then
  begin
      mp3playerjumat.Open
  end
  else
  if not FileExists(mp3playerjumat.FileName)then mp3playerjumat.Close
end;

procedure TfrmUtama.suiDBGrid5CellClick(Column: TColumn);
begin
 if(not ADOTablejumat.IsEmpty)then
  begin
    DTPJamjumat1.Time:=ADOTablejumatbel1.Value;
    beljumat1.Text:=ADOTablejumatsound1.Value;

    DTPJamjumat2.Time:=ADOTablejumatbel2.Value;
    beljumat2.Text:=ADOTablejumatsound2.Value;

    DTPJamjumat3.Time:=ADOTablejumatbel3.Value;
    beljumat3.Text:=ADOTablejumatsound3.Value;

    DTPJamjumat4.Time:=ADOTablejumatbel4.Value;
    beljumat4.Text:=ADOTablejumatsound4.Value;

    DTPJamjumat5.Time:=ADOTablejumatbel5.Value;
    beljumat5.Text:=ADOTablejumatsound5.Value;

    DTPJamjumat6.Time:=ADOTablejumatbel6.Value;
    beljumat6.Text:=ADOTablejumatsound6.Value;

    DTPJamjumat7.Time:=ADOTablejumatbel7.Value;
    beljumat7.Text:=ADOTablejumatsound7.Value;

    DTPJamjumat8.Time:=ADOTablejumatbel8.Value;
    beljumat8.Text:=ADOTablejumatsound8.Value;

    DTPJamjumat9.Time:=ADOTablejumatbel9.Value;
    beljumat9.Text:=ADOTablejumatsound9.Value;

    DTPJamjumat10.Time:=ADOTablejumatbel10.Value;
    beljumat10.Text:=ADOTablejumatsound10.Value;

    DTPJamjumat11.Time:=ADOTablejumatbel11.Value;
    beljumat11.Text:=ADOTablejumatsound11.Value;

    DTPJamjumat12.Time:=ADOTablejumatbel12.Value;
    beljumat12.Text:=ADOTablejumatsound12.Value;

    DTPJamjumat13.Time:=ADOTablejumatbel13.Value;
    beljumat13.Text:=ADOTablejumatsound13.Value;

    DTPJamjumat14.Time:=ADOTablejumatbel14.Value;
    beljumat14.Text:=ADOTablejumatsound14.Value;

    DTPJamjumat15.Time:=ADOTablejumatbel15.Value;
    beljumat15.Text:=ADOTablejumatsound15.Value;
  end
end;

procedure TfrmUtama.suiDBGrid5KeyPress(Sender: TObject; var Key: Char);
begin
  if(not ADOTablejumat.IsEmpty)then
  begin
    DTPJamjumat1.Time:=ADOTablejumatbel1.Value;
    beljumat1.Text:=ADOTablejumatsound1.Value;

    DTPJamjumat2.Time:=ADOTablejumatbel2.Value;
    beljumat2.Text:=ADOTablejumatsound2.Value;

    DTPJamjumat3.Time:=ADOTablejumatbel3.Value;
    beljumat3.Text:=ADOTablejumatsound3.Value;

    DTPJamjumat4.Time:=ADOTablejumatbel4.Value;
    beljumat4.Text:=ADOTablejumatsound4.Value;

    DTPJamjumat5.Time:=ADOTablejumatbel5.Value;
    beljumat5.Text:=ADOTablejumatsound5.Value;

    DTPJamjumat6.Time:=ADOTablejumatbel6.Value;
    beljumat6.Text:=ADOTablejumatsound6.Value;

    DTPJamjumat7.Time:=ADOTablejumatbel7.Value;
    beljumat7.Text:=ADOTablejumatsound7.Value;

    DTPJamjumat8.Time:=ADOTablejumatbel8.Value;
    beljumat8.Text:=ADOTablejumatsound8.Value;

    DTPJamjumat9.Time:=ADOTablejumatbel9.Value;
    beljumat9.Text:=ADOTablejumatsound9.Value;

    DTPJamjumat10.Time:=ADOTablejumatbel10.Value;
    beljumat10.Text:=ADOTablejumatsound10.Value;

    DTPJamjumat11.Time:=ADOTablejumatbel11.Value;
    beljumat11.Text:=ADOTablejumatsound11.Value;

    DTPJamjumat12.Time:=ADOTablejumatbel12.Value;
    beljumat12.Text:=ADOTablejumatsound12.Value;

    DTPJamjumat13.Time:=ADOTablejumatbel13.Value;
    beljumat13.Text:=ADOTablejumatsound13.Value;

    DTPJamjumat14.Time:=ADOTablejumatbel14.Value;
    beljumat14.Text:=ADOTablejumatsound14.Value;

    DTPJamjumat15.Time:=ADOTablejumatbel15.Value;
    beljumat15.Text:=ADOTablejumatsound15.Value;
  end
end;

procedure TfrmUtama.suiButton76Click(Sender: TObject);
begin
   if OpenDialog1.Execute then
  begin
    belsabtu1.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton77Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belsabtu2.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton78Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belsabtu3.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton79Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belsabtu4.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton80Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belsabtu5.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton81Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
  begin
    belsabtu6.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton82Click(Sender: TObject);
begin
if OpenDialog1.Execute then
  begin
    belsabtu7.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton83Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belsabtu8.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton84Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belsabtu9.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton85Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belsabtu10.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton86Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belsabtu11.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton87Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belsabtu12.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton88Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belsabtu13.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton89Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belsabtu14.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.suiButton90Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    belsabtu15.Text:=Trim(OpenDialog1.Files.Text);
  end
end;

procedure TfrmUtama.btnsimpansabtuClick(Sender: TObject);
begin
   if(Trim(belsabtu1.Text)='')and(Trim(belsabtu2.Text)='')and(Trim(belsabtu3.Text)='')and(Trim(belsabtu4.Text)='')
    and(Trim(belsabtu5.Text)='')and(Trim(belsabtu6.Text)='')and(Trim(belsabtu7.Text)='')and(Trim(belsabtu8.Text)='')
    and(Trim(belsabtu9.Text)='')and(Trim(belsabtu10.Text)='')and(Trim(belsabtu15.Text)='')
    and(Trim(belsabtu11.Text)='')and(Trim(belsabtu12.Text)='')and(Trim(belsabtu13.Text)='')and(Trim(belsabtu14.Text)='') then
  begin
     MessageDlg('Minimal harus ada satu sound terisi..!',mtInformation,[mbOK],0);
     belsabtu1.Text;
  end
  else
  if(not ADOTablesabtu.IsEmpty)then
  begin
     MessageDlg('Maaf data sudah terisi, hanya bisa satu record saja..!',mtInformation,[mbOK],0);
     belsabtu1.Text;
  end
  else
  if(ADOTablesabtu.IsEmpty)then
  begin
     ADOTablesabtu.Insert;
     ADOTablesabtubel1.Value:=DTPJamsabtu1.Time;
     ADOTablesabtusound1.Value:=belsabtu1.Text;

     ADOTablesabtubel2.Value:=DTPJamsabtu2.Time;
     ADOTablesabtusound2.Value:=belsabtu2.Text;

     ADOTablesabtubel3.Value:=DTPJamsabtu3.Time;
     ADOTablesabtusound3.Value:=belsabtu3.Text;

     ADOTablesabtubel4.Value:=DTPJamsabtu4.Time;
     ADOTablesabtusound4.Value:=belsabtu4.Text;

     ADOTablesabtubel5.Value:=DTPJamsabtu5.Time;
     ADOTablesabtusound5.Value:=belsabtu5.Text;

     ADOTablesabtubel6.Value:=DTPJamsabtu6.Time;
     ADOTablesabtusound6.Value:=belsabtu6.Text;

     ADOTablesabtubel7.Value:=DTPJamsabtu7.Time;
     ADOTablesabtusound7.Value:=belsabtu7.Text;

     ADOTablesabtubel8.Value:=DTPJamsabtu8.Time;
     ADOTablesabtusound8.Value:=belsabtu8.Text;

     ADOTablesabtubel9.Value:=DTPJamsabtu9.Time;
     ADOTablesabtusound9.Value:=belsabtu9.Text;

     ADOTablesabtubel10.Value:=DTPJamsabtu10.Time;
     ADOTablesabtusound10.Value:=belsabtu10.Text;

     ADOTablesabtubel11.Value:=DTPJamsabtu11.Time;
     ADOTablesabtusound11.Value:=belsabtu11.Text;

     ADOTablesabtubel12.Value:=DTPJamsabtu12.Time;
     ADOTablesabtusound12.Value:=belsabtu12.Text;

     ADOTablesabtubel13.Value:=DTPJamsabtu13.Time;
     ADOTablesabtusound13.Value:=belsabtu13.Text;

     ADOTablesabtubel14.Value:=DTPJamsabtu14.Time;
     ADOTablesabtusound14.Value:=belsabtu14.Text;

     ADOTablesabtubel15.Value:=DTPJamsabtu15.Time;
     ADOTablesabtusound15.Value:=belsabtu15.Text;
     
     ADOTablesabtu.Post;
     btnbatalsabtuClick(sender);
  end;
end;

procedure TfrmUtama.btnbatalsabtuClick(Sender: TObject);
begin
    DTPJamsabtu1.Time:=Now;
  belsabtu1.Clear;

  DTPJamsabtu2.Time:=Now;
  belsabtu2.Clear;

  DTPJamsabtu3.Time:=Now;
  belsabtu3.Clear;

  DTPJamsabtu4.Time:=Now;
  belsabtu4.Clear;

  DTPJamsabtu5.Time:=Now;
  belsabtu5.Clear;

  DTPJamsabtu6.Time:=Now;
  belsabtu6.Clear;

  DTPJamsabtu7.Time:=Now;
  belsabtu7.Clear;

  DTPJamsabtu8.Time:=Now;
  belsabtu8.Clear;

  DTPJamsabtu9.Time:=Now;
  belsabtu9.Clear;

  DTPJamsabtu10.Time:=Now;
  belsabtu10.Clear;

  DTPJamsabtu11.Time:=Now;
  belsabtu11.Clear;

  DTPJamsabtu12.Time:=Now;
  belsabtu12.Clear;

  DTPJamsabtu13.Time:=Now;
  belsabtu13.Clear;

  DTPJamsabtu14.Time:=Now;
  belsabtu14.Clear;

  DTPJamsabtu15.Time:=Now;
  belsabtu15.Clear;
  DTPJamsabtu1.SetFocus;
end;

procedure TfrmUtama.btneditsabtuClick(Sender: TObject);
begin
  if(Trim(belsabtu1.Text)='')and(Trim(belsabtu2.Text)='')and(Trim(belsabtu3.Text)='')and(Trim(belsabtu4.Text)='')
    and(Trim(belsabtu5.Text)='')and(Trim(belsabtu6.Text)='')and(Trim(belsabtu7.Text)='')and(Trim(belsabtu8.Text)='')
    and(Trim(belsabtu9.Text)='')and(Trim(belsabtu10.Text)='')and(Trim(belsabtu15.Text)='')
    and(Trim(belsabtu11.Text)='')and(Trim(belsabtu12.Text)='')and(Trim(belsabtu13.Text)='')and(Trim(belsabtu14.Text)='') then
  begin
     MessageDlg('Minimal harus ada satu sound terisi..!',mtInformation,[mbOK],0);
     belsabtu1.Text;
  end
  else
  if(ADOTablesabtu.IsEmpty)then
  begin
     MessageDlg('Maaf data masih kosong, tidak ada data yang bisa anda edit..!',mtInformation,[mbOK],0);
     belsabtu1.Text;
  end
  else
  if(not ADOTablesabtu.IsEmpty)then
  begin
     ADOTablesabtu.Edit;
     ADOTablesabtubel1.Value:=DTPJamsabtu1.Time;
     ADOTablesabtusound1.Value:=belsabtu1.Text;

     ADOTablesabtubel2.Value:=DTPJamsabtu2.Time;
     ADOTablesabtusound2.Value:=belsabtu2.Text;

     ADOTablesabtubel3.Value:=DTPJamsabtu3.Time;
     ADOTablesabtusound3.Value:=belsabtu3.Text;

     ADOTablesabtubel4.Value:=DTPJamsabtu4.Time;
     ADOTablesabtusound4.Value:=belsabtu4.Text;

     ADOTablesabtubel5.Value:=DTPJamsabtu5.Time;
     ADOTablesabtusound5.Value:=belsabtu5.Text;

     ADOTablesabtubel6.Value:=DTPJamsabtu6.Time;
     ADOTablesabtusound6.Value:=belsabtu6.Text;

     ADOTablesabtubel7.Value:=DTPJamsabtu7.Time;
     ADOTablesabtusound7.Value:=belsabtu7.Text;

     ADOTablesabtubel8.Value:=DTPJamsabtu8.Time;
     ADOTablesabtusound8.Value:=belsabtu8.Text;

     ADOTablesabtubel9.Value:=DTPJamsabtu9.Time;
     ADOTablesabtusound9.Value:=belsabtu9.Text;

     ADOTablesabtubel10.Value:=DTPJamsabtu10.Time;
     ADOTablesabtusound10.Value:=belsabtu10.Text;

     ADOTablesabtubel11.Value:=DTPJamsabtu11.Time;
     ADOTablesabtusound11.Value:=belsabtu11.Text;

     ADOTablesabtubel12.Value:=DTPJamsabtu12.Time;
     ADOTablesabtusound12.Value:=belsabtu12.Text;

     ADOTablesabtubel13.Value:=DTPJamsabtu13.Time;
     ADOTablesabtusound13.Value:=belsabtu13.Text;

     ADOTablesabtubel14.Value:=DTPJamsabtu14.Time;
     ADOTablesabtusound14.Value:=belsabtu14.Text;

     ADOTablesabtubel15.Value:=DTPJamsabtu15.Time;
     ADOTablesabtusound15.Value:=belsabtu15.Text;

     ADOTablesabtu.Post;
     btnbatalsabtuClick(sender);
  end;
end;

procedure TfrmUtama.btnhapussabtuClick(Sender: TObject);
begin
  if(not ADOTablesabtu.IsEmpty)then ADOTablesabtu.Delete
  else
  if(ADOTablesabtu.isEmpty) then
  begin
    MessageDlg('Data sudah kosong..!!!',mtWarning,[mbOK],0);
    belsabtu1.SetFocus;
  end;
end;

procedure TfrmUtama.cmbsoundsabtuChange(Sender: TObject);
begin
     if(cmbsoundsabtu.Text='Bel 1')then
  begin
     mp3playersabtu.FileName:=ADOTablesabtusound1.Value;
  end
  else
  if(cmbsoundsabtu.Text='Bel 2')then
  begin
    mp3playersabtu.FileName:=ADOTablesabtusound2.Value;
  end
  else
  if(cmbsoundsabtu.Text='Bel 3')then
  begin
    mp3playersabtu.FileName:=ADOTablesabtusound3.Value;
  end
  else
  if(cmbsoundsabtu.Text='Bel 4')then
  begin
    mp3playersabtu.FileName:=ADOTablesabtusound4.Value;
  end
  else
  if(cmbsoundsabtu.Text='Bel 5')then
  begin
    mp3playersabtu.FileName:=ADOTablesabtusound5.Value;
  end
  else
  if(cmbsoundsabtu.Text='Bel 6')then
  begin
    mp3playersabtu.FileName:=ADOTablesabtusound6.Value;
  end
  else
  if(cmbsoundsabtu.Text='Bel 7')then
  begin
    mp3playersabtu.FileName:=ADOTablesabtusound7.Value;
  end
  else
  if(cmbsoundsabtu.Text='Bel 8')then
  begin
    mp3playersabtu.FileName:=ADOTablesabtusound8.Value;
  end
  else
  if(cmbsoundsabtu.Text='Bel 9')then
  begin
    mp3playersabtu.FileName:=ADOTablesabtusound9.Value;
  end
  else
  if(cmbsoundsabtu.Text='Bel 10')then
  begin
    mp3playersabtu.FileName:=ADOTablesabtusound10.Value;
  end
  else
  if(cmbsoundsabtu.Text='Bel 11')then
  begin
    mp3playersabtu.FileName:=ADOTablesabtusound11.Value;
  end
  else
  if(cmbsoundsabtu.Text='Bel 12')then
  begin
    mp3playersabtu.FileName:=ADOTablesabtusound12.Value;
  end
  else
  if(cmbsoundsabtu.Text='Bel 13')then
  begin
    mp3playersabtu.FileName:=ADOTablesabtusound13.Value;
  end
  else
  if(cmbsoundsabtu.Text='Bel 14')then
  begin
    mp3playersabtu.FileName:=ADOTablesabtusound14.Value;
  end
  else
  if(cmbsoundsabtu.Text='Bel 15')then
  begin
    mp3playersabtu.FileName:=ADOTablesabtusound15.Value;
  end
  else
  if(cmbsoundsabtu.Text='')then
  begin
    mp3playersabtu.Close;
  end;
  if FileExists(mp3playersabtu.FileName)then
  begin
      mp3playersabtu.Open
  end
  else
  if not FileExists(mp3playersabtu.FileName)then mp3playersabtu.Close
end;

procedure TfrmUtama.suiDBGrid6CellClick(Column: TColumn);
begin
  if(not ADOTablesabtu.IsEmpty)then
  begin
    DTPJamsabtu1.Time:=ADOTablesabtubel1.Value;
    belsabtu1.Text:=ADOTablesabtusound1.Value;

    DTPJamsabtu2.Time:=ADOTablesabtubel2.Value;
    belsabtu2.Text:=ADOTablesabtusound2.Value;

    DTPJamsabtu3.Time:=ADOTablesabtubel3.Value;
    belsabtu3.Text:=ADOTablesabtusound3.Value;

    DTPJamsabtu4.Time:=ADOTablesabtubel4.Value;
    belsabtu4.Text:=ADOTablesabtusound4.Value;

    DTPJamsabtu5.Time:=ADOTablesabtubel5.Value;
    belsabtu5.Text:=ADOTablesabtusound5.Value;

    DTPJamsabtu6.Time:=ADOTablesabtubel6.Value;
    belsabtu6.Text:=ADOTablesabtusound6.Value;

    DTPJamsabtu7.Time:=ADOTablesabtubel7.Value;
    belsabtu7.Text:=ADOTablesabtusound7.Value;

    DTPJamsabtu8.Time:=ADOTablesabtubel8.Value;
    belsabtu8.Text:=ADOTablesabtusound8.Value;

    DTPJamsabtu9.Time:=ADOTablesabtubel9.Value;
    belsabtu9.Text:=ADOTablesabtusound9.Value;

    DTPJamsabtu10.Time:=ADOTablesabtubel10.Value;
    belsabtu10.Text:=ADOTablesabtusound10.Value;

    DTPJamsabtu11.Time:=ADOTablesabtubel11.Value;
    belsabtu11.Text:=ADOTablesabtusound11.Value;

    DTPJamsabtu12.Time:=ADOTablesabtubel12.Value;
    belsabtu12.Text:=ADOTablesabtusound12.Value;

    DTPJamsabtu13.Time:=ADOTablesabtubel13.Value;
    belsabtu13.Text:=ADOTablesabtusound13.Value;

    DTPJamsabtu14.Time:=ADOTablesabtubel14.Value;
    belsabtu14.Text:=ADOTablesabtusound14.Value;

    DTPJamsabtu15.Time:=ADOTablesabtubel15.Value;
    belsabtu15.Text:=ADOTablesabtusound15.Value;
  end
end;

procedure TfrmUtama.suiDBGrid6KeyPress(Sender: TObject; var Key: Char);
begin
  if(not ADOTablesabtu.IsEmpty)then
  begin
    DTPJamsabtu1.Time:=ADOTablesabtubel1.Value;
    belsabtu1.Text:=ADOTablesabtusound1.Value;

    DTPJamsabtu2.Time:=ADOTablesabtubel2.Value;
    belsabtu2.Text:=ADOTablesabtusound2.Value;

    DTPJamsabtu3.Time:=ADOTablesabtubel3.Value;
    belsabtu3.Text:=ADOTablesabtusound3.Value;

    DTPJamsabtu4.Time:=ADOTablesabtubel4.Value;
    belsabtu4.Text:=ADOTablesabtusound4.Value;

    DTPJamsabtu5.Time:=ADOTablesabtubel5.Value;
    belsabtu5.Text:=ADOTablesabtusound5.Value;

    DTPJamsabtu6.Time:=ADOTablesabtubel6.Value;
    belsabtu6.Text:=ADOTablesabtusound6.Value;

    DTPJamsabtu7.Time:=ADOTablesabtubel7.Value;
    belsabtu7.Text:=ADOTablesabtusound7.Value;

    DTPJamsabtu8.Time:=ADOTablesabtubel8.Value;
    belsabtu8.Text:=ADOTablesabtusound8.Value;

    DTPJamsabtu9.Time:=ADOTablesabtubel9.Value;
    belsabtu9.Text:=ADOTablesabtusound9.Value;

    DTPJamsabtu10.Time:=ADOTablesabtubel10.Value;
    belsabtu10.Text:=ADOTablesabtusound10.Value;

    DTPJamsabtu11.Time:=ADOTablesabtubel11.Value;
    belsabtu11.Text:=ADOTablesabtusound11.Value;

    DTPJamsabtu12.Time:=ADOTablesabtubel12.Value;
    belsabtu12.Text:=ADOTablesabtusound12.Value;

    DTPJamsabtu13.Time:=ADOTablesabtubel13.Value;
    belsabtu13.Text:=ADOTablesabtusound13.Value;

    DTPJamsabtu14.Time:=ADOTablesabtubel14.Value;
    belsabtu14.Text:=ADOTablesabtusound14.Value;

    DTPJamsabtu15.Time:=ADOTablesabtubel15.Value;
    belsabtu15.Text:=ADOTablesabtusound15.Value;
  end
end;

end.


