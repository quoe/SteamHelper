unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, DateUtils, StdCtrls, IdGlobal, xmldom,
  XMLIntf, msxmldom, XMLDoc, ComCtrls, URLMon, JPEG, ImgList, Winsock, Wininet,
  Grids, GIFImg, Menus, CLIPBrd, CategoryButtons, Buttons, FileCtrl, ShellApi,
  IdHashMessageDigest, IniFiles, Registry, ActiveX, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, IdAntiFreezeBase,
  IdAntiFreeze, IDSMTP, IDMessage, OleCtrls, SHDocVw;

type
  TMainSteamHelperForm = class(TForm)
    ConnectSteam: TImage;
    XMLDoc: TXMLDocument;
    SteamHelperPage: TPageControl;
    SteamConnect: TTabSheet;
    UserInfo: TTabSheet;
    AllAppsTabSheet: TTabSheet;
    UserID: TLabeledEdit;
    ConnectPanel: TGroupBox;
    CheckPanel: TGroupBox;
    CheckImage: TImage;
    StatusBar: TStatusBar;
    CheckUserName: TLabeledEdit;
    CheckLastOnline: TLabeledEdit;
    FlagsList: TImageList;
    CheckUserYes: TButton;
    CheckUserNo: TButton;
    ConnectProgress: TProgressBar;
    CheckUserLVL: TLabeledEdit;
    UserInfoPage: TPageControl;
    PublicData: TTabSheet;
    PrivateData: TTabSheet;
    PublicDataGrid: TStringGrid;
    TabSheet4: TTabSheet;
    FriendsData: TTabSheet;
    PublicGridPopup: TPopupMenu;
    PublicGridPopupCopy: TMenuItem;
    PrivateDataGrid: TStringGrid;
    ShowBuys: TButton;
    SteamBuysGrid: TStringGrid;
    TabSheet1: TTabSheet;
    FriendsDataGrid: TStringGrid;
    ShowFriends: TButton;
    GamesList: TListBox;
    GetPlayerAchievements: TButton;
    GetPlayerAchievementsGrid: TStringGrid;
    Panel1: TPanel;
    GetPlayerAchievementsSplitter: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    DoneAchievements: TEdit;
    FlagsListBox: TListBox;
    FlagsNamesListBox: TListBox;
    Dota2TabSheet: TTabSheet;
    Button2: TButton;
    InfoForIconAndLogo: TGroupBox;
    Button4: TButton;
    InfoForIconAndLogoButton: TBitBtn;
    Memo2: TMemo;
    FavoriteGame: TEdit;
    UserLink: TLabeledEdit;
    LogInByIDRadio: TRadioButton;
    LogInByLinkRadio: TRadioButton;
    PlayGamesInfo: TEdit;
    Panel4: TPanel;
    AllSteamApps: TButton;
    SteamAppsGrid: TStringGrid;
    LastApps: TEdit;
    LoadAppsList: TButton;
    PageControl1: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DownloadLogosLog: TMemo;
    Panel5: TPanel;
    DownloadLogosPath: TEdit;
    ChangeDownloadLogosPath: TButton;
    StopDownload: TButton;
    FindOption: TComboBox;
    FindLabel1: TLabel;
    FindLabel2: TLabel;
    ResultOfFind: TEdit;
    FindText: TEdit;
    Dota2PageControl: TPageControl;
    Dota2ConnectTab: TTabSheet;
    MatchHistoryTabSheet: TTabSheet;
    Dota2Connect: TImage;
    Dota2ConnectionGroup: TGroupBox;
    Dota2ConnectionID: TLabeledEdit;
    DotaImageList: TImageList;
    DotaCheckGroup: TGroupBox;
    CheckDotaImage: TImage;
    CheckDotaUserName: TLabeledEdit;
    CheckDotaLastOnline: TLabeledEdit;
    Button1: TButton;
    Button3: TButton;
    DotaCheckGrid: TStringGrid;
    CheckDotaGamesGroup: TGroupBox;
    PrivateGamesStatus: TLabel;
    ShowDotaAllHeroesTab: TTabSheet;
    SteamConverter: TTabSheet;
    Panel7: TPanel;
    ShowMatchHistory: TButton;
    VisibleMatchCount: TTrackBar;
    MatchCountLabel: TLabel;
    GamesByDateTree: TTreeView;
    GameInfoBox: TGroupBox;
    MatchInfoByDataGrid: TStringGrid;
    MatchInfoByDataGrid2: TStringGrid;
    MatchInfoByDataGrid3: TStringGrid;
    ShowMatchHistorySplitter: TSplitter;
    ConverterToSteam64ID: TLabeledEdit;
    ResultSteam64ID: TLabeledEdit;
    ConverSteamIDs: TImage;
    DownloadLogosInfoBitBtn: TBitBtn;
    DownloadLogosInfoGroup: TGroupBox;
    DownloadLogosInfoButton: TButton;
    DownloadLogosInfoMemo: TMemo;
    DownloadGamesIconsOption: TComboBox;
    DownloadDotaHeroPicsTab: TTabSheet;
    DownloadHeroesLog: TMemo;
    DownloadHeroIconsInfoGroup: TGroupBox;
    DownloadHeroIconsInfoButton: TButton;
    DownloadHeroIconsInfoMemo: TMemo;
    Panel6: TPanel;
    DownloadHeroes: TButton;
    DownloadHeroesPath: TEdit;
    DownloadHeroesChange: TButton;
    DownloadHeroesSTOP: TButton;
    DownloadHeroIconsOption: TComboBox;
    DownloadHeroIconsInfoBitBtn: TBitBtn;
    Panel8: TPanel;
    ShowAllHeroesButton: TButton;
    ShowAllHeroesGrid: TStringGrid;
    FriendsSomeInfo: TEdit;
    ShowAllHeroesSomeInfo: TEdit;
    DownloadAllHeroesButton: TButton;
    Label1: TLabel;
    HeroOrIDFindOption: TComboBox;
    HeroOrIDFindText: TEdit;
    Label2: TLabel;
    ResultOfHeroOrIDFind: TEdit;
    MatchInfoByDataEdit: TEdit;
    NotificationTab: TTabSheet;
    NotificationTabs: TPageControl;
    SteamHelperNotificationTab: TTabSheet;
    EmailNotificationTab: TTabSheet;
    SMSNotificationTab: TTabSheet;
    SteamHelperNotificationCheckBox: TCheckBox;
    LocalNotificationGroup: TGroupBox;
    LocalNotificationShowMessage: TCheckBox;
    TrayIconLocalNotification: TTrayIcon;
    BitBtn1: TBitBtn;
    LocalNotificationBaloonHint: TCheckBox;
    BitBtn2: TBitBtn;
    PageControl3: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    LocalNotificationPlayGameCheckBox: TCheckBox;
    LocalNotification1UserIDCheckBox: TCheckBox;
    LocalNotification1UserID: TEdit;
    Label3: TLabel;
    LocalFriendNotificationTemplate: TEdit;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    LocalNotificationPlayGameTemplate: TEdit;
    BitBtn4: TBitBtn;
    LocalSteamNotificationCheckBox: TCheckBox;
    Label5: TLabel;
    LocalNotificationNewAppCheckBoxTemplate: TEdit;
    BitBtn5: TBitBtn;
    TabSheet9: TTabSheet;
    LocalDealNotificationTemplate: TEdit;
    LocalDealNotificationCheckBox: TCheckBox;
    Label6: TLabel;
    BitBtn6: TBitBtn;
    LocalNotification2UserIDCheckBox: TCheckBox;
    LocalNotification2UserID: TEdit;
    LocalDotaNotificationCheckBox: TCheckBox;
    LocalDotaNotification1UserID: TEdit;
    CheckBox8: TCheckBox;
    Edit8: TEdit;
    Label7: TLabel;
    LocalDotaNotificationTemplate: TEdit;
    BitBtn7: TBitBtn;
    Label8: TLabel;
    LocalNotificationRefresh: TTrackBar;
    LocalNotificationRefreshText: TLabel;
    LocalHeroNotificationCheckBox: TCheckBox;
    Label10: TLabel;
    LocalHeroNotificationTemplate: TEdit;
    BitBtn8: TBitBtn;
    LocalNotificationTimer: TTimer;
    SteamNewAppTimer: TTimer;
    LocalNotificationGroupBox: TGroupBox;
    LocalNotificationSteamGroupBox: TGroupBox;
    Label9: TLabel;
    LocalSteamNotificationRefresh: TTrackBar;
    LocalSteamNotificationRefreshText: TLabel;
    DealTimer: TTimer;
    LocalDealNotificationText: TEdit;
    Label11: TLabel;
    LocalDealFormNotificationTemplate: TEdit;
    Label12: TLabel;
    BitBtn9: TBitBtn;
    GroupBox2: TGroupBox;
    DotaTimer: TTimer;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    LocalDotaNotificationRefresh: TTrackBar;
    LocalDotaNotificationRefreshText: TLabel;
    Label15: TLabel;
    LocaHeroNotificationRefresh: TTrackBar;
    LocalHeroNotificationRefreshText: TLabel;
    NewHeroTimer: TTimer;
    LogNotificationTab: TTabSheet;
    LogNotificationMemo: TMemo;
    LogNotificationPanel: TPanel;
    LogNotificationClear: TButton;
    SmsFriendsGroupBox: TGroupBox;
    SmsSteamGroupBox: TGroupBox;
    SmsDotaGroupBox: TGroupBox;
    GroupBox7: TGroupBox;
    SmsApiIDEdit: TLabeledEdit;
    SmsPhoneEdit: TLabeledEdit;
    SmsDoneButton: TButton;
    SmsAuthResultMemo: TMemo;
    BitBtn10: TBitBtn;
    SmsFriendsCheckBox: TCheckBox;
    SmsSteamCheckBox: TCheckBox;
    SmsDotaCheckBox: TCheckBox;
    SmsCounProgressBar: TProgressBar;
    SmsCounLabel: TLabel;
    SmsTestButton: TButton;
    SmsDotaRadioGroup: TRadioGroup;
    SmsDotaInfoGroupBox: TGroupBox;
    SmsDotaInfoButton: TButton;
    Memo3: TMemo;
    SmsDotaHelpBitBtn: TBitBtn;
    GroupBox1: TGroupBox;
    LocalNotificationSaveButton: TButton;
    SmsGroup: TGroupBox;
    IdAntiFreeze1: TIdAntiFreeze;
    SteamImage1: TImage;
    DotaImage1: TImage;
    SteamID32bitDota2IDtoSteamID64bitGroup: TGroupBox;
    SteamID64bittoSteamID32bitDota2IDGroup: TGroupBox;
    DotaImage2: TImage;
    ConverSteamIDs2: TImage;
    SteamImage2: TImage;
    ConverterToSteam32ID: TLabeledEdit;
    ResultSteam32ID: TLabeledEdit;
    MainMenu: TMainMenu;
    MainMenuMenu: TMenuItem;
    MainMenuHide: TMenuItem;
    MainMenuExit: TMenuItem;
    TrayPopupMenu: TPopupMenu;
    TrayPopupMenuShow: TMenuItem;
    TrayPopupMenuExit: TMenuItem;
    LogNotificationSave: TButton;
    RefreshMessageCountForDay: TTimer;
    MainMenuOptions: TMenuItem;
    MainMenuAutoLoad: TMenuItem;
    MainMenuToTray: TMenuItem;
    SteamHelperNotificationPanel: TPanel;
    LocalSteamNotificationPanel: TPanel;
    LogSaveDialog: TSaveDialog;
    DeleteLogs: TButton;
    WatchStatus: TMenuItem;
    WatchDota2: TMenuItem;
    Line1: TMenuItem;
    MaillNotificationUserMail: TLabeledEdit;
    ShowLogsFolder: TButton;
    ShowHeroImagesFolder: TButton;
    ShowAppLogosFolder: TButton;
    MailCheckGroupBox: TGroupBox;
    MailCheckButton: TButton;
    MailCheckLabel: TLabel;
    MailCheckEdit: TEdit;
    Button5: TButton;
    MaillNotificationStatusLabel: TLabel;
    MailGroupBox: TGroupBox;
    MailFriendsGroupBox: TGroupBox;
    MailFriendsCheckBox: TCheckBox;
    MailSteamGroupBox: TGroupBox;
    MailDota2GroupBox: TGroupBox;
    MailFriendsEdit: TLabeledEdit;
    MailSteamCheckBox: TCheckBox;
    MailSteamEdit: TLabeledEdit;
    MailDota2CheckBox: TCheckBox;
    MailDotaEdit: TLabeledEdit;
    MailSaveButton: TButton;
    Notification: TMenuItem;
    LocalNotification: TMenuItem;
    MailNotification: TMenuItem;
    SMSNotification: TMenuItem;
    LocalAllCheck: TMenuItem;
    LocalOffCheck: TMenuItem;
    MailAllCheck: TMenuItem;
    MailOffCheck: TMenuItem;
    SMSAllCheck: TMenuItem;
    SMSOffCheck: TMenuItem;
    NotificationOnAll: TMenuItem;
    NotificationOffAll: TMenuItem;
    N1: TMenuItem;
    MailMemo: TMemo;
    SaveMatch: TButton;
    ShowMatchPathButton: TButton;
    SavedMatchesTabSheet: TTabSheet;
    SavedMatchesList: TListBox;
    WebBrowser: TWebBrowser;
    SavedMatchTImer: TTimer;
    About: TMenuItem;
    AboutProgramm: TMenuItem;
    procedure Bu2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConnectSteamClick(Sender: TObject);
    procedure ShowBuysClick(Sender: TObject);
    procedure CheckUserNoClick(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure CheckUserYesClick(Sender: TObject);
    procedure PublicGridPopupCopyClick(Sender: TObject);
    procedure PublicDataGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure PrivateDataGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ShowFriendsClick(Sender: TObject);
    procedure GetPlayerAchievementsClick(Sender: TObject);
    procedure GamesListClick(Sender: TObject);
    procedure GetPlayerAchievementsGridDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure PrivateDataGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SteamBuysGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FriendsDataGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure GetPlayerAchievementsGridSelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure SteamBuysGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure GamesFullListGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure GamesFullListGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button4Click(Sender: TObject);
    procedure InfoForIconAndLogoButtonClick(Sender: TObject);
    procedure FriendsDataGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure UserIDClick(Sender: TObject);
    procedure UserLinkClick(Sender: TObject);
    procedure AllSteamAppsClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ChangeDownloadLogosPathClick(Sender: TObject);
    procedure StopDownloadClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure SteamHelperPageChange(Sender: TObject);
    procedure UserInfoPageChange(Sender: TObject);
    procedure FindTextChange(Sender: TObject);
    procedure Dota2ConnectClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DownloadHeroesClick(Sender: TObject);
    procedure DownloadHeroesChangeClick(Sender: TObject);
    procedure DotaCheckGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SteamAppsGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure DotaCheckGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure VisibleMatchCountChange(Sender: TObject);
    procedure ShowMatchHistoryClick(Sender: TObject);
    procedure GamesByDateTreeChange(Sender: TObject; Node: TTreeNode);
    procedure MatchInfoByDataGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure MatchInfoByDataGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure MatchInfoByDataGrid2SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure MatchInfoByDataGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure MatchInfoByDataGrid3DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure MatchInfoByDataGrid3SelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure ConverSteamIDsClick(Sender: TObject);
    procedure DownloadLogosInfoBitBtnClick(Sender: TObject);
    procedure DownloadLogosInfoButtonClick(Sender: TObject);
    procedure DownloadHeroIconsInfoBitBtnClick(Sender: TObject);
    procedure DownloadHeroIconsInfoButtonClick(Sender: TObject);
    procedure ShowAllHeroesGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure ShowAllHeroesButtonClick(Sender: TObject);
    procedure HeroOrIDFindTextChange(Sender: TObject);
    procedure ShowAllHeroesGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SteamHelperNotificationCheckBoxClick(Sender: TObject);
    procedure LocalNotificationTimerTimer(Sender: TObject);
    procedure LocalNotificationRefreshChange(Sender: TObject);
    procedure SteamNewAppTimerTimer(Sender: TObject);
    procedure LocalNotificationNewAppCheckBoxClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure LocalSteamNotificationCheckBoxClick(Sender: TObject);
    procedure LocalSteamNotificationRefreshChange(Sender: TObject);
    procedure DealTimerTimer(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure LocalDealNotificationCheckBoxClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DotaTimerTimer(Sender: TObject);
    procedure LocalDotaNotificationRefreshChange(Sender: TObject);
    procedure LocalDotaNotificationCheckBoxClick(Sender: TObject);
    procedure NewHeroTimerTimer(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure LocaHeroNotificationRefreshChange(Sender: TObject);
    procedure SmsDoneButtonClick(Sender: TObject);
    procedure SmsTestButtonClick(Sender: TObject);
    procedure SmsDotaRadioGroupClick(Sender: TObject);
    procedure SmsDotaHelpBitBtnClick(Sender: TObject);
    procedure SmsDotaInfoButtonClick(Sender: TObject);
    procedure SmsDotaCheckBoxClick(Sender: TObject);
    procedure LocalNotification1UserIDCheckBoxClick(Sender: TObject);
    procedure LocalNotificationPlayGameCheckBoxClick(Sender: TObject);
    procedure LocalHeroNotificationCheckBoxClick(Sender: TObject);
    procedure LocalNotificationShowMessageClick(Sender: TObject);
    procedure LocalNotificationBaloonHintClick(Sender: TObject);
    procedure LocalNotificationSaveButtonClick(Sender: TObject);
    procedure SmsFriendsCheckBoxClick(Sender: TObject);
    procedure SmsSteamCheckBoxClick(Sender: TObject);
    procedure ConverSteamIDs2Click(Sender: TObject);
    procedure MainMenuHideClick(Sender: TObject);
    procedure TrayIconLocalNotificationClick(Sender: TObject);
    procedure TrayPopupMenuShowClick(Sender: TObject);
    procedure TrayPopupMenuExitClick(Sender: TObject);
    procedure LogNotificationClearClick(Sender: TObject);
    procedure RefreshMessageCountForDayTimer(Sender: TObject);
    procedure MainMenuAutoLoadClick(Sender: TObject);
    procedure MainMenuToTrayClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure MainMenuExitClick(Sender: TObject);
    procedure LogNotificationSaveClick(Sender: TObject);
    procedure DeleteLogsClick(Sender: TObject);
    procedure PublicDataGridClick(Sender: TObject);
    procedure PrivateDataGridClick(Sender: TObject);
    procedure SteamBuysGridClick(Sender: TObject);
    procedure GetPlayerAchievementsGridClick(Sender: TObject);
    procedure SteamAppsGridClick(Sender: TObject);
    procedure DotaCheckGridClick(Sender: TObject);
    procedure MatchInfoByDataGrid3Click(Sender: TObject);
    procedure MatchInfoByDataGrid2Click(Sender: TObject);
    procedure MatchInfoByDataGridClick(Sender: TObject);
    procedure ShowAllHeroesGridClick(Sender: TObject);
    procedure WatchStatusClick(Sender: TObject);
    procedure WatchDota2Click(Sender: TObject);
    procedure ConnectSteamMouseLeave(Sender: TObject);
    procedure ConnectSteamMouseEnter(Sender: TObject);
    procedure Dota2ConnectMouseLeave(Sender: TObject);
    procedure Dota2ConnectMouseEnter(Sender: TObject);
    procedure ShowLogsFolderClick(Sender: TObject);
    procedure ShowHeroImagesFolderClick(Sender: TObject);
    procedure ShowAppLogosFolderClick(Sender: TObject);
    procedure MailCheckButtonClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure MailFriendsCheckBoxClick(Sender: TObject);
    procedure MailSteamCheckBoxClick(Sender: TObject);
    procedure MailDota2CheckBoxClick(Sender: TObject);
    procedure MailSaveButtonClick(Sender: TObject);
    procedure LocalAllCheckClick(Sender: TObject);
    procedure LocalOffCheckClick(Sender: TObject);
    procedure MailAllCheckClick(Sender: TObject);
    procedure MailOffCheckClick(Sender: TObject);
    procedure SMSAllCheckClick(Sender: TObject);
    procedure SMSOffCheckClick(Sender: TObject);
    procedure NotificationOnAllClick(Sender: TObject);
    procedure NotificationOffAllClick(Sender: TObject);
    procedure SaveMatchClick(Sender: TObject);
    procedure ShowMatchPathButtonClick(Sender: TObject);
    procedure SavedMatchTImerTimer(Sender: TObject);
    procedure SavedMatchesListClick(Sender: TObject);
    procedure AboutProgrammClick(Sender: TObject);

  private
  procedure FillUserInfoGrid;
  procedure LoadUserInfoByID(SteamID: String);
  procedure ShowApps;
  procedure DownloadALLGameLogos(Path: String); //ЗАГРУЗИТЬ ВСЕ КАРТИНКИ STEAM
  procedure LoadDotaUserInfoByID(SteamID: String);
  procedure CheckDotaMatchHistory(DotaUserID: String);
  procedure DownloadALLHeroIcons(Path: String);
  function LoadDotaUserNameByID(SteamID: String): String;
  procedure GamesByDateTreeChange_0(DotaUserID: String);
  procedure GamesByDateTreeChange_1(Node: TTreeNode; DotaUserID: String);
  procedure GamesByDateTreeChange_2(Node: TTreeNode; DotaUserID: String);
  procedure GamesByDateTreeChange_3(Node: TTreeNode; DotaUserID: String);
  procedure ShowHeroes;
  procedure RefreshStatusBar;
  procedure SteamLocalNotification(var NotificationTemplate: String; AppIndexInSteamAppGrid: integer);
  procedure DrawDealNotification(DailyDealCaption, DailyDealNotification: String);
  procedure ReplaceDotaNotification(var DotaNotification, MatchIDNotification: String);
  procedure TrayIconNotification(Notification: String);
  procedure ShowNotification(Notification: String);
  procedure Log(Notification: String; NotificationType: integer);
  function OneSmsPrice(var TextMsg: String): Boolean;
  function SendSms(TextMsg: String): Boolean;
  procedure ReadINI;
  function SendMailNotification(MailSendTo, MailSubject, MailText: String): Boolean;
  procedure LoadMatchInfo(MatchGameID: String);
  function SendMatchByMailNotification(MailSendTo, MailSubject, BodyPath: String): Boolean;
    { Private declarations }
  public
  procedure GoToURL(Sender: TObject);
    { Public declarations }
  end;

var
  MainSteamHelperForm: TMainSteamHelperForm;
  IniFile: TIniFile;
  Reg: TRegistry;
  RegMail: TRegistry;

implementation

{$R *.dfm}

//STEAM
const ProgramCaption = 'Steam Helper';
const SteamKey = 'AFF0B3284D78A9BFA3B80AA73EBF7D0F';
const UserXML = 'PlayerSummaries.xml';
const UserAvatar = 'PlayerAvatar.jpg';
const NonUserXML = 'NonUserXML.xml';
const UserLVL = 'UserLVL.xml';
//const Flags = 'http://cdn.steamcommunity.com/public/images/countryflags/fr.gif';//Флаги в стим
const PlayerOwnedGames = 'PlayerOwnedGames.xml';
const PlayerFriendsList = 'PlayerFriendList.xml';
const PlayerAchievements = 'PlayerAchievements.xml';
const UserIDFromLink = 'UserIDFromLink.xml';
const SteamAppsList = 'SteamAppsList.xml';

//DOTA
const PlayerMatchHistory = 'PlayerMatchHistory.xml';
const DotaHeroes = 'DotaHeroes.xml';
const MatchHistoryBySequenceNum = 'MatchHistoryBySequenceNum.xml';

const LastMatchIDFile = 'LastMatchID.txt';
const NowMatchIDFile = 'NowMatchID.txt';

const LastHeroFile = 'LastHeroFile.txt';
const NowHeroFile = 'NowMatchID.txt';

const DailyDeal = 'DailyDeal.txt';
const DailyDealPic = 'DailyDealPic.jpg';

//SMS
const SmsMessageCount = 50;


var ExePath, TempPath, LogPath, TempDotaPath, TempDotaUsersPath, TempDailyDealPath: String;
    GlobalNotificationTempPath: String;
    GridSelection, LoadFlag: String;
    LastStatus, NowStatus: String;
    LastMatchID, NowMatchID: String;
    LastHeroCount, NowHeroCount: Integer;
    FlagIndex, UserIndex, LastSteamAppCount, NowSteamAppCount, SaveLastSteamAppCount: integer;
    GamesIDs, HeroIDs, AllHeroIDs: array of integer;
    LastGame, NowGame, SaveLastGameStatus: array of String;
    DownloadFiles: boolean;
    User64IDInt64: Int64;
    WatchStatusStr, GlobalMatchIDForSave: String;
    MailCheckSendPassword, trySMSCount: integer;


procedure TMainSteamHelperForm.Log(Notification: String; NotificationType: integer);
begin
{
type
-1: program
0: local - friend
1: local - steam
2: local - dota

3: mail
4: sms
}
  case NotificationType of
    -1: LogNotificationMemo.Lines.Add(TimeToStr(Time) + '. ' + Notification);
    0: LogNotificationMemo.Lines.Add(TimeToStr(Time) + '. Локальное уведомление (Друзья): ' + Notification);
    1: LogNotificationMemo.Lines.Add(TimeToStr(Time) + '. Локальное уведомление (Steam): ' + Notification);
    2: LogNotificationMemo.Lines.Add(TimeToStr(Time) + '. Локальное уведомление (Dota 2): ' + Notification);
    3: LogNotificationMemo.Lines.Add(TimeToStr(Time) + '. Уведомление по почте: ' + Notification);
    4: LogNotificationMemo.Lines.Add(TimeToStr(Time) + '. Уведомление по СМС: ' + Notification);
  end;
  LogNotificationMemo.Lines.Add('******************************************************************************************');
end;

procedure TMainSteamHelperForm.LogNotificationClearClick(Sender: TObject);
begin
  LogNotificationMemo.Clear;
end;

function ClearName(Input: string; EArray: string; Action: integer): string;
var S, S1: String;
begin
  S := Input;
  case Action of
    1:
      begin
        while length(S) <> 0 do
        begin
          if pos(S[1], EArray) = 0 then
            delete(S, 1, 1)
          else
          begin
            S1 := S1 + S[1];
            delete(S, 1, 1);
          end;
        end;
      end;
    2:
      begin
        while length(S) <> 0 do
        begin
          if pos(S[1], EArray) <> 0 then
            delete(S, 1, 1)
          else
          begin
            S1 := S1 + S[1];
            delete(S, 1, 1);
          end;
        end;
      end;
  end;
  Result := S1;
end;

procedure TMainSteamHelperForm.LogNotificationSaveClick(Sender: TObject);
var S: String;
begin
  if LogNotificationMemo.Lines.Count = 0 then
  begin
    ShowMessage('Лог пуст');
    exit;
  end;
  S :=  ClearName(TimeToStr(Time), ':', 2);
  if not DirectoryExists(LogPath) then
    CreateDir(LogPath);
  LogNotificationMemo.Lines.SaveToFile(LogPath + DateToStr(Date) + '_' +  S + '.txt');
  Log('Лог сохранён: ' + LogPath + DateToStr(Date) + '_' +  S + '.txt', -1);
end;

procedure TMainSteamHelperForm.RefreshMessageCountForDayTimer(Sender: TObject);
begin
  if Reg.ReadString('Date') <> DateToStr(Date) then
  begin
    Reg.WriteString('Date', DateToStr(Date));
    Reg.WriteInteger('Count', SmsMessageCount);
  end
  else
    if Reg.ReadInteger('Count') <> 0 then
    begin
      SmsCounLabel.Caption := 'Осталось сообщений на сегодня: ' + IntToStr(Reg.ReadInteger('Count'));
    end
    else
    begin
      SmsCounLabel.Caption := 'На сегодня сообщений не осталось';
    end;
end;

procedure TMainSteamHelperForm.TrayIconLocalNotificationClick(Sender: TObject);
begin
  MainSteamHelperForm.Show;
end;

procedure TMainSteamHelperForm.TrayIconNotification(Notification: String);
begin
  TrayIconLocalNotification.Visible := TRUE;
  TrayIconLocalNotification.BalloonTitle := 'Уведомление';
  TrayIconLocalNotification.BalloonHint := Notification;
  TrayIconLocalNotification.ShowBalloonHint;
end;

procedure TMainSteamHelperForm.TrayPopupMenuExitClick(Sender: TObject);
begin
  MainSteamHelperForm.Close;
end;

procedure TMainSteamHelperForm.TrayPopupMenuShowClick(Sender: TObject);
begin
  MainSteamHelperForm.Show;
end;

procedure TMainSteamHelperForm.ShowNotification(Notification: String);
begin
  if LocalNotificationShowMessage.Checked then
    ShowMessage(Notification);
  if LocalNotificationBaloonHint.Checked then
  begin
    TrayIconNotification(Notification);
  end;
end;


procedure TMainSteamHelperForm.SMSAllCheckClick(Sender: TObject);
begin
  SmsFriendsCheckBox.Checked := TRUE;
  SmsSteamCheckBox.Checked := TRUE;
  SmsDotaCheckBox.Checked := TRUE;
end;

procedure DeleteFilesFromPath(APath: string);
var
  XSearch: TSearchRec;
begin
  FindFirst(APath+'\*.*', faAnyFile+faReadOnly, XSearch);
  DeleteFile(APath+'\'+XSearch.Name);
  while FindNext(XSearch)=0 do DeleteFile(APath+'\'+XSearch.Name);
  FindClose(XSearch);
end;

function UserName: string;
var
    u: pchar;
    i: dword;
begin
  i := 1024;
  u := StrAlloc(Succ(i));
  if GetUserName(u, i) then Result := StrPas(u) else Result := '?';
end;

function Online: boolean;
begin
  result := (InternetGetConnectedState(nil, 0))
end;

Function GetIPAddress(): String;
type
  pu_long = ^u_long;
var
  varTWSAData : TWSAData;
  varPHostEnt : PHostEnt;
  varTInAddr : TInAddr;
  namebuf : Array[0..255] of AnsiChar;
begin
  If WSAStartup($101,varTWSAData) <> 0 Then
  Result := 'Нет IP :('
  Else Begin
    gethostname(namebuf,sizeof(namebuf));
    varPHostEnt := gethostbyname(namebuf);
    varTInAddr.S_addr := u_long(pu_long(varPHostEnt^.h_addr_list^)^);
    Result := 'IP: '+inet_ntoa(varTInAddr);
  End;
  WSACleanup;
end;

function DownloadMessage(URL, DestFile: string): Boolean;//Загрузка интернет страницы
begin
  try
    Result:=UrlDownloadToFile(nil,PChar(URL),PChar(DestFile),0,nil)=0;
  except
    Result := False;
  end;
end;

function DownloadFile(URL, DestFile: string): Boolean;//Загрузка интернет страницы
var LoadStream: TMemoryStream;
    http : TIdHTTP;
begin
{
  try
    Result:=UrlDownloadToFile(nil,PChar(URL),PChar(DestFile),0,nil)=0;
  except
    Result := False;
  end;     }
try
  http := TIdHTTP.Create;

  LoadStream := TMemoryStream.Create; // выделение памяти под переменную
  http.Get(URL, LoadStream); // загрузка в поток данных из сети
  LoadStream.SaveToFile(DestFile); // сохраняем данные из потока на жестком диске
  LoadStream.Free; // освобождаем память
  Result := TRUE;
except  //При ошибке
  //on E: Exception do
  //begin
  Result := False;
  //end;
end;

{
 3  //Res := UrlDownloadToFile(nil, PChar(URL), PChar(DestFile), 0, nil);
   //ShowMessage(IntToStr(Res));
  try
    CoInitialize(nil);
    Result:=UrlDownloadToFile(nil, PChar(URL), PChar(DestFile), 0, nil) = 0;
  except
    Result := False;
  end;
}
end;

function TextFileToString(const FilePath: TFileName): string;
var
  St: TStringList;
begin
  St := TStringList.Create;
  try
    St.LoadFromFile(FilePath);
    Result := St.Text
  finally
    St.Free
    end
end;

procedure StringToTextFile(Text: String; const FilePath: TFileName);
var
  St: TStringList;
begin
  St := TStringList.Create;
  St.Text := Text;
  try
    St.SaveToFile(FilePath);
  finally
    St.Free
  end
end;
//StringToTextFile TextFileToString
procedure NewXMLFile(XMLPath: String);
var OldXML: String;
    XNLFile: TextFile;
begin
  OldXML := TextFileToString(XMLPath);
  //SourseMemo.Lines.LoadFromFile(XMLPath);
  //NewXML := SourseMemo.Text;
  Delete(OldXML, Pos('<!DOCTYPE response>', OldXML), Length('<!DOCTYPE response>'));
  StringToTextFile(OldXML, XMLPath);
end;

procedure NewDotaMatchXMLFile(XMLPath: String);
var OldXML: String;
    XNLFile: TextFile;
begin
  OldXML := TextFileToString(XMLPath);
  //SourseMemo.Lines.LoadFromFile(XMLPath);
  //NewXML := SourseMemo.Text;
  Delete(OldXML, Pos('<!DOCTYPE result>', OldXML), Length('<!DOCTYPE result>'));
  StringToTextFile(OldXML, XMLPath);
end;

procedure NewXMLAppsListFile(XMLPath: String);
var OldXML: String;
    XNLFile: TextFile;
begin
  OldXML := TextFileToString(XMLPath);
  //SourseMemo.Lines.LoadFromFile(XMLPath);
  //NewXML := SourseMemo.Text;
  Delete(OldXML, Pos('<!DOCTYPE applist>', OldXML), Length('<!DOCTYPE applist>'));
  StringToTextFile(OldXML, XMLPath);
end;

procedure NewXMLFriendsListFile(XMLPath: String);
var OldXML: String;
    XNLFile: TextFile;
begin
  OldXML := TextFileToString(XMLPath);
  //SourseMemo.Lines.LoadFromFile(XMLPath);
  //NewXML := SourseMemo.Text;
  Delete(OldXML, Pos('<!DOCTYPE friendslist>', OldXML), Length('<!DOCTYPE friendslist>'));
  StringToTextFile(OldXML, XMLPath);
end;

procedure NewXMLAchievements(XMLPath: String);
var OldXML: String;
    XNLFile: TextFile;
begin
  OldXML := TextFileToString(XMLPath);
  //SourseMemo.Lines.LoadFromFile(XMLPath);
  //NewXML := SourseMemo.Text;
  Delete(OldXML, Pos('<!DOCTYPE playerstats>', OldXML), Length('<!DOCTYPE playerstats>'));
  StringToTextFile(OldXML, XMLPath);
end;

function GetXMLPlayerLVL(XMLDoc: TXMLDocument; XMLPath, NodeValue: String): String;
var Node, Root: IXMLNode;
    Return: String;
begin
  XMLDoc.LoadFromFile(XMLPath);
  XMLDoc.Active := TRUE;
  Root := XMLDoc.DocumentElement;
  Return := Root.ChildNodes.Nodes[NodeValue].Text;
  if Return = '' then
    Result := '?'
  else
    Result := Return;
end;

function GetUserLVL(XMLDoc: TXMLDocument; UserID: String): String;
var LoadURL: String;
begin
  Result := '?';
  LoadURL := 'http://api.steampowered.com/IPlayerService/GetSteamLevel/v1/?key=' + SteamKey + '&steamid=' + UserID + '&format=xml';
  if DownloadFile(LoadURL, TempPath + UserLVL) then
  begin
    NewXMLFile(TempPath + UserLVL);
    Result := GetXMLPlayerLVL(XMLDoc, TempPath + UserLVL, 'player_level');
  end;
end;

function UserExist: Boolean;
var LoadURL, User, NonUser: String;
begin
  Result := TRUE;
  LoadURL := 'http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v2/?key=' + SteamKey + '&steamids=0&format=xml';
  if DownloadFile(LoadURL, TempPath + NonUserXML) then
  begin
    NewXMLFile(TempPath + NonUserXML);
    User := TextFileToString(TempPath + UserXML);
    NonUser := TextFileToString(TempPath + NonUserXML);
    if User = NonUser then
    begin
      Result := FALSE;
    end;
  end;
end;

function GetXMLPlayerSummariesByNode(XMLDoc: TXMLDocument; XMLPath, NodeValue: String): String;
var Node, Root: IXMLNode;
    Return: String;
begin
  XMLDoc.LoadFromFile(XMLPath);
  XMLDoc.Active := TRUE;
  Root := XMLDoc.DocumentElement;
  Root := Root.ChildNodes.Nodes['players']; //<players>
  Root := Root.ChildNodes.Nodes['player'];//<player>
  Return := Root.ChildNodes.Nodes[NodeValue].Text;
  if Return = '' then
    Result := '?'
  else
    Result := Return;
end;

function GetXMLOwnedGames(XMLDoc: TXMLDocument; XMLPath, NodeValue: String): String;
var Node, Root, XMLGames, XMLMessage: IXMLNode;
    Return: String;
    i, j: integer;
begin
  XMLDoc.LoadFromFile(XMLPath);
  XMLDoc.Active := TRUE;
  Root := XMLDoc.DocumentElement;
  Return := Root.ChildNodes.Nodes['game_count'].Text; //<game_count>
  XMLGames := Root.ChildNodes.Nodes[1]; //
{
<appid>570</appid>
<name>Dota 2</name>
<playtime_2weeks>1784</playtime_2weeks>
<playtime_forever>19126</playtime_forever>
<img_icon_url>0bbb630d63262dd66d2fdd0f7d37e8661a410075</img_icon_url>
<img_logo_url>d4f836839254be08d8e9dd333ecc9a01782c26d2</img_logo_url>
}
  for i := 0 to XMLGames.ChildNodes.Count - 1 do
  begin
    XMLMessage := XMLGames.ChildNodes.Nodes[i];
    Return := XMLMessage.ChildNodes.Nodes['appid'].Text; //<game_count>
    Return := XMLMessage.ChildNodes.Nodes['name'].Text; //<game_count>
    Return := XMLMessage.ChildNodes.Nodes['playtime_2weeks'].Text; //<game_count>
    Return := XMLMessage.ChildNodes.Nodes['playtime_forever'].Text; //<game_count>
    Return := XMLMessage.ChildNodes.Nodes['img_icon_url'].Text; //<game_count>
    Return := XMLMessage.ChildNodes.Nodes['img_logo_url'].Text; //<game_count>
  end;

  Root := Root.ChildNodes.Nodes[0];//<player>


  Root := Root.ChildNodes.Nodes[0];//<player>
  Return := Root.ChildNodes.Nodes['playtime_2weeks'].Text;

  Return := Root.ChildNodes.Nodes['game_count'].Text;
  //Edit1.Text := Root.ChildNodes.Nodes['Item'].Attributes['id'];//<Item id="1">
  Return := Root.ChildNodes.Nodes[NodeValue].Text;
  if Return = '' then
    Result := '?'
  else
    Result := Return;
end;

procedure SetUserAvatar(Image: TImage; XMLDoc: TXMLDocument; XMLPath, DestFile: String);//Загрузка интернет страницы
var AvatarURL: String;
begin
  AvatarURL := GetXMLPlayerSummariesByNode(XMLDoc, XMLPath, 'avatarfull');
  if URLDownloadToFile(nil, PChar(AvatarURL), PChar(DestFile), 0, nil) = 0 then
    Image.Picture.LoadFromFile(DestFile)
  else
    ShowMessage('Изображение не найдено');
end;


function GetCurrentGMT: TDateTime;
var
 y: TSystemTime;
begin
  GetSystemTime(y);
  result := SystemTimeToDateTime(y);
end;

function UnixToDateTime(Value: Longword; InUTC: Boolean): TDateTime;
var dwValue: LongWord;
     Days: LongWord;
     Hour: Word;
     Min: Word;
     Sec: Word;
     tz: TTimeZoneInformation;
begin

  // Get time zone information
  GetTimeZoneInformation(tz);

  // Offset by time zone
  if InUTC then
     // UTC time
     dwValue:=Value
  else
     // Local time to UTC
     dwValue:=LongWord(Integer(Value) - (tz.Bias * 60));

  // Decode days and time part
  Days:=dwValue div SecsPerDay;
  dwValue:=dwValue mod SecsPerDay;
  Hour:=dwValue div 3600;
  dwValue:=dwValue mod 3600;
  Min:=dwValue div 60;
  Sec:=dwValue mod 60;

  // Return encoded date time
  result:=EncodeDate(1970, 1, 1)+Days+EncodeTime(Hour, Min, Sec, 0);
end;

function HeroNameByHeroID(XMLDoc: TXMLDocument; HeroID: String): String;
var LoadURL: String;
    Node, Root, XMLHero: IXMLNode;
    GamesCount, Return, Hero: String;
    i, j: integer;
begin
  Result := '?';
  LoadURL := 'http://api.steampowered.com/IEconDOTA2_570/GetHeroes/v1/?key=' + SteamKey + '&format=xml&language=us';
  if not FileExists(TempDotaPath + DotaHeroes) then
    DownloadFile(LoadURL, TempDotaPath + DotaHeroes);

  NewDotaMatchXMLFile(TempDotaPath + DotaHeroes);

  XMLDoc.LoadFromFile(TempDotaPath + DotaHeroes);
  XMLDoc.Active := TRUE;
{
<result>
	<heroes>
		<hero>
			<name>npc_dota_hero_antimage</name>
			<id>1</id>
			<localized_name>Anti-Mage</localized_name>
		</hero>
}
//ГРЁБАНЫЕ 10, 11 ВЕТКИ В XML ПОМЕНЯНЫ МЕСТАМИ, ПРИХОДИТЬСЯ ЗАПАРИВАТЬСЯ ИЗ-ЗА ФИГНИ
  Root := XMLDoc.DocumentElement;
  Root := Root.ChildNodes.Nodes['heroes'];
  for I := 0 to Root.ChildNodes.Count - 1 do
  begin
    if DownloadFiles then
    begin
      Application.ProcessMessages();
      XMLHero := Root.ChildNodes.Nodes[i];
      Hero := XMLHero.ChildNodes.Nodes['localized_name'].Text;
      if XMLHero.ChildNodes.Nodes['id'].Text = HeroID then
      begin
        Result := Hero;
        exit;
      end;
    end
    else
      break;
  end;
end;

procedure TMainSteamHelperForm.CheckDotaMatchHistory(DotaUserID: String);
var LoadURL, GameDate: String;
    Node, Root, XMLMatches, Players, Player, XMLMatch: IXMLNode;
    HeroName, Return, MatchPlayerAccID, MatchPlayerHeroID: String;
    i, j: integer;
begin
  //Screen.Cursor := crHourGlass;//Screen.Cursor := crArrow;
  LoadURL := 'http://api.steampowered.com/IEconDOTA2_570/GetHeroes/v1/?key=' + SteamKey + '&format=xml&language=us';
  DownloadFile(LoadURL, TempDotaPath + DotaHeroes);

  NewDotaMatchXMLFile(TempDotaPath + PlayerMatchHistory);

  XMLDoc.LoadFromFile(TempDotaPath + PlayerMatchHistory);
  XMLDoc.Active := TRUE;
{ RESULT
result
status
1 - Success
15 - Cannot get match history for a user that hasn't allowed it.
statusDetail
A message explaining the status, should status not be 1.
num_results
The number of matches in this response.
total_results
The total number of matches for the query.
results_remaining
The number of matches left for this query.
matches
A list of matches.
match_id
The matches unique ID.
match_seq_num
A 'sequence number', representing the order in which matches were recorded.
start_time
Unix timestamp of when the match began.
lobby_type
-1 - Invalid
0 - Public matchmaking
1 - Practise
2 - Tournament
3 - Tutorial
4 - Co-op with bots.
5 - Team match
6 - Solo Queue
players
The list of players within the match.
account_id
32-bit account ID.
player_slot
See #Player Slot below.
hero_id
The hero's unique ID. A list of hero IDs can be found via the GetHeroes method.
}
{ XML
<result>
	<status>1</status>
	<num_results>25</num_results>
	<total_results>330</total_results>
	<results_remaining>305</results_remaining>
	<matches>
		<match>
			<match_id>258224345</match_id>
			<match_seq_num>234222703</match_seq_num>
			<start_time>1375212766</start_time>
			<lobby_type>4</lobby_type>
			<players>
				<player>
					<account_id>4294967295</account_id>
					<player_slot>0</player_slot>
					<hero_id>73</hero_id>
				</player>
}
  Root := XMLDoc.DocumentElement;
  if Root.ChildNodes.Nodes['status'].Text = '15' then
  begin
    PrivateGamesStatus.Caption := 'На историю матчей наложена приватность!';
    DotaCheckGrid.Visible := FALSE;
    exit
  end;
  DotaCheckGrid.Visible := TRUE;
  CheckDotaGamesGroup.Caption := 'История матчей ' + '(последние ' + Root.ChildNodes.Nodes['num_results'].Text + ' матчей)';

  XMLMatches := Root.ChildNodes.Nodes['matches'];

  DotaCheckGrid.RowCount := XMLMatches.ChildNodes.Count + 1;

  for I := 1 to DotaCheckGrid.RowCount do
  begin
    Application.ProcessMessages();
    DotaCheckGrid.Cells[0, i] := IntToStr(i);
  end;

  SetLength(HeroIDs, XMLMatches.ChildNodes.Count);

  ConnectProgress.Max := XMLMatches.ChildNodes.Count - 1;
  for i := 0 to XMLMatches.ChildNodes.Count - 1 do
  begin
    if DownloadFiles then
    begin
      ConnectProgress.Position := i;
      Application.ProcessMessages();
      XMLMatch := XMLMatches.ChildNodes.Nodes[i];
      DotaCheckGrid.Cells[1, i + 1] := XMLMatch.ChildNodes.Nodes['match_id'].Text;
      GameDate := DateTimeToStr(UnixToDateTime(Cardinal(StrToInt(XMLMatch.ChildNodes.Nodes['start_time'].Text)), FALSE));
      DotaCheckGrid.Cells[2, i + 1] := GameDate;
      Players := XMLMatch.ChildNodes.Nodes['players'];
      for j := 0 to Players.ChildNodes.Count - 1 do
      begin
        ConnectProgress.Position := i;
        Application.ProcessMessages();
        Player := Players.ChildNodes.Nodes[j];
        MatchPlayerAccID := Player.ChildNodes.Nodes['account_id'].Text;
        MatchPlayerHeroID := Player.ChildNodes.Nodes['hero_id'].Text;
        if MatchPlayerAccID = DotaUserID then
        begin
          HeroIDs[i] := StrToInt(MatchPlayerHeroID);
          HeroName := HeroNameByHeroID(XMLDoc, MatchPlayerHeroID);
          DotaCheckGrid.Cells[3, i + 1] := HeroName;
        end;
      end;
    end
    else
      break;
    end;
end;


procedure TMainSteamHelperForm.Dota2ConnectClick(Sender: TObject);
var LoadURL, UserNameFromLink, DotaUserID: String;
begin
  DotaUserID := Trim(FloatToStr(StrToFloat(Dota2ConnectionID.Text) - 76561197960265728));

  LoadDotaUserInfoByID(Trim(Dota2ConnectionID.Text));

  LoadURL := 'http://api.steampowered.com/IDOTA2Match_570/GetMatchHistory/V001/?key=' + SteamKey + '&account_id=' + DotaUserID + '&format=xml';
  if DownloadFile(LoadURL, TempDotaPath + PlayerMatchHistory) then
    begin
      CheckDotaMatchHistory(DotaUserID);
    end;
  DotaCheckGrid.Refresh;
end;

procedure TMainSteamHelperForm.Dota2ConnectMouseEnter(Sender: TObject);
begin
  if FileExists(ExePath + 'Buttons\dota2emble_mouse.png') then
  begin
    Dota2Connect.Picture.LoadFromFile(ExePath + 'Buttons\dota2emble_mouse.png');
  end;
end;

procedure TMainSteamHelperForm.Dota2ConnectMouseLeave(Sender: TObject);
begin
  if FileExists(ExePath + 'Buttons\dota2emble.png') then
  begin
    Dota2Connect.Picture.LoadFromFile(ExePath + 'Buttons\dota2emble.png');
  end;
end;

function IndexOfHeroInListBoxByHeroID(HeroIDs: integer): Integer;
begin
  case HeroIDs of
    1: Result := 0;
    2: Result := 1;
    3: Result := 2;
    4: Result := 3;
    5: Result := 4;
    6: Result := 5;
    7: Result := 6;
    8: Result := 7;
    9: Result := 8;
    10: Result := 9;
    11: Result := 10;
    12: Result := 11;
    13: Result := 12;
    14: Result := 13;
    15: Result := 14;
    16: Result := 15;
    17: Result := 16;
    18: Result := 17;
    19: Result := 18;
    20: Result := 19;
    21: Result := 20;
    22: Result := 21;
    23: Result := 22; //!!!
    //24: Result := 3;
    25: Result := 23; //!!!
    26: Result := 24;
    27: Result := 25;
    28: Result := 26;
    29: Result := 27;
    30: Result := 28;
    31: Result := 29;
    32: Result := 30;
    33: Result := 31;
    34: Result := 32;
    35: Result := 33;
    36: Result := 34;
    37: Result := 35;
    38: Result := 36;
    39: Result := 37;
    40: Result := 38;
    41: Result := 39;
    42: Result := 40;
    43: Result := 41;
    44: Result := 42;
    45: Result := 43;
    46: Result := 44;
    47: Result := 45;
    48: Result := 46;
    49: Result := 47;
    50: Result := 48;
    51: Result := 49;
    52: Result := 50;
    53: Result := 51;
    54: Result := 52;
    55: Result := 53;
    56: Result := 54;
    57: Result := 55;
    58: Result := 56;
    59: Result := 57;
    60: Result := 58;
    61: Result := 59;
    62: Result := 60;
    63: Result := 61;
    64: Result := 62;
    65: Result := 63;
    66: Result := 64;
    67: Result := 65;
    68: Result := 66;
    69: Result := 67;
    70: Result := 68;
    71: Result := 69;
    72: Result := 70;
    73: Result := 71;
    74: Result := 72;
    75: Result := 73;
    76: Result := 74;
    77: Result := 75;
    78: Result := 76;
    79: Result := 77;
    80: Result := 78;
    81: Result := 79;
    82: Result := 80;
    83: Result := 81;
    84: Result := 82;
    85: Result := 83;
    86: Result := 84;
    87: Result := 85;
    88: Result := 86;
    89: Result := 87;
    90: Result := 88;
    91: Result := 89;
    92: Result := 90;
    93: Result := 91;
    94: Result := 92;
    95: Result := 93;
    96: Result := 94;
    97: Result := 95;
    98: Result := 96;
    99: Result := 97;
    100: Result := 98;
    101: Result := 99;
    102: Result := 100;
    103: Result := 101;

  end;
end;
procedure TMainSteamHelperForm.DotaCheckGridClick(Sender: TObject);
begin
  WatchStatus.Visible := FALSE;
  WatchDOta2.Visible := FALSE;
end;

procedure TMainSteamHelperForm.DotaCheckGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
  var i,help: integer;
begin
  {условие : в какой ячейке рисовать}
  for I := 0 to DotaCheckGrid.RowCount - 1 do
  if ((ACol = 4)and(ARow = i + 1)) then
  begin
    Help := HeroIDs[i];
    DotaImageList.Draw(DotaCheckGrid.Canvas, Rect.Left + 1, Rect.Top + 1, IndexOfHeroInListBoxByHeroID(Help));
  end;
{1- индекс картинки в ImageList-е}
end;

procedure TMainSteamHelperForm.DotaCheckGridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  GridSelection := DotaCheckGrid.Cells[ACol, ARow];
  DotaCheckGrid.Hint := GridSelection;
end;

function ReplaceNotification(S, NotificationSubStr, NewStr: String): String;
var Notification: String;
begin
  Result := '?';
  Notification := S;
  if Pos(NotificationSubStr, Notification) > 0 then
  begin
    Insert(NewStr, Notification, Pos(NotificationSubStr, Notification));
    Delete(Notification, Pos(NotificationSubStr, Notification), Length(NotificationSubStr));
  end;
  Result := Notification;
end;

function ReturnLobbyType(Num: String): String;
var i: integer;
begin
{
lobby_type
-1 - Invalid
0 - Public matchmaking
1 - Practise
2 - Tournament
3 - Tutorial
4 - Co-op with bots.
5 - Team match
6 - Solo Queue
}
  i := StrToInt(Num);
  case i of
    -1: Result := '?';
    0: Result := 'Публичный';
    1: Result := 'Тренировка';
    2: Result := 'Турнир';
    3: Result := 'Гайд';
    4: Result := 'Ко-Оп с ботами';
    5: Result := 'Командный';
    6: Result := 'Solo Queue';
    else Result := '?';
  end;
end;

function ReturnGameMode(Num: String): String;
var i: integer;
begin
{
game_mode
0 - All Pick
1 - Single Draft
2 - All Random
3 - Random Draft
4 - Captain's Draft
5 - Captain's Mode
6 - Death Mode
7 - Diretide
8 - Reverse Captain's Mode
9 - The Greeviling
10 - Tutorial
11 - Mid Only
12 - Least Played
13 - New Player Pool
}
  i := StrToInt(Num);
  case i of
    1: Result := 'All Pick';
    2: Result := 'Random Draft';//Single Draft
    3: Result := 'Captain''s Draft';
    4: Result := 'Single Draft';
    5: Result := 'All Random';//Captain''s Draft
    6: Result := 'Captain''s Mode';
    7: Result := 'Death Mode';
    8: Result := 'Diretide';
    9: Result := 'Reverse Captain''s Mode';
    10: Result := 'The Greeviling';
    11: Result := 'Tutorial';
    12: Result := 'Mid Only';
    13: Result := 'Least Played';
    14: Result := 'New Player Pool';
    else Result := '?';
  end;
end;

procedure TMainSteamHelperForm.LoadMatchInfo(MatchGameID: String);
var SaveLastStatus, GameTime: String;
    LoadURL, GameDate, HeroID, MatchSeqNum, Winner, S1, S2, Kk, Dd, Aa, KDA: String;
    Root, XMLMatches, Players, Player, XMLMatch: IXMLNode;
    HeroName, Return, MatchID, MatchPlayerAccID, MatchPlayerHeroID, User64ID: String;
    i, j, k, M, S, FbM, FbS: integer;
    User64IDReal: real;
    gold, last_hits, denies, gold_per_min, xp_per_min,
    gold_spent, hero_damage, tower_damage, hero_healing: String;
begin
  SaveMatch.Visible := TRUE;
  SaveMatch.Caption := 'Загрузка..';
  SaveMatch.Enabled := FALSE;
  MatchInfoByDataGrid.Visible := FALSE;
  MatchInfoByDataGrid2.Visible := TRUE;
  MatchInfoByDataGrid3.Visible := FALSE;

  NewDotaMatchXMLFile(TempDotaPath + PlayerMatchHistory);

  XMLDoc.LoadFromFile(TempDotaPath + PlayerMatchHistory);
  XMLDoc.Active := TRUE;

  Root := XMLDoc.DocumentElement;
  if Root.ChildNodes.Nodes['status'].Text = '15' then
  begin
    GameInfoBox.Caption := 'На историю матчей наложена приватность!';
    GameInfoBox.Visible := FALSE;
    exit
  end;
  GameInfoBox.Caption := 'История матча: ';
  GameInfoBox.Visible := TRUE;

  XMLMatches := Root.ChildNodes.Nodes['matches'];

  MatchInfoByDataGrid2.RowCount := 11;

  for I := 1 to 11 do
  begin
    Application.ProcessMessages();
    MatchInfoByDataGrid2.Cells[0, i] := IntToStr(i);
  end;

  SetLength(HeroIDs, 10);
  ConnectProgress.Max := XMLMatches.ChildNodes.Count - 1;
  for i := 0 to XMLMatches.ChildNodes.Count - 1 do
  begin
    if DownloadFiles then
    begin
      ConnectProgress.Position := i;
      Application.ProcessMessages();
      XMLMatch := XMLMatches.ChildNodes.Nodes[i];
      MatchID := XMLMatch.ChildNodes.Nodes['match_id'].Text;
      GameInfoBox.Caption := 'История матча: ' + MatchID;
      if Pos(MatchID, MatchGameID) > 0 then
      begin
        Players := XMLMatch.ChildNodes.Nodes['players'];
        for j := 0 to Players.ChildNodes.Count - 1 do
        begin
          Application.ProcessMessages();
          Player := Players.ChildNodes.Nodes[j];
          MatchPlayerAccID := Player.ChildNodes.Nodes['account_id'].Text;
          if MatchPlayerAccID <> '' then
          begin
            User64IDInt64 := StrToInt64(Player.ChildNodes.Nodes['account_id'].Text);
            User64IDInt64 := User64IDInt64 + 76561197960265728;
            MatchInfoByDataGrid2.Cells[2, j + 1] := LoadDotaUserNameByID(IntToStr(User64IDInt64));
            if IntToStr(User64IDInt64) = Dota2ConnectionID.Text then
              UserIndex := j + 1;
          end
          else
          begin
            MatchPlayerAccID := '';
            MatchInfoByDataGrid2.Cells[2, j + 1] := MatchPlayerAccID;
          end;
          MatchPlayerHeroID := Player.ChildNodes.Nodes['hero_id'].Text;
          HeroIDs[j] := StrToInt(MatchPlayerHeroID);
          HeroName := HeroNameByHeroID(XMLDoc, MatchPlayerHeroID);

          MatchInfoByDataGrid2.Cells[1, j + 1] := Player.ChildNodes.Nodes['account_id'].Text;
          MatchInfoByDataGrid2.Cells[3, j + 1] := HeroName;
        end;
        break;
      end;
    end
    else
      break;
    end;

  //ДАЛЕЕ СКОПИПАСЧЕНО ИЗ GamesByDateTreeChange_3
  ConnectProgress.Max := 6;
  NewDotaMatchXMLFile(TempDotaPath + PlayerMatchHistory);

  XMLDoc.LoadFromFile(TempDotaPath + PlayerMatchHistory);
  XMLDoc.Active := TRUE;

  ConnectProgress.Position := 1;
  Root := XMLDoc.DocumentElement;
  if Root.ChildNodes.Nodes['status'].Text = '15' then
  begin
    GameInfoBox.Caption := 'На историю матчей наложена приватность!';
    GameInfoBox.Visible := FALSE;
    exit
  end;

  GameInfoBox.Visible := TRUE;

  XMLMatches := Root.ChildNodes.Nodes['matches'];

  ConnectProgress.Position := 2;

  for I := 0 to XMLMatches.ChildNodes.Count - 1 do
  begin
    XMLMatch := XMLMatches.ChildNodes.Nodes[i];
    MatchID := XMLMatch.ChildNodes.Nodes['match_id'].Text;
    if Pos(MatchID, MatchGameID) > 0 then
    begin
      MatchSeqNum := XMLMatch.ChildNodes.Nodes['match_seq_num'].Text;
      Players := XMLMatch.ChildNodes.Nodes['players'];
      for j := 0 to Players.ChildNodes.Count - 1 do
      begin
        Player := Players.ChildNodes.Nodes[j];
        HeroID := Player.ChildNodes.Nodes['hero_id'].Text;
        if MatchInfoByDataGrid2.Cells[3, j + 1] = HeroNameByHeroID(XMLDoc, HeroID) then
        begin
          LoadURL := 'http://api.steampowered.com/IDOTA2Match_570/GetMatchHistoryBySequenceNum/v1/?key=' + SteamKey + '&start_at_match_seq_num=' + MatchSeqNum + '&matches_requested=1&format=xml';
          DownloadFile(LoadURL, TempDotaPath + MatchHistoryBySequenceNum);

          ConnectProgress.Position := 3;

          NewDotaMatchXMLFile(TempDotaPath + MatchHistoryBySequenceNum);

          XMLDoc.LoadFromFile(TempDotaPath + MatchHistoryBySequenceNum);
          XMLDoc.Active := TRUE;

          Root := XMLDoc.DocumentElement;
          if Root.ChildNodes.Nodes['status'].Text = '8' then
          begin
            GameInfoBox.Caption := 'Неправельный запрос...';
            GameInfoBox.Visible := FALSE;
            exit
          end;

          ConnectProgress.Position := 4;

          XMLMatches := Root.ChildNodes.Nodes['matches'];
          XMLMatch := XMLMatches.ChildNodes.Nodes['match'];
          MatchID := XMLMatch.ChildNodes.Nodes['match_id'].Text;
          Players := XMLMatch.ChildNodes.Nodes['players'];

          GlobalMatchIDForSave := MatchID;

          if not Pos(MatchID, MatchGameID) > 0 then
          begin
            exit;
            ShowMessage('Произошла ошибка загрузки данных: загруженный MatchID (' + MatchID + ') не совпадает с нужным');
          end;

          ConnectProgress.Position := 5;

          GameDate := DateToStr(UnixToDateTime(Cardinal(StrToInt(XMLMatch.ChildNodes.Nodes['start_time'].Text)), FALSE));
          GameTime := TimeToStr(UnixToDateTime(Cardinal(StrToInt(XMLMatch.ChildNodes.Nodes['start_time'].Text)), FALSE));

          if XMLMatch.ChildNodes.Nodes['radiant_win'].Text = 'true' then
            Winner := 'Radiant'
          else
            Winner := 'Dire';
          M := StrToInt(XMLMatch.ChildNodes.Nodes['duration'].Text) div 60;
          S := StrToInt(XMLMatch.ChildNodes.Nodes['duration'].Text) mod 60;
          FbM := StrToInt(XMLMatch.ChildNodes.Nodes['first_blood_time'].Text) div 60;
          FbS := StrToInt(XMLMatch.ChildNodes.Nodes['first_blood_time'].Text) mod 60;

          MailMemo.Clear;
          MailMemo.Lines.Add('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> <html xmlns="http://www.w3.org/1999/xhtml" lang="en">');
          MailMemo.Lines.Add('<html><head><title>Статистика матча</title></head>');
          MailMemo.Lines.Add('  <body>');
          MailMemo.Lines.Add('    <table bgcolor="#F5F5DC" border="3" cellspacing="0" align="center" cellpadding="5">');
          MailMemo.Lines.Add('      <tr align="left"> <td colspan="3" align="center" bgcolor="#BCD2EE">Информация о матче</td> </tr>');
          MailMemo.Lines.Add('      <tr align="left"> <td width="150">Матч ID</td><td width="300">' + MatchID + '</td></tr>');
          MailMemo.Lines.Add('      <tr align="left"><td width="150"> Дата начала </td><td width="300">' + GameDate + '</td></tr>');
          MailMemo.Lines.Add('      <tr align="left"><td width="150"> Время начала </td><td width="300">' + GameTime + '</td></tr>');
          MailMemo.Lines.Add('      <tr align="left"><td width="150"> Длительность </td><td width="300">' + IntToStr(M) + ':' + IntToStr(S) + '</td></tr>');
          MailMemo.Lines.Add('      <tr align="left"><td width="150"> Тип </td><td width="300">' + ReturnLobbyType(XMLMatch.ChildNodes.Nodes['lobby_type'].Text) + '</td></tr>');
          MailMemo.Lines.Add('      <tr align="left"><td width="150"> Мод </td><td width="300">' + ReturnGameMode(XMLMatch.ChildNodes.Nodes['game_mode'].Text) + '</td></tr>');
          MailMemo.Lines.Add('      <tr align="left"><td width="150"> Людей </td><td width="300">' + XMLMatch.ChildNodes.Nodes['human_players'].Text + '</td></tr>');
          MailMemo.Lines.Add('      <tr align="left"><td width="150"> Победитель </td><td width="300">' + Winner + '</td></tr>');
          MailMemo.Lines.Add('      <tr align="left"><td width="150"> ФБ на </td><td width="300">' + IntToStr(FbM) + ':' + IntToStr(FbS) + '</td></tr>');
          MailMemo.Lines.Add('      <tr align="left"><td width="150"> Лайков </td><td width="300">' + XMLMatch.ChildNodes.Nodes['positive_votes'].Text + '</td></tr>');
          MailMemo.Lines.Add('      <tr align="left"><td width="150"> Дизлайков </td><td width="300">' + XMLMatch.ChildNodes.Nodes['negative_votes'].Text + '</td></tr>');
          MailMemo.Lines.Add('    </table>');
          MailMemo.Lines.Add('  </br>');
          MailMemo.Lines.Add('    <table bgcolor="#FFFAFA" border="3" cellspacing="0" align="center" cellpadding="5">');
          MailMemo.Lines.Add('      <tr align="left"><td colspan="14" align="center" bgcolor="#BCD2EE">Информация о игроках</td></tr>');
          MailMemo.Lines.Add('      <tr align="left"><td width="10" bgcolor="#CAE1FF"> Номер </td><td width="20" bgcolor="#CAE1FF">' + ' ID </td><td width="20" bgcolor="#CAE1FF"> Ник </td><td width="20" bgcolor="#CAE1FF"> Герой </td><td width="20" bgcolor="#CAE1FF"> Уровень </td><td width="20" bgcolor="#CAE1FF">' + ' Счёт </td><td width="20" bgcolor="#CAE1FF"> Золото </td><td width="20" bgcolor="#CAE1FF">' + ' Добито/Отобрано </td><td width="20" bgcolor="#CAE1FF"> ГПМ </td><td width="20" bgcolor="#CAE1FF"> ЭПМ </td><td width="20" bgcolor="#CAE1FF"> Золота потрачено </td><td width="20" bgcolor="#CAE1FF">' + ' Урон героям </td><td width="20" bgcolor="#CAE1FF"> Урон зданиям</td><td width="20" bgcolor="#CAE1FF"> Вылечено здоровья союзникам</td></tr>');

          for k := 0 to Players.ChildNodes.Count - 1 do
          begin
            Player := Players.ChildNodes.Nodes[k];
            HeroID := Player.ChildNodes.Nodes['hero_id'].Text;
            if MatchInfoByDataGrid2.Cells[3, k + 1] = HeroNameByHeroID(XMLDoc, HeroID) then
            begin
              MatchInfoByDataGrid2.Cells[5, k + 1] :=
              Player.ChildNodes.Nodes['kills'].Text + '/' +
              Player.ChildNodes.Nodes['deaths'].Text + '/' +
              Player.ChildNodes.Nodes['assists'].Text;

              Kk := Player.ChildNodes.Nodes['kills'].Text;
              Dd := Player.ChildNodes.Nodes['deaths'].Text;
              Aa := Player.ChildNodes.Nodes['assists'].Text;
              KDA := Kk + '/' + Dd + '/' + Aa;
              gold := Player.ChildNodes.Nodes['gold'].Text;
              last_hits := Player.ChildNodes.Nodes['last_hits'].Text;
              denies := Player.ChildNodes.Nodes['denies'].Text;
              gold_per_min := Player.ChildNodes.Nodes['gold_per_min'].Text;
              xp_per_min := Player.ChildNodes.Nodes['xp_per_min'].Text;
              gold_spent := Player.ChildNodes.Nodes['gold_spent'].Text;
              hero_damage := Player.ChildNodes.Nodes['hero_damage'].Text;
              tower_damage := Player.ChildNodes.Nodes['tower_damage'].Text;
              hero_healing := Player.ChildNodes.Nodes['hero_healing'].Text;

              //1-accid 2-name 3-hero MatchInfoByDataGrid2.Cells[2, j + 1]
              if k mod 2 = 0 then
                MailMemo.Lines.Add('      <tr align="left" bgcolor="#F5F5DC">')
              else
                MailMemo.Lines.Add('      <tr align="left" bgcolor="#F5DEB3">');
              MailMemo.Lines.Add('        <td>' + IntToStr(k + 1) + '</td>');
              MailMemo.Lines.Add('        <td>' + MatchInfoByDataGrid2.Cells[1, k + 1] + '</td>');
              MailMemo.Lines.Add('        <td>' + MatchInfoByDataGrid2.Cells[2, k + 1] + '</td>');
              MailMemo.Lines.Add('        <td>' + MatchInfoByDataGrid2.Cells[3, k + 1] + '</td>');
              MailMemo.Lines.Add('        <td>' + Player.ChildNodes.Nodes['level'].Text + '</td>');
              MailMemo.Lines.Add('        <td>' + MatchInfoByDataGrid2.Cells[5, k + 1] + '</td>');
              MailMemo.Lines.Add('        <td>' + gold + '</td>');
              MailMemo.Lines.Add('        <td>' + last_hits + '/' + denies + '</td>');
              MailMemo.Lines.Add('        <td>' + gold_per_min + '</td>');
              MailMemo.Lines.Add('        <td>' + xp_per_min + '</td>');
              MailMemo.Lines.Add('        <td>' + gold_spent + '</td>');
              MailMemo.Lines.Add('        <td>' + hero_damage + '</td>');
              MailMemo.Lines.Add('        <td>' + tower_damage + '</td>');
              MailMemo.Lines.Add('        <td>' + hero_healing + '</td>');
              MailMemo.Lines.Add('       </tr>');
            end;
          end;

          MailMemo.Lines.Add('    </table>');
          MailMemo.Lines.Add('  </body>');
          MailMemo.Lines.Add('</html>');

          SaveMatch.Caption := 'Сохранить матч';
          SaveMatch.Enabled := TRUE;

          MatchInfoByDataEdit.Text :=
          'Победил: ' + Winner + '; ' +
          'Длилось: ' + IntToStr(M) + ':' + IntToStr(S) + '; ' +
          'ФБ на: ' + IntToStr(FbM) + ':' + IntToStr(FbS) + '; ' +
          'Тип: ' + ReturnLobbyType(XMLMatch.ChildNodes.Nodes['lobby_type'].Text) + '; ' +
          'Мод: ' + ReturnGameMode(XMLMatch.ChildNodes.Nodes['game_mode'].Text) + '; ' +
          'Людей: ' + XMLMatch.ChildNodes.Nodes['human_players'].Text + '; ' +
          'Лайков: ' + XMLMatch.ChildNodes.Nodes['positive_votes'].Text + '; ' +
          'Дизлайков: ' + XMLMatch.ChildNodes.Nodes['negative_votes'].Text + '; ';

          ConnectProgress.Position := 6;
          exit;
          //SetLength(HeroIDs, 10);//XMLMatches.ChildNodes.Count
        end;
      end;
    end;
  end;
end;


procedure TMainSteamHelperForm.ReplaceDotaNotification(var DotaNotification, MatchIDNotification: String);
var SaveLastStatus, GameTime: String;
    LoadURL, GameDate, HeroID, MatchSeqNum, Winner, S1, S2, Kk, Dd, Aa, KDA: String;
    Root, XMLMatches, Players, Player, XMLMatch: IXMLNode;
    HeroName, Return, MatchID, MatchPlayerAccID, MatchPlayerHeroID, User64ID: String;
    i, j, k, M, S, FbM, FbS: integer;
    User64IDReal: real;
    gold, last_hits, denies, gold_per_min, xp_per_min,
    gold_spent, hero_damage, tower_damage, hero_healing: String;
begin
  //ДАЛЕЕ СКОПИПАСЧЕНО ИЗ GamesByDateTreeChange_2
  ConnectProgress.Max := 6;
  NewDotaMatchXMLFile(TempDotaPath + PlayerMatchHistory);

  XMLDoc.LoadFromFile(TempDotaPath + PlayerMatchHistory);
  XMLDoc.Active := TRUE;

  ConnectProgress.Position := 1;
  Root := XMLDoc.DocumentElement;
  if Root.ChildNodes.Nodes['status'].Text = '15' then
  begin
    GameInfoBox.Caption := 'На историю матчей наложена приватность!';
    GameInfoBox.Visible := FALSE;
    exit
  end;
  ///GameInfoBox.Caption := 'История матчей ' + '(последние ' + Root.ChildNodes.Nodes['num_results'].Text + ' матчей)';
  //GameInfoBox.Visible := TRUE;

  XMLMatches := Root.ChildNodes.Nodes['matches'];

  ConnectProgress.Position := 2;

  for I := 0 to XMLMatches.ChildNodes.Count - 1 do
  begin
    XMLMatch := XMLMatches.ChildNodes.Nodes[i];
    MatchID := XMLMatch.ChildNodes.Nodes['match_id'].Text;
    if Pos(MatchID, MatchIDNotification) > 0 then
    begin
      MatchSeqNum := XMLMatch.ChildNodes.Nodes['match_seq_num'].Text;
      Players := XMLMatch.ChildNodes.Nodes['players'];
      for j := 0 to Players.ChildNodes.Count - 1 do
      begin
        Player := Players.ChildNodes.Nodes[j];
        HeroID := Player.ChildNodes.Nodes['hero_id'].Text;
        if DotaCheckGrid.Cells[3, 1] = HeroNameByHeroID(XMLDoc, HeroID) then
        begin
          LoadURL := 'http://api.steampowered.com/IDOTA2Match_570/GetMatchHistoryBySequenceNum/v1/?key=' + SteamKey + '&start_at_match_seq_num=' + MatchSeqNum + '&matches_requested=1&format=xml';
          DownloadFile(LoadURL, TempDotaPath + MatchHistoryBySequenceNum);

          ConnectProgress.Position := 3;

          NewDotaMatchXMLFile(TempDotaPath + MatchHistoryBySequenceNum);

          XMLDoc.LoadFromFile(TempDotaPath + MatchHistoryBySequenceNum);
          XMLDoc.Active := TRUE;

          Root := XMLDoc.DocumentElement;
          if Root.ChildNodes.Nodes['status'].Text = '8' then
          begin
            GameInfoBox.Caption := 'Неправельный запрос...';
            GameInfoBox.Visible := FALSE;
            exit
          end;

          ConnectProgress.Position := 4;

          XMLMatches := Root.ChildNodes.Nodes['matches'];
          XMLMatch := XMLMatches.ChildNodes.Nodes['match'];
          MatchID := XMLMatch.ChildNodes.Nodes['match_id'].Text;
          Players := XMLMatch.ChildNodes.Nodes['players'];

          if not Pos(MatchID, MatchIDNotification) > 0 then
          begin
            exit;
            ShowMessage('Произошла ошибка загрузки данных: загруженный MatchID (' + MatchID + ') не совпадает с нужным');
          end;

          ConnectProgress.Position := 5;

          for k := 0 to Players.ChildNodes.Count - 1 do
          begin
            Player := Players.ChildNodes.Nodes[k];
            HeroID := Player.ChildNodes.Nodes['hero_id'].Text;
            if DotaCheckGrid.Cells[3, 1] = HeroNameByHeroID(XMLDoc, HeroID) then
            begin
              Kk := Player.ChildNodes.Nodes['kills'].Text;
              Dd := Player.ChildNodes.Nodes['deaths'].Text;
              Aa := Player.ChildNodes.Nodes['assists'].Text;
              KDA := Kk + '/' + Dd + '/' + Aa;
              //gold, last_hits, denies, gold_per_min, xp_per_min,
              //gold_spent, hero_damage, tower_damage, hero_healing
              gold := Player.ChildNodes.Nodes['gold'].Text;
              last_hits := Player.ChildNodes.Nodes['last_hits'].Text;
              denies := Player.ChildNodes.Nodes['denies'].Text;
              gold_per_min := Player.ChildNodes.Nodes['gold_per_min'].Text;
              xp_per_min := Player.ChildNodes.Nodes['xp_per_min'].Text;
              gold_spent := Player.ChildNodes.Nodes['gold_spent'].Text;
              hero_damage := Player.ChildNodes.Nodes['hero_damage'].Text;
              tower_damage := Player.ChildNodes.Nodes['tower_damage'].Text;
              hero_healing := Player.ChildNodes.Nodes['hero_healing'].Text;
              break;
            end;
          end;

          if XMLMatch.ChildNodes.Nodes['radiant_win'].Text = 'true' then
            Winner := 'Radiant'
          else
            Winner := 'Dire';
          M := StrToInt(XMLMatch.ChildNodes.Nodes['duration'].Text) div 60;
          S := StrToInt(XMLMatch.ChildNodes.Nodes['duration'].Text) mod 60;
          FbM := StrToInt(XMLMatch.ChildNodes.Nodes['first_blood_time'].Text) div 60;
          FbS := StrToInt(XMLMatch.ChildNodes.Nodes['first_blood_time'].Text) mod 60;
          MatchInfoByDataEdit.Text :=
          'Победил: ' + Winner + '; ' +
          'Длилось: ' + IntToStr(M) + ':' + IntToStr(S) + '; ' +
          'ФБ на: ' + IntToStr(FbM) + ':' + IntToStr(FbS) + '; ' +
          'Тип: ' + ReturnLobbyType(XMLMatch.ChildNodes.Nodes['lobby_type'].Text) + '; ' +
          'Мод: ' + ReturnGameMode(XMLMatch.ChildNodes.Nodes['game_mode'].Text) + '; ' +
          'Людей: ' + XMLMatch.ChildNodes.Nodes['human_players'].Text + '; ' +
          'Лайков: ' + XMLMatch.ChildNodes.Nodes['positive_votes'].Text + '; ' +
          'Дизлайков: ' + XMLMatch.ChildNodes.Nodes['negative_votes'].Text + '; ';

          GameDate := DateToStr(UnixToDateTime(Cardinal(StrToInt(XMLMatch.ChildNodes.Nodes['start_time'].Text)), FALSE));
          GameTime := TimeToStr(UnixToDateTime(Cardinal(StrToInt(XMLMatch.ChildNodes.Nodes['start_time'].Text)), FALSE));

          DotaNotification := ReplaceNotification(DotaNotification, '%Время%', TimeToStr(Time));
          DotaNotification := ReplaceNotification(DotaNotification, '%ДатаНачала%', GameDate);
          DotaNotification := ReplaceNotification(DotaNotification, '%ВремяНачала%', GameTime);
          DotaNotification := ReplaceNotification(DotaNotification, '%Ник%', CheckDotaUserName.Text);
          DotaNotification := ReplaceNotification(DotaNotification, '%Герой%', DotaCheckGrid.Cells[3, 1]);
          DotaNotification := ReplaceNotification(DotaNotification, '%Счёт%', KDA);//MatchInfoByDataGrid2.Cells[5, 1]
          DotaNotification := ReplaceNotification(DotaNotification, '%K%', Kk);
          DotaNotification := ReplaceNotification(DotaNotification, '%D%', Dd);
          DotaNotification := ReplaceNotification(DotaNotification, '%A%', Aa);
          DotaNotification := ReplaceNotification(DotaNotification, '%ФБ%', IntToStr(FbM) + ':' + IntToStr(FbS));
          DotaNotification := ReplaceNotification(DotaNotification, '%МатчДлился%', IntToStr(M) + ':' + IntToStr(S));
          DotaNotification := ReplaceNotification(DotaNotification, '%Золото%', gold);
          DotaNotification := ReplaceNotification(DotaNotification, '%ЛХ%', last_hits);
          DotaNotification := ReplaceNotification(DotaNotification, '%Отобрано%', denies);
          DotaNotification := ReplaceNotification(DotaNotification, '%ГПМ%', gold_per_min);
          DotaNotification := ReplaceNotification(DotaNotification, '%ЭПМ%', xp_per_min);
          DotaNotification := ReplaceNotification(DotaNotification, '%Потрачено%', gold_spent);
          DotaNotification := ReplaceNotification(DotaNotification, '%УронГероям%', hero_damage);
          DotaNotification := ReplaceNotification(DotaNotification, '%УронЗданиям%', tower_damage);
          DotaNotification := ReplaceNotification(DotaNotification, '%Вылечено%', hero_healing);
          //%Время% %ДатаНачала% %НачалоВремя% %Ник% сыграл %Герой% со счётом %K%/%D%/%A%, ФБ на %ФБ%, длительностью %МатчДлился%,
          //золотом %Золото%, крипами %ЛХ%/%Отобрано%, ГПМ %ГПМ%, ЭПМ %ЭПМ%, потраченным золотом %Потрачено%, урона героям %УронГероям%,
          //урона зданиям %УронЗданиям%, вылечено ХП союзникам %Вылечено%

//%Время% %ДатаНачала% %ВремяНачала% %Ник% сыграл %Герой% со счётом %K%/%D%/%A%, ФБ на %ФБ%, длительностью %МатчДлился%, золотом %Золото%, крипами %ЛХ%/%Отобрано%, ГПМ %ГПМ%, ЭПМ %ЭПМ%, потраченным золотом %Потрачено%, урона героям %УронГероям%, урона зданиям %УронЗданиям%, вылеченным ХП союзникам %Вылечено%
{gold last_hits denies gold_per_min xp_per_min gold_spent hero_damage tower_damage hero_healing
MatchInfoByDataGrid3.Cells[1, 5] := Player.ChildNodes.Nodes['gold'].Text;
MatchInfoByDataGrid3.Cells[1, 6] := Player.ChildNodes.Nodes['last_hits'].Text;
MatchInfoByDataGrid3.Cells[1, 7] := Player.ChildNodes.Nodes['denies'].Text;
MatchInfoByDataGrid3.Cells[1, 8] := Player.ChildNodes.Nodes['gold_per_min'].Text;
MatchInfoByDataGrid3.Cells[1, 9] := Player.ChildNodes.Nodes['xp_per_min'].Text;
MatchInfoByDataGrid3.Cells[1, 10] := Player.ChildNodes.Nodes['gold_spent'].Text;
MatchInfoByDataGrid3.Cells[1, 11] := Player.ChildNodes.Nodes['hero_damage'].Text;
MatchInfoByDataGrid3.Cells[1, 12] := Player.ChildNodes.Nodes['tower_damage'].Text;
MatchInfoByDataGrid3.Cells[1, 13] := Player.ChildNodes.Nodes['hero_healing'].Text;

MatchInfoByDataGrid3.Cells[0, 1] := 'Герой';
MatchInfoByDataGrid3.Cells[0, 2] := 'Иконка героя';
MatchInfoByDataGrid3.Cells[0, 3] := 'Уровень';
MatchInfoByDataGrid3.Cells[0, 4] := 'Убил/Умер/Помог';
MatchInfoByDataGrid3.Cells[0, 5] := 'Золота в конце';
MatchInfoByDataGrid3.Cells[0, 6] := 'Добил юнитов';
MatchInfoByDataGrid3.Cells[0, 7] := 'Добил своих';
MatchInfoByDataGrid3.Cells[0, 8] := 'Золота в минуту';
MatchInfoByDataGrid3.Cells[0, 9] := 'Опыта в минуту';
MatchInfoByDataGrid3.Cells[0, 10] := 'Золота потрачено';
MatchInfoByDataGrid3.Cells[0, 11] := 'Нанесено урона героям';
MatchInfoByDataGrid3.Cells[0, 12] := 'Нанесено урона зданиям';
MatchInfoByDataGrid3.Cells[0, 13] := 'Лечение союзников';
}
          ConnectProgress.Position := 6;
          exit;
          //SetLength(HeroIDs, 10);//XMLMatches.ChildNodes.Count
        end;
      end;
    end;
  end;
end;


procedure TMainSteamHelperForm.DotaTimerTimer(Sender: TObject);
var LoadURL, UserNameFromLink, DotaUserID, DotaNotification, SaveLastStatus: String;
    SmsDotaNotification: String;
    i: integer;
begin
  if LocalDotaNotification1UserID.Text = '' then
  begin
    ShowMessage('В поле с ID ничего нет');
    DotaTimer.Enabled := FALSE;
    LocalDotaNotificationCheckBox.Checked := FALSE;
    exit;
  end;
  if LocalDotaNotificationCheckBox.Checked then
  begin
    if LocalDotaNotification1UserID.Text <> IniFile.ReadString('DotaNotification','LocalDotaNotification1UserIDText', '') then
    begin
      DeleteFile(TempDotaPath + LastMatchIDFile);
      IniFile.WriteString('DotaNotification','LocalDotaNotification1UserIDText', LocalDotaNotification1UserID.Text)
    end;
    DotaUserID := Trim(FloatToStr(StrToFloat(LocalDotaNotification1UserID.Text) - 76561197960265728));

    LoadDotaUserInfoByID(Trim(LocalDotaNotification1UserID.Text));

    LoadURL := 'http://api.steampowered.com/IDOTA2Match_570/GetMatchHistory/V001/?key=' + SteamKey + '&account_id=' + DotaUserID + '&format=xml';
    if DownloadFile(LoadURL, TempDotaPath + PlayerMatchHistory) then
      begin
        VisibleMatchCount.Position := VisibleMatchCount.Min;
        CheckDotaMatchHistory(DotaUserID);
      end;
    //DotaCheckGrid.Refresh;  TempDotaUsersPath + SteamID + '.xml'
    DotaCheckGroup.Visible := FALSE;

    if ConnectProgress.Position <> ConnectProgress.Max then
      Sleep(5000);

    if not FileExists(TempDotaPath + LastMatchIDFile) then
    begin
      StringToTextFile(LastMatchID, TempDotaPath + LastMatchIDFile);
    end;

    if not FileExists(TempDotaPath + NowMatchIDFile) then
    begin
      StringToTextFile(NowMatchID, TempDotaPath + NowMatchIDFile);
    end;

    if TextFileToString(TempDotaPath + NowMatchIDFile) = '' then
    begin
      NowMatchID := DotaCheckGrid.Cells[1, 1];
      StringToTextFile(NowMatchID, TempDotaPath + NowMatchIDFile);
    end;
{
    if TextFileToString(TempDotaPath + LastMatchIDFile) = '' then
    begin
      NowMatchID := DotaCheckGrid.Cells[1, 1];
      StringToTextFile(NowMatchID, TempDotaPath + LastMatchIDFile);
    end;
}
    //TextFileToString
    NowMatchID := DotaCheckGrid.Cells[1, 1];
    StringToTextFile(NowMatchID, TempDotaPath + NowMatchIDFile);

    if NowMatchID = '' then
    begin
      ShowMessage('У пользователя с данным ID либо нет реплеев, либо установлена приватность');
      LocalDotaNotificationCheckBox.Checked := FALSE;
      LocalDotaNotificationCheckBoxClick(nil);
      exit;
    end;

    LastMatchID := TextFileToString(TempDotaPath + LastMatchIDFile);
    NowMatchID := TextFileToString(TempDotaPath + NowMatchIDFile);

    if LastMatchID <> NowMatchID then
    begin
      DotaNotification := LocalDotaNotificationTemplate.Text;
      SaveLastStatus := LastMatchID;
      StringToTextFile(NowMatchID, TempDotaPath + LastMatchIDFile);
      ReplaceDotaNotification(DotaNotification, NowMatchID);
      //LastMutchID := NowMatchID;
      //if  SaveLastStatus <> '' then
      begin
        Log(DotaNotification, 2);

        if SmsDotaCheckBox.Checked then
        begin
          case SmsDotaRadioGroup.ItemIndex of
            0: SmsDotaNotification := '%ВремяНачала% %Ник% (%Герой%): %K%/%D%/%A%, ФБ: %ФБ%, Время: %МатчДлился%, Золото: %Золото%, ЛХ/Д %ЛХ%/%Отобрано%, ГПМ %ГПМ%, ЭПМ %ЭПМ%, Потрачено: %Потрачено%, Урон: героям %УронГероям%, зданиям %УронЗданиям%, Вылеченно %Вылечено%';
            1: SmsDotaNotification := '%ВремяНачала% %Ник% (%Герой%): %K%/%D%/%A%, Золото: %Золото%, ЛХ/Д %ЛХ%/%Отобрано%, ГПМ %ГПМ%, ЭПМ %ЭПМ%, Урон: героям %УронГероям%, зданиям %УронЗданиям%, Вылеченно %Вылечено%';
            2: SmsDotaNotification := '%ВремяНачала% %Ник% (%Герой%): %K%/%D%/%A%, Золото: %Золото%, ЛХ/Д %ЛХ%/%Отобрано%, ГПМ %ГПМ%, ЭПМ %ЭПМ%';
            else
              SmsDotaNotification := '%ВремяНачала% %Ник% (%Герой%): %K%/%D%/%A%, Золото: %Золото%, ЛХ/Д %ЛХ%/%Отобрано%, ГПМ %ГПМ%, ЭПМ %ЭПМ%';
          end;
          ReplaceDotaNotification(SmsDotaNotification, NowMatchID);
          SendSms(SmsDotaNotification);
        end;

        LoadMatchInfo(NowMatchID);

        if MailDota2CheckBox.Checked then
        begin
          if MailMemo.Text <> '' then
          begin
            if not FileExists(ExePath + 'SavedMatches\' + GlobalMatchIDForSave + '.html') then
            begin
              MailMemo.Lines.SaveToFile(ExePath + 'SavedMatches\' + GlobalMatchIDForSave + '.html');
              SendMatchByMailNotification(MaillNotificationUserMail.Text, MailDotaEdit.Text, ExePath + 'SavedMatches\' + GlobalMatchIDForSave + '.html');
                  //SendMailNotification(MaillNotificationUserMail.Text, MailDotaEdit.Text, DotaNotification);
              DeleteFile(ExePath + 'SavedMatches\' + GlobalMatchIDForSave + '.html');
            end
            else
            begin
              SendMatchByMailNotification(MaillNotificationUserMail.Text, MailDotaEdit.Text, ExePath + 'SavedMatches\' + GlobalMatchIDForSave + '.html');
            end;
          end;
        end;

        ShowNotification(DotaNotification);
      end;
      end;
    end;
end;

procedure TMainSteamHelperForm.DownloadALLHeroIcons(Path: String);
var LoadURL, S, S1, SaveIn: String;
    i, j, GamesCount: integer;
    Apps, App, Root, XMLMessage: IXMLNode;
    GameID, GameName: String;
    Node, XMLHero: IXMLNode;
    Return, HeroName, HeroID: String;
begin
  SaveIn := Path;

  if not FileExists(TempDotaPath + DotaHeroes) then
    DownloadFile(LoadURL, TempDotaPath + DotaHeroes);

  NewDotaMatchXMLFile(TempDotaPath + DotaHeroes);

  XMLDoc.LoadFromFile(TempDotaPath + DotaHeroes);
  XMLDoc.Active := TRUE;
{
<result>
	<heroes>
		<hero>
			<name>npc_dota_hero_antimage</name>
			<id>1</id>
			<localized_name>Anti-Mage</localized_name>
		</hero>
}
//ГРЁБАНЫЕ 10, 11 ВЕТКИ В XML ПОМЕНЯНЫ МЕСТАМИ, ПРИХОДИТЬСЯ ЗАПАРИВАТЬСЯ ИЗ-ЗА ФИГНИ
  Root := XMLDoc.DocumentElement;
  Root := Root.ChildNodes.Nodes['heroes'];
  for I := 0 to Root.ChildNodes.Count - 1 do
  begin
    if DownloadFiles then
    begin
      Application.ProcessMessages();
      XMLHero := Root.ChildNodes.Nodes[i];
      HeroID := XMLHero.ChildNodes.Nodes['id'].Text;
      HeroName := XMLHero.ChildNodes.Nodes['name'].Text;
      Delete(HeroName, Pos('npc_dota_hero_', HeroName), Length('npc_dota_hero_'));
{
http://media.steampowered.com/apps/dota2/images/heroes/slark_full.png
http://media.steampowered.com/apps/dota2/images/heroes/slark_sb.png
}
      if DownloadHeroIconsOption.ItemIndex = 0 then
        LoadURL := 'http://media.steampowered.com/apps/dota2/images/heroes/' + HeroName + '_sb.png';
      if DownloadHeroIconsOption.ItemIndex = 1 then
        LoadURL := 'http://media.steampowered.com/apps/dota2/images/heroes/' + HeroName + '_full.png';

      if not DirectoryExists(SaveIn) then
        CreateDir(SaveIn);
      if not DownloadFile(LoadURL, SaveIn + HeroID + '_' + ClearName(HeroName, '*|\:"<>?/', 2) + '.png') then
      begin
        DownloadHeroesLog.Lines.Add('Не удалось загрузить ' + IntToStr(i + 1) + '-ый файл: ' + ClearName(HeroName, '*|\:"<>?/', 2));
      end
      else
      begin
        DownloadHeroesLog.Lines.Add('Файл ' + SaveIn + HeroID + '_' + ClearName(HeroName, '*|\:"<>?/', 2) + '.png' + ' успешно загружен');
      end;
    end
    else
      break;
  end;
end;

procedure TMainSteamHelperForm.DownloadALLGameLogos(Path: String);
var LoadURL, S, S1, SaveIn: String;
    i, j, GamesCount: integer;
    Apps, App, Root, XMLMessage: IXMLNode;
    GameID, GameName: String;
begin
{
<applist>
	<apps>
		<app>
			<appid>5</appid>
			<name>Dedicated Server</name>
		</app>
		<app>
}
  SaveIn := Path;
  if not FileExists(TempPath + SteamAppsList) then
  begin
    LoadURL := 'http://api.steampowered.com/ISteamApps/GetAppList/v2?format=xml';
    if not DownloadFile(LoadURL, TempPath + SteamAppsList) then
      ShowMessage('Не удалось загрузить список товаров');
  end;
  XMLDoc.LoadFromFile(TempPath + SteamAppsList);
  XMLDoc.Active := TRUE;
  Root := XMLDoc.DocumentElement;
  Apps := Root.ChildNodes.Nodes[0]; //
  GamesCount := apps.ChildNodes.Count; //<game_count>

  ConnectProgress.Max := apps.ChildNodes.Count - 1;
  for i := 0 to Apps.ChildNodes.Count - 1 do
  begin
    if DownloadFiles then
    begin
      ConnectProgress.Position := i;
      Application.ProcessMessages();
      App := Apps.ChildNodes.Nodes[i];
      GameID := App.ChildNodes.Nodes['appid'].Text;
      GameName := App.ChildNodes.Nodes['name'].Text;

      if DownloadGamesIconsOption.ItemIndex = 0 then
        LoadURL := 'http://cdn2.steampowered.com/v/gfx/apps/' + GameID + '/capsule_231x87.jpg';
      if DownloadGamesIconsOption.ItemIndex = 1 then
        LoadURL := 'http://cdn2.steampowered.com/v/gfx/apps/' + GameID + '/header_292x136.jpg';

      if not DirectoryExists(SaveIn) then
      CreateDir(SaveIn);

      if not DownloadFile(LoadURL, SaveIn + GameID + '_' + ClearName(GameName, '*|\:"<>?/', 2) + '.jpg') then
      begin
        DownloadLogosLog.Lines.Add('Не удалось загрузить ' + IntToStr(i + 1) + '-ый файл: ' + ClearName(GameName, '*|\:"<>?/', 2));
      end
      else
      begin
        DownloadLogosLog.Lines.Add('Файл ' + SaveIn + GameID + '_' + ClearName(GameName, '*|\:"<>?/', 2) + '.jpg' + ' успешно загружен');
      end;
    end
    else
      break;
  end;
end;

procedure TMainSteamHelperForm.DownloadHeroesChangeClick(Sender: TObject);
var Dir: String;
begin
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Dota 2 Heroes') then
    CreateDir(ExtractFilePath(Application.ExeName) + 'Dota 2 Heroes');
  Dir:= ExtractFilePath(Application.ExeName) + 'Dota 2 Heroes';
  SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate], 0);
  DownloadLogosPath.Text := Dir;
end;

procedure TMainSteamHelperForm.DownloadHeroesClick(Sender: TObject);
begin
  DownloadFiles := TRUE;
  DownloadALLHeroIcons(DownloadHeroesPath.Text + '\');
end;

procedure TMainSteamHelperForm.DownloadHeroIconsInfoBitBtnClick(
  Sender: TObject);
begin
  if DownloadHeroIconsInfoGroup.Visible then
    DownloadHeroIconsInfoGroup.Visible := FALSE
  else
  DownloadHeroIconsInfoGroup.Visible := TRUE;
end;

procedure TMainSteamHelperForm.DownloadHeroIconsInfoButtonClick(
  Sender: TObject);
begin
  DownloadHeroIconsInfoGroup.Visible := FALSE;
end;

//ShowMessage(DateToStr(UnixToDateTime(Cardinal(StrToInt(Edit1.Text)), FALSE)));
//ExePath + '\Flags\ae_United Arab Emirates.gif'

procedure TMainSteamHelperForm.ConverSteamIDs2Click(Sender: TObject);
begin
  User64IDInt64 := StrToInt64(ConverterToSteam32ID.Text);
  User64IDInt64 := User64IDInt64 - 76561197960265728;
  ResultSteam32ID.Text := IntToStr(User64IDInt64);
end;

procedure TMainSteamHelperForm.ConverSteamIDsClick(Sender: TObject);
begin
  User64IDInt64 := StrToInt64(ConverterToSteam64ID.Text);
  User64IDInt64 := User64IDInt64 + 76561197960265728;
  ResultSteam64ID.Text := IntToStr(User64IDInt64);
end;

procedure TMainSteamHelperForm.InfoForIconAndLogoButtonClick(Sender: TObject);
begin
  if InfoForIconAndLogo.Visible  then
    InfoForIconAndLogo.Visible := FALSE
  else
    InfoForIconAndLogo.Visible := TRUE;
end;

function SetPersonaState(XMLDoc: TXMLDocument; DestFile: String): String;
var State: integer;
begin
{
The user's current status. 0 - Offline, 1 - Online, 2 - Busy,
3 - Away, 4 - Snooze, 5 - looking to trade, 6 - looking to play
}
  State := StrToInt(GetXMLPlayerSummariesByNode(XMLDoc, DestFile, 'personastate'));
    case State of
    0:
      begin
        Result := 'Не в сети';
      end;
    1:
      begin
        Result := 'В сети';
      end;
    2:
      begin
        Result := 'Не беспокоить';
      end;
    3:
      begin
        Result := 'Нет на месте';
      end;
    4:
      begin
        Result := 'Спит';
      end;
    5:
      begin
        Result := 'Хочет обменяться';
      end;
    6:
      begin
        Result := 'Хочеть играть';
      end;
  end;
end;

procedure TMainSteamHelperForm.ShowHeroes;
var LoadURL, LastHeroesText: String;
    Node, Root, XMLHeroes, XMLHero: IXMLNode;
    i, j, HeroesCount, LastHeroCount: integer;
begin
  //NewXMLFile('AppList.xml');

{
<result>
	<heroes>
		<hero>
			<name>npc_dota_hero_antimage</name>
			<id>1</id>
			<localized_name>Anti-Mage</localized_name>
		</hero>
}
  LastHeroCount := 3;

  NewDotaMatchXMLFile(TempDotaPath + DotaHeroes);

  XMLDoc.LoadFromFile(TempDotaPath + DotaHeroes);
  XMLDoc.Active := TRUE;
  Root := XMLDoc.DocumentElement;
  XMLHeroes := Root.ChildNodes.Nodes['heroes']; //
  HeroesCount := XMLHeroes.ChildNodes.Count; //
  ShowAllHeroesGrid.RowCount := HeroesCount + 1;

  SetLength(AllHeroIDs, HeroesCount + 1);
  for I := 1 to ShowAllHeroesGrid.RowCount do
  begin
    Application.ProcessMessages();
    ShowAllHeroesGrid.Cells[0, i] := IntToStr(i);
  end;
{
  ShowAllHeroesGrid.Cells[1, 0] := 'ID';  //
  ShowAllHeroesGrid.Cells[2, 0] := 'Иконка';  //
  ShowAllHeroesGrid.Cells[3, 0] := 'Имя';  //
  ShowAllHeroesGrid.Cells[4, 0] := 'Локализованное имя';
}
  ConnectProgress.Max := HeroesCount - 1;
  for i := 0 to HeroesCount - 1 do
  begin
    if DownloadFiles then
    begin
      ConnectProgress.Position := i;
      Application.ProcessMessages();
      XMLHero := XMLHeroes.ChildNodes.Nodes[i];
      ShowAllHeroesGrid.Cells[1, i + 1] := XMLHero.ChildNodes.Nodes['id'].Text;
      ShowAllHeroesGrid.Cells[2, i + 1] := '';
      ShowAllHeroesGrid.Cells[3, i + 1] := XMLHero.ChildNodes.Nodes['name'].Text;
      ShowAllHeroesGrid.Cells[4, i + 1] := XMLHero.ChildNodes.Nodes['localized_name'].Text;
      AllHeroIDs[i] := StrToInt(ShowAllHeroesGrid.Cells[1, i + 1]);
    end
    else
      break;
  end;
  for I := 0 to LastHeroCount - 2 do
  begin
    XMLHero := XMLHeroes.ChildNodes.Nodes[HeroesCount - 1 - i];
    LastHeroesText := LastHeroesText + XMLHero.ChildNodes.Nodes['localized_name'].Text + ', ';
  end;
  XMLHero := XMLHeroes.ChildNodes.Nodes[HeroesCount - LastHeroCount];
  LastHeroesText := LastHeroesText + XMLHero.ChildNodes.Nodes['localized_name'].Text;
  ShowAllHeroesSomeInfo.Text := 'Последние ' + IntToStr(LastHeroCount) + ' героя: ' + LastHeroesText;

  ShowAllHeroesGrid.Refresh;
end;

procedure TMainSteamHelperForm.ShowApps;
var LoadURL, LastAppsText: String;
    Node, Root, XMLApps, XMLApp: IXMLNode;
    i, j, AppsCount, LastAppCount: integer;
begin
  //NewXMLFile('AppList.xml');

{
<applist>
	<apps>
		<app>
			<appid>5</appid>
			<name>Dedicated Server</name>
		</app>
		<app>
}
  LastAppCount := 3;
  NewXMLAppsListFile(TempPath + SteamAppsList);

  XMLDoc.LoadFromFile(TempPath + SteamAppsList);
  XMLDoc.Active := TRUE;
  Root := XMLDoc.DocumentElement;
  XMLApps := Root.ChildNodes.Nodes[0]; //
  AppsCount := XMLApps.ChildNodes.Count; //<apps>
  SteamAppsGrid.RowCount := AppsCount + 1;

  for I := 1 to SteamAppsGrid.RowCount do
  begin
    Application.ProcessMessages();
    SteamAppsGrid.Cells[0, i] := IntToStr(i);
  end;

  ConnectProgress.Max := AppsCount - 1;
  for i := 0 to AppsCount - 1 do
  begin
    if DownloadFiles then
    begin
      ConnectProgress.Position := i;
      Application.ProcessMessages();
      XMLApp := XMLApps.ChildNodes.Nodes[i];
      SteamAppsGrid.Cells[1, i + 1] := XMLApp.ChildNodes.Nodes['appid'].Text;
      SteamAppsGrid.Cells[2, i + 1] := XMLApp.ChildNodes.Nodes['name'].Text;
    end
    else
      break;
  end;
  for I := 0 to LastAppCount - 2 do
  begin
    XMLApp := XMLApps.ChildNodes.Nodes[AppsCount - 1 - i];
    LastAppsText := LastAppsText + XMLApp.ChildNodes.Nodes['name'].Text + ', ';
  end;
  XMLApp := XMLApps.ChildNodes.Nodes[AppsCount - LastAppCount];
  LastAppsText := LastAppsText + XMLApp.ChildNodes.Nodes['name'].Text;
  LastApps.Text := 'Последние ' + IntToStr(LastAppCount) + ' товара: ' + LastAppsText;
end;

procedure TMainSteamHelperForm.AboutProgrammClick(Sender: TObject);
begin
  ShowMessage(
  'Программа "' + MainSteamHelperForm.Caption + '"' + #13#10 +   //' + #13#10 + '
               #13#10 + #13#10 + 'Авторское право © 2013 Кучеров Р. М.' + #13#10 +
              'Надеюсь, большинство прав защищено.' + #13#10 + #13#10 +
              'Любую критику, вопросы, предложения - ' + #13#10 +
              'с радостью почитаю по адресу quoe@mail.ru');
end;

procedure TMainSteamHelperForm.AllSteamAppsClick(Sender: TObject);
var LoadURL, LastAppsText: String;
    Node, Root, XMLApps, XMLApp: IXMLNode;
    i: integer;
begin
  if (Sender as TButton).Tag = 1 then
  begin
    LoadURL := 'http://api.steampowered.com/ISteamApps/GetAppList/v2?format=xml';
    LoadAppsList.Caption := 'Ждём..';
    if DownloadFile(LoadURL, TempPath + SteamAppsList) then
    begin
      LoadAppsList.Caption := 'Загрузить список';
      ShowApps;
    end
    else
    begin
      LoadAppsList.Caption := 'Загрузить список';
      ShowMessage('Не удалось загрузить список героев');
    end;
  end
  else
  begin
    ShowApps;
  end;
end;

procedure TMainSteamHelperForm.DownloadLogosInfoBitBtnClick(Sender: TObject);
begin
  if DownloadLogosInfoGroup.Visible then
    DownloadLogosInfoGroup.Visible := FALSE
  else
  DownloadLogosInfoGroup.Visible := TRUE;
end;

procedure TMainSteamHelperForm.SmsDotaHelpBitBtnClick(Sender: TObject);
begin
  if SmsDotaInfoGroupBox.Visible then
    SmsDotaInfoGroupBox.Visible := FALSE
  else
  SmsDotaInfoGroupBox.Visible := TRUE;
end;

procedure TMainSteamHelperForm.BitBtn10Click(Sender: TObject);
begin
  if MessageDlg(
  'sms.ru - интернет сайт, который предоставляет возможность отправлять до 60 бесплатных СМС ' +
  'в день, без капчи или подписи типа "Отправлено с..", а так же, отправкой обычных смс по просто смешной цене. С удобным api для разработчиков, ' +
  'которое позволяет расширить возможности тех, кто знает что с этим делать. Для корректной работы ' +
  'необходимо только знать свой api_id, узнать который можно по адресу: ' +
  'www.steamhelper.sms.ru в разделе "Программистам". ' +
  'Перейти на сайт?', mtConfirmation , mbOKCancel, 0) = mrOK then
    ShellExecute(0, 'open', 'http://www.steamhelper.sms.ru', '', '', 1);
end;

procedure TMainSteamHelperForm.BitBtn1Click(Sender: TObject);
begin
  ShowMessage('Наглядный пример Show Message');
end;

procedure TMainSteamHelperForm.BitBtn2Click(Sender: TObject);
begin
  TrayIconLocalNotification.Visible := TRUE;
  TrayIconLocalNotification.BalloonTitle := 'Пример';
  TrayIconLocalNotification.BalloonHint := 'Наглядный пример Balloon Hint';
  TrayIconLocalNotification.ShowBalloonHint;
end;

procedure TMainSteamHelperForm.BitBtn3Click(Sender: TObject);
begin
  ShowMessage(
  '%Время% - время события' + #13#10 +
  '%Ник% - ник пользователя' + #13#10 +
  '%ПрошлыйСтатус% - статус, который был до его смены' + #13#10 +
  '%НовыйСтатус% - статус, который сейчас');
  LocalNotificationTimerTimer(nil);
end;

procedure TMainSteamHelperForm.BitBtn4Click(Sender: TObject);
begin
//%Время% %Ник% %Состояние%
  ShowMessage(
  '%Время% - время события' + #13#10 +
  '%Ник% - ник пользователя' + #13#10 +
  '%Состояние% - состояние: "вошёл в игру", "вышел из игры"');
  LocalNotificationTimerTimer(nil);
end;

procedure TMainSteamHelperForm.BitBtn5Click(Sender: TObject);
begin
//%Время% В Steam появился %Товар%
  ShowMessage(
  '%Время% - время события' + #13#10 +
  '%Товар% - наименование товара');
  SteamNewAppTimerTimer(nil);
end;

procedure TMainSteamHelperForm.BitBtn6Click(Sender: TObject);
begin
//%Время% В Steam скидка %Скидка% на игру %Товар%!
//Вместо %ЦенаБезСкидки%р она стоит %ЦенаСоСкидкой%р
  ShowMessage(
  '%Время% - время события' + #13#10 +
  '%Скидка% - величина скидки' + #13#10 +
  '%Товар% - наименование товара' + #13#10 +
  '%ЦенаБезСкидки% - цена без скидки' + #13#10 +
  '%ЦенаСоСкидкой% - цена со скидкой');
  DealTimerTimer(nil);
end;

procedure TMainSteamHelperForm.BitBtn7Click(Sender: TObject);
begin
{
%ДатаНачала% %ВремяНачала% %Ник% сыграл %Герой% со счётом %K%/%D%/%A%,
ФБ на %ФБ%, длительностью %МатчДлился%, золотом %Золото%, крипами %ЛХ%/%Отобрано%,
 ГПМ %ГПМ%, ЭПМ %ЭПМ%, потраченным золотом %Потрачено%, урона героям %УронГероям%,
  урона зданиям %УронЗданиям%, вылеченным ХП союзникам %Вылечено%
}
  ShowMessage(
  '%ДатаНачала% - дата начала матча' + #13#10 +
  '%ВремяНачала% - время начала матча' + #13#10 +
  '%Ник% - ник пользователя в матче' + #13#10 +
  '%K% - число убийств' + #13#10 +
  '%D% - число смертей' + #13#10 +
  '%A% - помог убить' + #13#10 +
  '%KDA% - KDA в виде K/D/A' + #13#10 +
  '%ФБ% - время First Blood''а' + #13#10 +
  '%МатчДлился% - длительность матча' + #13#10 +
  '%Золото% - золото в конце игры' + #13#10 +
  '%ЛХ% - добито крипов' + #13#10 +
  '%Отобрано% - заденаено крипок' + #13#10 +
  '%ГПМ% - золота за минуту' + #13#10 +
  '%ЭПМ% - опыта за минуту' + #13#10 +
  '%Потрачено% - золота потрачено' + #13#10 +
  '%УронГероям% - урон всем гроям' + #13#10 +
  '%УронЗданиям% - урон всем зданиям' + #13#10 +
  '%Вылечено% - вылечено здоровья союзником');
  DotaTimerTimer(nil);
end;

procedure TMainSteamHelperForm.BitBtn8Click(Sender: TObject);
begin
//%Время% В Dota 2 появился (появится) герой %Герой%
  ShowMessage(
  '%Время% - время события' + #13#10 +
  '%Герой% - имя героя');
  NewHeroTimerTimer(nil);
end;

function GetDailyDeal: boolean;
var LoadURL, AllSteamPage, WebImagePath, AppID, AppURL: String;
    AppPct, AppOriginalPrice, AppFinalPrice: String; //AppPct - скидка в %
    Doc: IXMLDocument;
    Items, Task, Price: IXMLNode;
    i: integer;
begin
  Result := FALSE;
  LoadURL := 'http://store.steampowered.com/?l=russian';//?l=russian
  if DownloadFile(LoadURL, TempDailyDealPath + DailyDeal) then
  begin
{
TextFileToString;
StringToTextFile
}
  AllSteamPage := TextFileToString(TempDailyDealPath + DailyDeal);
  Delete(AllSteamPage, 1, Pos('<div class="timer" id="dailydeal_timer">', AllSteamPage) - 1);
  Delete(AllSteamPage, Pos('<div class="btn_addtocart">', AllSteamPage), Length(AllSteamPage) - 1);

  Delete(AllSteamPage, 1, Pos('http://store.steampowered.com/app/', AllSteamPage) - 1);
  AppURL := Copy(AllSteamPage, 1, Pos('">', AllSteamPage) - 1);

  Delete(AllSteamPage, 1, Pos('<img src="http://cdn', AllSteamPage) - 1);
  //Delete(AllSteamPage, 1, Pos('<img src="http://cdn3.steampowered.com/v/gfx/apps/', AllSteamPage) - 1);

  WebImagePath := Copy(AllSteamPage, Pos('<img src="http://cdn', AllSteamPage) + Length('<img src="'), Pos('>', AllSteamPage));
  Delete(WebImagePath, Pos('">', WebImagePath), Length(WebImagePath));

  if Pos('.gif', WebImagePath) > 0 then
  begin
    exit;
  end;

  AppID := WebImagePath;
  for I := 1 to 6 do
  begin
  if Pos('/', AppID) > 0 then
    Delete(AppID, 1, Pos('/', AppID));
  end;
  Delete(AppID, Pos('/', AppID), Length(AppID));
  //AppID := Copy(WebImagePath, Length('http://cdn3.steampowered.com/v/gfx/apps/') + 1, Pos('header_292x136.jpg', WebImagePath) - Length('http://cdn3.steampowered.com/v/gfx/apps/') - 2);

  Delete(AllSteamPage, 1, Pos('<div class="discount_pct">', AllSteamPage) - 1);
  Delete(AllSteamPage, Pos('</div>', AllSteamPage), Pos('<div class="btn_addtocart">', AllSteamPage));

  AppPct := Copy(AllSteamPage, Pos('<div class="discount_pct">', AllSteamPage) + Length('<div class="discount_pct">'), Pos('</div>', AllSteamPage));
  Delete(AppPct, Pos('</div>', AppPct), Length(AppPct));

  Delete(AllSteamPage, 1, Pos('<div class="discount_original_price">', AllSteamPage));

  AppOriginalPrice := Copy(AllSteamPage, Pos('<div class="discount_original_price">', AllSteamPage), Pos('</div', AllSteamPage));
  Delete(AppOriginalPrice, 1, Length('<div class="discount_original_price">') - 1);
  Delete(AppOriginalPrice, Pos('</div>', AppOriginalPrice) - 1, Length(AppOriginalPrice));
  Delete(AppOriginalPrice, Pos(' ', AppOriginalPrice), Length(AppOriginalPrice));

  Delete(AllSteamPage, 1, Pos('<div class="discount_final_price"', AllSteamPage));

  AppFinalPrice := Copy(AllSteamPage, Pos('">', AllSteamPage) + 2, Pos('</div', AllSteamPage));
  Delete(AppFinalPrice, Pos(' ', AppFinalPrice), Length(AppFinalPrice));

  Doc := NewXMLDocument;
  Items := Doc.AddChild('result');

  Task := Items.AddChild('dailydeal');
  //Task.Attributes['id'] := 'eec0-47de-91bc-98e2d69d75cd';
  Task.AddChild('appid').Text := AppID;
  Task.AddChild('href').Text := AppURL;
  Task.AddChild('src').Text := WebImagePath;

  Task.AddChild('discount_pct').Text := AppPct;
  Task.AddChild('discount_original_price').Text := AppOriginalPrice;
  Task.AddChild('discount_final_price').Text := AppFinalPrice;

{
  AllSteamPage :=
  AppID + #13#10 +
  AppURL + #13#10 +
  WebImagePath + #13#10 +
  AppPct + #13#10 +
  AppOriginalPrice + #13#10 +
  AppFinalPrice;
}
  if not FileExists(TempDailyDealPath + 'LastDailyDeal.xml') then
    Doc.SaveToFile(TempDailyDealPath + 'LastDailyDeal.xml');

  Doc.SaveToFile(TempDailyDealPath + 'NowDailyDeal.xml');

  DeleteFile(TempDailyDealPath + DailyDeal);

  Result := TRUE;
  end
  else
    Result := FALSE;
{
http://store.steampowered.com/?l=russian
<div class="timer" id="dailydeal_timer">
<div class="btn_addtocart">
<img src="http://cdn3.steampowered.com/v/gfx/apps/234710/header_292x136.jpg?t=1373561383">
<a href="http://store.steampowered.com/app/234710/?snr=1_4_4__43">
<div class="discount_pct">-50%</div>
<div class="discount_original_price">
<div class="discount_final_price"

}
end;

procedure TMainSteamHelperForm.DrawDealNotification(DailyDealCaption, DailyDealNotification: String);
var DailyDealForm: TForm;
    DailyDealImage: TImage;
    DailyDealPicture: TPicture;
    DailyDealLabel: TLabel;
    DailyDealMemo: TMemo;
begin
  DailyDealForm := TForm.Create(MainSteamHelperForm);
  with DailyDealForm do
  begin
    Parent := nil;
    Height := 250;
    Width := 400;
    Caption := DailyDealCaption;
    BorderStyle := bsSingle;
    BorderIcons := DailyDealForm.BorderIcons - [biMaximize];
    Position := poScreenCenter;
  end;

  DailyDealImage := TImage.Create(DailyDealForm);
  with DailyDealImage do
  begin
    Parent := DailyDealForm;
    Picture.LoadFromFile(TempDailyDealPath + DailyDealPic);
    //Align := alTop;
    Left := 40;
    Top := 5;
    Height := 136;
    Width := 292;
  end;
  DailyDealForm.Width := 2 * DailyDealImage.Left + DailyDealImage.Width;

  DailyDealLabel := TLabel.Create(DailyDealForm);
  with DailyDealLabel do
  begin
    Parent := DailyDealForm;
    //Align := alTop;
    Top := 200;
    Left := Round(DailyDealForm.Width/2) - 20;
    Caption := 'Перейти';
    Font.Style := Font.Style + [fsUnderline];
    Font.Color := clHotLight;
    Cursor := crHandPoint;
    DailyDealLabel.OnClick := GoToURL;
  end;

  DailyDealMemo := TMemo.Create(DailyDealForm);
  with DailyDealMemo do
  begin
    Parent := DailyDealForm;
    //Align := alTop;
    Left := 5;
    Top := 142 + DailyDealImage.Top;
    Text := DailyDealNotification;
    Height := 50;
    Width := DailyDealForm.Width - 16;
    ReadOnly := TRUE;
  end;

  DailyDealForm.Show;
end;

procedure TMainSteamHelperForm.BitBtn9Click(Sender: TObject);
var LastXMLDoc, NowXMLDoc: IXMLDocument;
    Node, LastRoot, NowRoot, XMLLastDailyDeal, XMLNowDailyDeal: IXMLNode;
    LastAppID, NowAppID, DailyDealNotification, DailyDealCaption: String;
    i, AppIndex, buttonSelected: integer;
    DailyDealForm: TForm;
    DailyDealImage: TImage;
    DailyDealPicture: TPicture;
    DailyDealLabel: TLabel;
    DailyDealMemo: TMemo;
begin
  if GetDailyDeal then
  begin
{
<result>
<dailydeal>
  <appid>234710</appid>
  <href>
    http://store.steampowered.com/app/234710/?snr=1_4_4__43
  </href>
  <src>
    http://cdn3.steampowered.com/v/gfx/apps/234710/header_292x136.jpg?t=1373561383
  </src>
  <discount_pct>-51%</discount_pct>
  <discount_original_price>99</discount_original_price>
  <discount_final_price>49</discount_final_price>
</dailydeal>
</result>
}
    NowXMLDoc := NewXMLDocument;
    NowXMLDoc.LoadFromFile(TempDailyDealPath + 'NowDailyDeal.xml');
    NowXMLDoc.Active := TRUE;
    LastRoot := NowXMLDoc.DocumentElement;
    XMLNowDailyDeal := LastRoot.ChildNodes.Nodes[0];
    //NowAppID := ;

    //!!!!CopyFile(PWideChar(WideString(TempDailyDealPath + 'NowDailyDeal.xml')), PWideChar(WideString(TempDailyDealPath + 'LastDailyDeal.xml')), FALSE);// FALSE - перезапись
    ShowApps;

    for I := 0 to SteamAppsGrid.RowCount - 1 do
    begin
      if  XMLNowDailyDeal.ChildNodes.Nodes['appid'].Text = SteamAppsGrid.Cells[1, i + 1] then
      begin
        AppIndex := i;
        break;
      end;
    end;

    //LocalDealNotificationTemplate
    //%Время% В Steam скидка %Скидка% на игру %Товар%! Вместо %ЦенаБезСкидки% она стоит %ЦенаСоСкидкой%
    DailyDealNotification := LocalDealNotificationTemplate.Text;
    SteamLocalNotification(DailyDealNotification, AppIndex);

    LocalDealNotificationText.Text := DailyDealNotification;

    if DownloadFile(XMLNowDailyDeal.ChildNodes.Nodes['src'].Text, TempDailyDealPath + DailyDealPic) then
    begin
      DailyDealCaption := LocalDealFormNotificationTemplate.Text;
      SteamLocalNotification(DailyDealCaption, AppIndex);

      DrawDealNotification(DailyDealCaption, DailyDealNotification);
      DeleteFile(TempDailyDealPath + DailyDealPic);
    end
    else
    begin
      //ShowMessage(DailyDealNotification);
      buttonSelected := MessageDlg(DailyDealNotification + '. Перейти на сайт?', mtConfirmation , mbOKCancel, 0);
      // Показ типа выбранной кнопки
      if buttonSelected = mrOK then GoToURL(nil);
    end;
  end
  else
  begin
    LocalDealNotificationText.Text := DailyDealNotification;
  end;
end;

procedure TMainSteamHelperForm.Bu2Click(Sender: TObject);
begin
{
<TagGlobe>
    <Items>
          <Item id="1">
                <Name>Rodman</Name>
                <Address>LOL</Address>
          </Item>
          <Item id="2">
                <Name>Snowy</Name>
                <Address>LOL2</Address>
         </Item>
    </Items>
</TagGlobe>

//XMLDocument1.LoadFromFile('http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v2/?key=AFF0B3284D78A9BFA3B80AA73EBF7D0F&steamids=76561198030988834&format=xml');//'http://newyorg.myminicity.com/xml'
XMLDoc.Active := true;
//Root.ChildNodes.Nodes[i].GetAttribute(WideString('NodeName'));
//Node := XMLDocument1.DocumentElement.ChildNodes[0];
Root := XMLDoc.DocumentElement;
//Edit2.Text := XMLDoc.Node.NodeName; //ИМЯ NODE!!!
Root := Root.ChildNodes.Nodes[0]; //<players>
Root := Root.ChildNodes.Nodes[0];//<player>
//Edit1.Text := Root.ChildNodes.Nodes['Item'].Attributes['id'];//<Item id="1">

For I := 0 to Root.ChildNodes.Count - 1 do
  Begin
     Node := Root.ChildNodes.Nodes[i];
     //Memo1.Lines.Add(Node.Text);
  End;

{
Edit1.Text := XMLDocument1.DocumentElement.ChildNodes['population'].Text;
Edit2.Text := VarToStr(XMLDocument1.DocumentElement.ChildNodes['bases'].Attributes['ind']);
Edit3.Text := VarToStr(XMLDocument1.DocumentElement.ChildNodes['bases'].Attributes['tra']);
Edit4.Text := VarToStr(XMLDocument1.DocumentElement.ChildNodes['bases'].Attributes['sec']);
Edit5.Text := VarToStr(XMLDocument1.DocumentElement.ChildNodes['bases'].Attributes['env']);
}
end;

procedure TMainSteamHelperForm.Button1Click(Sender: TObject);
begin
  IniFile.WriteString('UserInfo','Dota2User', Dota2ConnectionID.Text);
  ShowMatchHistoryClick(nil);
  Dota2PageControl.ActivePage := MatchHistoryTabSheet;
end;

procedure TMainSteamHelperForm.Button2Click(Sender: TObject);
begin
  DownloadFiles := TRUE;
  DownloadALLGameLogos(DownloadLogosPath.Text + '\');
end;

procedure TMainSteamHelperForm.Button3Click(Sender: TObject);
begin
  DotaCheckGroup.Visible := FALSE;
end;

procedure TMainSteamHelperForm.Button4Click(Sender: TObject);
begin
  InfoForIconAndLogo.Visible := FALSE;
end;

procedure TMainSteamHelperForm.Button5Click(Sender: TObject);
begin
  if IntToStr(MailCheckSendPassword) = MailCheckEdit.Text then
  begin
    ShowMessage('Почтовый ящик подтверждён');
    RegMail.WriteString('MailAdress', MaillNotificationUserMail.Text);
    SmsGroup.Visible := TRUE;
  end
  else
  begin
    ShowMessage('Почтовый ящик не подтверждён!');
    RegMail.WriteString('MailAdress', '');
    SmsGroup.Visible := FALSE;
  end;

  if RegMail.ReadString('MailAdress') <> '' then
  begin
    MaillNotificationStatusLabel.Caption := 'Подтверждён';
    MaillNotificationStatusLabel.Font.Color := clGreen;
    MaillNotificationUserMail.Text := RegMail.ReadString('MailAdress');
  end
  else
  begin
    MaillNotificationStatusLabel.Caption := 'Не подтверждён';
    MaillNotificationStatusLabel.Font.Color := clRed;
  end;
end;

procedure TMainSteamHelperForm.ShowMatchPathButtonClick(Sender: TObject);
begin
  ShellExecute(0, 'open', PChar(ExePath + 'SavedMatches\'), '', '', 1);
end;

function SendMatchByMail(MailSendTo, MailSubject, BodyPath: String): Boolean;
var
  SMTP: TIDSMTP;
  MailMessage: TIDMessage;
begin
  try
    SMTP := TIDSMTP.Create(nil);
    SMTP.Host := 'smtp.mail.ru'; //IP почтового сервера
    SMTP.Username := 'steamhelper@inbox.ru';       { имя и пароль для входа на сервер}
    SMTP.Password := 'st3amh3lp3raw3s0m3passw0rd';
    //SMTP.Port := 25;
    smtp.Connect;

    MailMessage := TIDMessage.Create(nil);
    MailMessage.ExtraHeaders.Add('MIME-Version: 1.0');
    MailMessage.CharSet:='koi8-r'; // для корректности русских букв
    //MailMessage.CharSet := 'charset=Windows-1251';// для корректности русских букв
    MailMessage.ContentType := 'text/html';  //text/plain
    MailMessage.ContentTransferEncoding := '8bit';
    MailMessage.IsEncoded := true;
    MailMessage.UseNowForDate := true;
    MailMessage.From.Address := 'SteamHelper@inbox.ru'; //мэйл адресс от кого
    MailMessage.From.Name := 'Steam Helper';//имя от кого
    MailMessage.Recipients.Add.Address := MailSendTo;   //Адресс получателя
    //MailMessage.Recipients.EMailAddresses := ledTo.Text;
    MailMessage.Subject := MailSubject;
    //MailMessage.Body.Text := MailText + #13#10 + #13#10 + #13#10 +
    //'Сообщение отправлено через программу Steam Helper';;
    MailMessage.Body.LoadFromFile(BodyPath);    //Файл с текстом письма
    SMTP.Send(MailMessage);

    MailMessage.Free;
    SMTP.Free;
    Result := TRUE;
  except
    Result := FALSE;
  end;
end;

function TMainSteamHelperForm.SendMatchByMailNotification(MailSendTo, MailSubject, BodyPath: String): Boolean;
begin
  Result := FALSE;
  if RegMail.ReadString('MailAdress') = '' then
  begin
    ShowMessage('Почтовый ящик не подтверждён!');
    exit;
  end
  else
  if RegMail.ReadString('MailAdress') <> MailSendTo then
  begin
    ShowMessage('Подтверждённый почтовый ящик (' + RegMail.ReadString('MailAdress') + ') и ящик для отправки (' + MailSendTo + ') не совпадают!');
    exit;
  end
  else
  if RegMail.ReadString('MailAdress') = MailSendTo then
  begin
    if SendMatchByMail(MailSendTo, MailSubject, BodyPath) then
    begin
      Log('Сообщение ' + 'отправлено' , 3);
      Result := TRUE;
    end
    else
    begin
      Log('Сообщение ' + 'не было отправлено' , 3);
    end;
  end;
end;

function SendMail(MailSendTo, MailSubject, MailText: String): Boolean;
var
  SMTP: TIDSMTP;
  MailMessage: TIDMessage;
begin
  try
    SMTP := TIDSMTP.Create(nil);
    SMTP.Host := 'smtp.mail.ru'; //IP почтового сервера
    SMTP.Username := 'steamhelper@inbox.ru';       { имя и пароль для входа на сервер}
    SMTP.Password := 'st3amh3lp3raw3s0m3passw0rd';
    //SMTP.Port := 25;
    smtp.Connect;

    MailMessage := TIDMessage.Create(nil);
    MailMessage.ExtraHeaders.Add('MIME-Version: 1.0');
    MailMessage.CharSet:='koi8-r'; // для корректности русских букв
    //MailMessage.CharSet := 'charset=Windows-1251';// для корректности русских букв
    MailMessage.ContentType := 'text/plain';  //text/html
    MailMessage.ContentTransferEncoding := '8bit';
    MailMessage.IsEncoded := true;
    MailMessage.UseNowForDate := true;
    MailMessage.From.Address := 'SteamHelper@inbox.ru'; //мэйл адресс от кого
    MailMessage.From.Name := 'Steam Helper';//имя от кого
    MailMessage.Recipients.Add.Address := MailSendTo;   //Адресс получателя
    //MailMessage.Recipients.EMailAddresses := ledTo.Text;
    MailMessage.Subject := MailSubject;
    MailMessage.Body.Text := MailText + #13#10 + #13#10 + #13#10 +
    'Сообщение отправлено через программу Steam Helper';;
    //mess.Body.LoadFromFile('C:\Documents and Settings\os\mail.txt');    //Файл с текстом письма
    SMTP.Send(MailMessage);

    MailMessage.Free;
    SMTP.Free;
    Result := TRUE;
  except
    Result := FALSE;
  end;
end;

procedure TMainSteamHelperForm.SavedMatchesListClick(Sender: TObject);
var S: String;
begin
  if SavedMatchesList.ItemIndex <> -1 then
  begin
    S := ExePath + 'SavedMatches\' + SavedMatchesList.Items[SavedMatchesList.ItemIndex];
    WebBrowser.Navigate(S);
  end;
end;

procedure TMainSteamHelperForm.SavedMatchTImerTimer(Sender: TObject);
var
  searchResult : TSearchRec;
begin
  SavedMatchesList.Clear;
  SetCurrentDir(ExePath + 'SavedMatches\');
   //WebBrowser1.Navigate(ExePath + 'SavedMatches\' + '263757326.html');
  // Пытаемся найти правильные файлы, соответствующие Unit1.d* в текущем каталоге
  if FindFirst('*.html', faAnyFile, searchResult) = 0 then
  begin
    repeat
      SavedMatchesList.Items.Add(searchResult.Name);
    until FindNext(searchResult) <> 0;

    // Должен освободить ресурсы, используемые этими успешными, поисками
    FindClose(searchResult);
  end;
end;

procedure TMainSteamHelperForm.SaveMatchClick(Sender: TObject);
begin
  if MailMemo.Text <> '' then
    MailMemo.Lines.SaveToFile(ExePath + 'SavedMatches\' + GlobalMatchIDForSave + '.html');
end;

function TMainSteamHelperForm.SendMailNotification(MailSendTo, MailSubject, MailText: String): Boolean;
begin
  Result := FALSE;
  if RegMail.ReadString('MailAdress') = '' then
  begin
    ShowMessage('Почтовый ящик не подтверждён!');
    exit;
  end
  else
  if RegMail.ReadString('MailAdress') <> MailSendTo then
  begin
    ShowMessage('Подтверждённый почтовый ящик (' + RegMail.ReadString('MailAdress') + ') и ящик для отправки (' + MailSendTo + ') не совпадают!');
    exit;
  end
  else
  if RegMail.ReadString('MailAdress') = MailSendTo then
  begin
    if SendMail(MailSendTo, MailSubject, MailText) then
    begin
      Log('Сообщение ' + MailText + ' отправлено' , 3);
      Result := TRUE;
    end
    else
    begin
      Log('Сообщение ' + MailText + ' не было отправлено' , 3);
    end;
  end;
end;

procedure TMainSteamHelperForm.ShowAppLogosFolderClick(Sender: TObject);
begin
  ShellExecute(0, 'open', PChar(DownloadLogosPath.Text), '', '', 1);
end;

procedure TMainSteamHelperForm.ShowLogsFolderClick(Sender: TObject);
begin
  ShellExecute(0, 'open', PChar(LogPath), '', '', 1);
end;

procedure TMainSteamHelperForm.ShowHeroImagesFolderClick(Sender: TObject);
begin
  ShellExecute(0, 'open', PChar(DownloadHeroesPath.Text), '', '', 1);
end;

function SmsApiCrypt(api_id: String; CryptKey: String): String;
var S, S1, S2: String;
    i, i1, i2, i3: integer;
    //i1, i2: Int64;
begin
  Result := '';
  i1 := 0;
  S := api_id;
  for I := 1 to Length(CryptKey) do
  begin
    i1:= i1 + StrToInt(CryptKey[i]);
  end;
  i2 := StrToInt(CryptKey[2]) + StrToInt(CryptKey[3]) + StrToInt(CryptKey[4]);
  i3 := Round(i1/i2);
  for I := 1 to Length(S) do
  begin
    S[i]:= Chr(Ord(S[i]) - i3);
  end;
  Result := S;
end;

function SmsApiDeCrypt(CryptedApi_id: String; CryptKey: String): String;
var S, S1, S2: String;
    i, i1, i2, i3: integer;
    //i1, i2: Int64;
begin
  Result := '';
  i1 := 0;
  S := CryptedApi_id;
  for I := 1 to Length(CryptKey) do
  begin
    i1:= i1 + StrToInt(CryptKey[i]);
  end;
  i2 := StrToInt(CryptKey[2]) + StrToInt(CryptKey[3]) + StrToInt(CryptKey[4]);
  i3 := Round(i1/i2);
  for I := 1 to Length(S) do
  begin
    S[i]:= Chr(Ord(S[i]) + i3);
  end;
  Result := S;
end;

procedure TMainSteamHelperForm.SmsDoneButtonClick(Sender: TObject);
var buttonSelected, AuthResult: Integer;
    LoadURL, SmsBalans, Crypt: String;
begin
  if (SmsPhoneEdit.Text = '') or (SmsApiIDEdit.Text = '' ) then
    exit;

  IniFile.WriteString('SMS','api_id', '');
  IniFile.WriteString('SMS','login', '');

  LoadURL := 'http://sms.ru/my/balance?api_id=' + SmsApiIDEdit.Text;
  if DownloadFile(LoadURL, GlobalNotificationTempPath + 'SMSStatus') then
  begin
    SmsAuthResultMemo.Text := TextFileToString(GlobalNotificationTempPath + 'SMSStatus');
    AuthResult := StrToInt(SmsAuthResultMemo.Lines[0]);
{
100	Запрос выполнен. На второй строчке вы найдете ваше текущее состояние баланса.
200	Неправильный api_id
210	Используется GET, где необходимо использовать POST
211	Метод не найден
220	Сервис временно недоступен, попробуйте чуть позже.
300	Неправильный token (возможно истек срок действия, либо ваш IP изменился)
301	Неправильный пароль, либо пользователь не найден
302	Пользователь авторизован, но аккаунт не подтвержден (пользователь не ввел код, присланный в регистрационной смс)
}
    case AuthResult of
      100:
        begin
          SmsBalans := SmsAuthResultMemo.Lines[1];

          buttonSelected := MessageDlg('У вас на счету ' + SmsBalans + '?', mtConfirmation , mbOKCancel, 0);
          if buttonSelected = mrOK then
          begin
            Crypt := SmsApiCrypt(SmsApiIDEdit.Text, SmsPhoneEdit.Text);
            IniFile.WriteString('SMS','api_id', Crypt);
            IniFile.WriteString('SMS','login', SmsPhoneEdit.Text);
            SmsTestButton.Visible := TRUE;
            SmsGroup.Visible := TRUE;
            //IniFile.WriteString('SMS','api_id', Caption);
          end;
        end;
      200: ShowMessage('Неправильный api_id');
      210: ShowMessage('Используется GET, где необходимо использовать POST');
      211: ShowMessage('Метод не найден');
      220: ShowMessage('Сервис временно недоступен, попробуйте чуть позже');
      302: ShowMessage('Пользователь авторизован, но аккаунт не подтвержден');
    end;
  end
  else
  begin
    ShowMessage('Не удалось загрузить необходимые файлы');
  end;

end;

procedure TMainSteamHelperForm.SmsDotaCheckBoxClick(Sender: TObject);
begin
  if SmsDotaCheckBox.Checked then
  begin
    SmsDotaRadioGroup.Visible := TRUE;
    SmsDotaHelpBitBtn.Visible := TRUE;
    IniFile.WriteBool('SMS','SmsDota', SmsDotaCheckBox.Checked);
  end
  else
  begin
    SmsDotaRadioGroup.Visible := FALSE;
    SmsDotaHelpBitBtn.Visible := FALSE;
    IniFile.WriteBool('SMS','SmsDota', SmsDotaCheckBox.Checked);
  end;

  RefreshStatusBar;
end;

procedure TMainSteamHelperForm.SmsDotaInfoButtonClick(Sender: TObject);
begin
  SmsDotaInfoGroupBox.Visible := FALSE;
end;

procedure TMainSteamHelperForm.SmsDotaRadioGroupClick(Sender: TObject);
begin
  SmsDotaRadioGroup.Hint := SmsDotaRadioGroup.Items[SmsDotaRadioGroup.ItemIndex];
  IniFile.WriteInteger('SMS','SmsDotaType', SmsDotaRadioGroup.ItemIndex);
end;

procedure TMainSteamHelperForm.SmsFriendsCheckBoxClick(Sender: TObject);
begin
  if SmsFriendsCheckBox.Checked then
  begin
    IniFile.WriteBool('SMS','SmsFriends', SmsFriendsCheckBox.Checked);
  end
  else
  begin
    IniFile.WriteBool('SMS','SmsFriends', SmsFriendsCheckBox.Checked);
  end;
end;

procedure TMainSteamHelperForm.SMSOffCheckClick(Sender: TObject);
begin
  SmsFriendsCheckBox.Checked := FALSE;
  SmsSteamCheckBox.Checked := FALSE;
  SmsDotaCheckBox.Checked := FALSE;
end;

procedure TMainSteamHelperForm.SmsSteamCheckBoxClick(Sender: TObject);
begin
  if SmsSteamCheckBox.Checked then
  begin
    IniFile.WriteBool('SMS','SmsSteam', SmsSteamCheckBox.Checked);
  end
  else
  begin
    IniFile.WriteBool('SMS','SmsSteam', SmsSteamCheckBox.Checked);
  end;
end;

procedure TMainSteamHelperForm.SmsTestButtonClick(Sender: TObject);
var LoadURL, TestMsg, SmsPrice: String;
begin
  if SendSms('Ну как? Дошло сообщение? Или оно слишком большое, чтобы быть на русском?') then
    ShowMessage('Иногда, если длина сообщения превышает количество символов одного русского смс (67-70), то оно будет автоматически сначало переведено в транслит (153-160 латинских символов на смс), а если и это не поможет, то раздвоено на части.')
  else
    ShowMessage('Сообщение отправить не удалось, возможно вы указали не тот номер мобильного');
end;

function Translit(s: string): string;
const
  rus: string = 'абвгдеёжзийклмнопрстуфхцчшщьыъэюяАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯ';
  lat: array[1..66] of string = ('a', 'b', 'v', 'g', 'd', 'e', 'yo', 'zh', 'z', 'i', 'y', 'k', 'l', 'm', 'n', 'o', 'p', 'r', 's', 't', 'u', 'f', 'kh', 'ts', 'ch', 'sh', 'shch', '''', 'y', '''', 'e', 'yu', 'ya', 'A', 'B', 'V', 'G', 'D', 'E', 'Yo', 'Zh', 'Z', 'I', 'Y', 'K', 'L', 'M', 'N', 'O', 'P', 'R', 'S', 'T', 'U', 'F', 'Kh', 'Ts', 'Ch', 'Sh', 'Shch', '''', 'Y', '''', 'E', 'Yu', 'Ya');
var
  p, i, l: integer;
begin
  Result := '';
  l := Length(s);
  for i := 1 to l do
  begin
    p := Pos(s[i], rus);
    if p<1 then Result := Result + s[i] else Result := Result + lat[p];
  end;
end;

function TMainSteamHelperForm.OneSmsPrice(var TextMsg: String): Boolean;
var LoadURL, SmsPrice, Text, SaveMsg: String;
begin
  Result := FALSE;
  LoadURL := 'http://sms.ru/sms/cost?api_id=' + SmsApiIDEdit.Text + '&to=' + SmsPhoneEdit.Text + '&text=' + TextMsg;
  if DownloadMessage(LoadURL, GlobalNotificationTempPath + 'SMSStatus') then
  begin
    SaveMsg := TextMsg;
    SmsAuthResultMemo.Text := TextFileToString(GlobalNotificationTempPath + 'SMSStatus');
    //AuthResult := ;

    if SmsAuthResultMemo.Lines[0] = '100' then
    begin
      if StrToInt(SmsAuthResultMemo.Lines[2]) > 2 then
      begin
        Result := FALSE;
        exit;
      end;

      SmsPrice := SmsAuthResultMemo.Lines[1] + SmsAuthResultMemo.Lines[2];
      if SmsPrice = '01' then
      begin
        Log('Сообщение ' + TextMsg + ' укладывается в 1 СМС' , 4);
        Result := TRUE;
      end
      else
      begin
        Text := Translit(TextMsg);
        inc(trySMSCount);
        if trySMSCount < 10 then
          if OneSmsPrice(Text) then
          begin
            TextMsg := Translit(TextMsg);
            Result := TRUE;
            Log('Сообщение ' + SaveMsg + ' не укладывается в 1 СМС и было и было перведено в: ' + TextMsg, 4);
            exit;
          end
          else
            Result := FALSE
        else
          Result := FALSE;
      end;
    end;
{
200: ShowMessage('Неправильный api_id');
210: ShowMessage('Используется GET, где необходимо использовать POST');
211: ShowMessage('Метод не найден');
220: ShowMessage('Сервис временно недоступен, попробуйте чуть позже');
302: ShowMessage('Пользователь авторизован, но аккаунт не подтвержден');
}
  end
  else
    Log('Сообщение ' + TextMsg + ' не было отправлено, не удалось получить доступ к sms.ru для вычисления цены' , 4);
end;

function TMainSteamHelperForm.SendSms(TextMsg: String): Boolean;
var LoadURL, TestMsg, SmsPrice, Sms1, Sms2: String;
begin
  trySMSCount := 0;
  if Reg.ReadInteger('Count') = 0 then
  begin
    Result := FALSE;
    Log('Сообщение ' + TextMsg + ' не отправлено, т.к превышен дневной лимит' , 4);
    exit;
  end;

  Result := FALSE;
  if OneSmsPrice(TextMsg) then
  begin
    LoadURL := 'http://sms.ru/sms/send?api_id=' + SmsApiIDEdit.Text + '&to=' + SmsPhoneEdit.Text + '&text=' + TextMsg;
    if DownloadMessage(LoadURL, GlobalNotificationTempPath + 'SMSStatus') then
    begin
      SmsAuthResultMemo.Text := TextFileToString(GlobalNotificationTempPath + 'SMSStatus');
      //AuthResult := ;
      if SmsAuthResultMemo.Lines[0] = '100' then
      begin
        if Reg.ReadString('Date') <> DateToStr(Date) then
        begin
          Reg.WriteString('Date', DateToStr(Date));
          Reg.WriteInteger('Count', SmsMessageCount);
        end
        else
          if Reg.ReadInteger('Count') <> 0 then
          begin
            Reg.WriteInteger('Count', Reg.ReadInteger('Count') - 1);
            SmsCounProgressBar.Position := Reg.ReadInteger('Count');
            SmsCounLabel.Caption := 'Осталось сообщений на сегодня: ' + IntToStr(Reg.ReadInteger('Count'));
          end
          else
          begin
            Result := FALSE;
            SmsCounLabel.Caption := 'На сегодня сообщений не осталось';
            Log('Сообщение ' + TextMsg + ' не отправлено, т.к превышен дневной лимит' , 4);
            exit;
          end;
        Result := TRUE;
        Log('Сообщение ' + TextMsg + ' отправлено' , 4);
      end;
    end
    else
      Log('Сообщение ' + TextMsg + ' не было отправлено, не удалось получить доступ к sms.ru его для отправки' , 4);
  end
  else
  begin
    Sms1 := Copy(TextMsg, 1, Round(Length(TextMsg)/2));
    Sms2 := Copy(TextMsg, Round(Length(TextMsg)/2) + 1, Length(TextMsg));
    inc(trySMSCount);
    if trySMSCount < 10 then
      if (SendSms(Sms1)) and (SendSms(Sms2)) then
      begin
        Log('Сообщение ' + TextMsg + ' разделено на 2', 4);
        Result := TRUE;
        exit;
      end
    else
      Result := FALSE;
  end;
end;

procedure TMainSteamHelperForm.DownloadLogosInfoButtonClick(Sender: TObject);
begin
  DownloadLogosInfoGroup.Visible := FALSE;
end;

procedure TMainSteamHelperForm.ShowBuysClick(Sender: TObject);
var LoadURL: String;
    Node, Root, XMLGames, XMLMessage: IXMLNode;
    GamesCount, Return, MaxTimeGameName: String;
    i, j, R, H, M, MaxTime, NotPlay, TotalTime: integer;
begin
  //Screen.Cursor := crHourGlass;//Screen.Cursor := crArrow;
  SteamBuysGrid.Refresh;
  MaxTime := 0;
  NotPlay := 0;
  TotalTime := 0;
  MaxTimeGameName := 'Нет любимой игры';
  LoadURL := 'http://api.steampowered.com/IPlayerService/GetOwnedGames/v1/?key=' + SteamKey + '&steamid=' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'steamid') + '&include_appinfo=1&format=xml';
  if DownloadFile(LoadURL, TempPath + PlayerOwnedGames) then
  begin
    //MemoHelp.Lines.LoadFromFile(TempPath + UserXML);
    NewXMLFile(TempPath + PlayerOwnedGames);

    XMLDoc.LoadFromFile(TempPath + PlayerOwnedGames);
    XMLDoc.Active := TRUE;
    Root := XMLDoc.DocumentElement;
    GamesCount := Root.ChildNodes.Nodes['game_count'].Text; //<game_count>
    SteamBuysGrid.RowCount := StrToInt(GamesCount) + 1;
    XMLGames := Root.ChildNodes.Nodes[1]; //

    for I := 1 to SteamBuysGrid.RowCount do
    begin
      Application.ProcessMessages();
      SteamBuysGrid.Cells[0, i] := IntToStr(i);
    end;

    ConnectProgress.Max := XMLGames.ChildNodes.Count - 1;
    for i := 0 to XMLGames.ChildNodes.Count - 1 do
    begin
      if DownloadFiles then
      begin
        ConnectProgress.Position := i;
        Application.ProcessMessages();
        XMLMessage := XMLGames.ChildNodes.Nodes[i];
        SteamBuysGrid.Cells[1, i + 1] := XMLMessage.ChildNodes.Nodes['appid'].Text;
        SteamBuysGrid.Cells[2, i + 1] := XMLMessage.ChildNodes.Nodes['name'].Text;
        //SteamBuysGrid.Cells[3, i + 1] := XMLMessage.ChildNodes.Nodes['playtime_2weeks'].Text;
        if XMLMessage.ChildNodes.Nodes['playtime_forever'].Text = '' then
        begin
          SteamBuysGrid.Cells[3, i + 1] := 'Не было запусков';
          inc(NotPlay);
        end
        else
          begin
            R := StrToInt(XMLMessage.ChildNodes.Nodes['playtime_forever'].Text);
            TotalTime := TotalTime + R;
            if R > MaxTime then
              begin
                MaxTime := R;
                MaxTimeGameName := SteamBuysGrid.Cells[2, i + 1];
              end;
            H := R div 60;
            M:= R mod 60;
            SteamBuysGrid.Cells[3, i + 1] := 'часов: ' + IntToStr(H) + ', минут: ' + IntToStr(M);
          end;
        SteamBuysGrid.Cells[4, i + 1] := XMLMessage.ChildNodes.Nodes['img_icon_url'].Text;
        SteamBuysGrid.Cells[5, i + 1] := XMLMessage.ChildNodes.Nodes['img_logo_url'].Text;
      end
      else
        break;
    end;
    SteamBuysGrid.Refresh;
    //Screen.Cursor := crArrow;
    R := MaxTime;
    H := R div 60;
    M:= R mod 60;
    FavoriteGame.Text :=
    'Любимая игра: ' + MaxTimeGameName + '; ' +
    'Проведено в ней времени: ' +
    'Часов: ' + IntToStr(H) + ', минут: ' + IntToStr(M);

    PlayGamesInfo.Text :=
    'Всего игр: ' + GamesCount + '; ' +
    'Без запуска: ' + IntToStr(NotPlay) + '; ' +
    'Процент: ' + IntToStr(Round(100 * NotPlay/StrToInt(GamesCount))) + '%' + '; ' +
    'Всего игровых часов: ' + IntToStr(Round(TotalTime/60));
  end
  else
  begin
    ShowMessage('Не удалось совершить авторизацию');
    //Screen.Cursor := crArrow;
  end;
end;

function GetFriendInfo(XMLDoc: TXMLDocument; SteamID, Node: String): String;
  var LoadURL: String;
begin
  LoadURL := 'http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v2/?key=' + SteamKey + '&steamids=' + SteamID + '&format=xml';
  if not FileExists(TempPath + 'FriendsList\' + SteamID + '.xml') then
  begin
    if DownloadFile(LoadURL, TempPath + 'FriendsList\' + SteamID + '.xml') then
      NewXMLFile(TempPath + 'FriendsList\' + SteamID + '.xml')
    else
      Result := '?';
  end;
  Result :=  GetXMLPlayerSummariesByNode(XMLDoc, TempPath + 'FriendsList\' + SteamID + '.xml', Node);
end;

procedure TMainSteamHelperForm.ShowFriendsClick(Sender: TObject);
var LoadURL: String;
    Node, Root, XMLFriends, XMLFriend: IXMLNode;
    GamesCount, Return: String;
    i, j, AllFriendsCount, OfflineFriendsCount, OnlineFriendsCount,
    NoDisturbFriendsCount, NoPlaceFriendsCount, SleepFriendsCount,
    TradeFriendsCount, WantPlayFriendsCount, FriendSince: integer;
begin
  //Screen.Cursor := crHourGlass;//Screen.Cursor := crArrow;
  FriendsDataGrid.Refresh;
  AllFriendsCount := 0;
  OfflineFriendsCount := 0;
  OnlineFriendsCount := 0;
  NoDisturbFriendsCount := 0;
  SleepFriendsCount := 0;
  TradeFriendsCount := 0;
  WantPlayFriendsCount := 0;

  LoadURL := 'http://api.steampowered.com/ISteamUser/GetFriendList/v0001/?key=' + SteamKey + '&steamid=' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'steamid') + '&relationship=all&format=xml';
  if DownloadFile(LoadURL, TempPath + PlayerFriendsList) then
  begin
    //ConnectProgress.Position := 2;
    //MemoHelp.Lines.LoadFromFile(TempPath + UserXML);
    NewXMLFriendsListFile(TempPath + PlayerFriendsList);
    //ConnectProgress.Position := 3;

    XMLDoc.LoadFromFile(TempPath + PlayerFriendsList);
    XMLDoc.Active := TRUE;
    Root := XMLDoc.DocumentElement; //<friendslist>
    XMLFriends := Root.ChildNodes.Nodes[0]; //<friends>
    FriendsDataGrid.RowCount := XMLFriends.ChildNodes.Count + 1;
    //ConnectProgress.Position := 4;
    for I := 1 to FriendsDataGrid.RowCount do
    begin
      Application.ProcessMessages();
      FriendsDataGrid.Cells[0, i] := IntToStr(i);
    end;
    AllFriendsCount := FriendsDataGrid.RowCount - 1;
    //ConnectProgress.Position := 5;
{
GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'personaname');

FriendsDataGrid.Cells[1, 0] := '64-битный SteamID';  //steamid
FriendsDataGrid.Cells[2, 0] := 'Ник';  //realname
FriendsDataGrid.Cells[3, 0] := 'Группа';  //relationship
FriendsDataGrid.Cells[4, 0] := 'Друзья с';  //friend_since
}
    ConnectProgress.Max := XMLFriends.ChildNodes.Count - 1;
    for i := 0 to XMLFriends.ChildNodes.Count - 1 do
    begin
      if DownloadFiles then
      begin
        ConnectProgress.Position := i;
        Application.ProcessMessages();
        XMLFriend := XMLFriends.ChildNodes.Nodes[i];
        FriendsDataGrid.Cells[1, i + 1] := XMLFriend.ChildNodes.Nodes['steamid'].Text;

        LoadURL := 'http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v2/?key=' + SteamKey + '&steamids=' + FriendsDataGrid.Cells[1, i + 1] + '&format=xml';
        DownloadFile(LoadURL, TempPath + 'FriendsList\' + FriendsDataGrid.Cells[1, i + 1] + '.xml');
        NewXMLFile(TempPath + 'FriendsList\' + FriendsDataGrid.Cells[1, i + 1] + '.xml');

        FriendsDataGrid.Cells[2, i + 1] := GetFriendInfo(XMLDoc, FriendsDataGrid.Cells[1, i + 1], 'personaname');
        FriendsDataGrid.Cells[3, i + 1] := GetUserLVL(XMLDoc, FriendsDataGrid.Cells[1, i + 1]);
        FriendsDataGrid.Cells[4, i + 1] := SetPersonaState(XMLDoc, TempPath + 'FriendsList\' + FriendsDataGrid.Cells[1, i + 1] + '.xml');

        if FriendsDataGrid.Cells[4, i + 1] = 'Не в сети' then
          inc(OfflineFriendsCount);
        if FriendsDataGrid.Cells[4, i + 1] = 'В сети' then
          inc(OnlineFriendsCount);
        if FriendsDataGrid.Cells[4, i + 1] = 'Не беспокоить' then
          inc(NoDisturbFriendsCount);
        if FriendsDataGrid.Cells[4, i + 1] = 'Нет на месте' then
          inc(NoPlaceFriendsCount);
        if FriendsDataGrid.Cells[4, i + 1] = 'Спит' then
          inc(SleepFriendsCount);
        if FriendsDataGrid.Cells[4, i + 1] = 'Хочет обменяться' then
          inc(TradeFriendsCount);
        if FriendsDataGrid.Cells[4, i + 1] = 'Хочеть играть' then
          inc(WantPlayFriendsCount);

        FriendsDataGrid.Cells[5, i + 1] := GetFriendInfo(XMLDoc, FriendsDataGrid.Cells[1, i + 1], 'gameextrainfo');
        FriendsDataGrid.Cells[6, i + 1] := XMLFriend.ChildNodes.Nodes['relationship'].Text;
        FriendSince := StrToInt(XMLFriend.ChildNodes.Nodes['friend_since'].Text);
        FriendsDataGrid.Cells[7, i + 1] := DateTimeToStr(UnixToDateTime(Cardinal(FriendSince), FALSE));
        //SteamBuysGrid.Cells[0, i] := XMLMessage.ChildNodes.Nodes['img_logo_url'].Text;

        FriendsSomeInfo.Text :=
        'Всего друзей: ' + IntToStr(AllFriendsCount) + '; ' +
        'Не в сети: ' + IntToStr(OfflineFriendsCount) + '; ' +
        'Онлайн: ' + IntToStr(OnlineFriendsCount) + '; ' +
        'Не беспокоить: ' + IntToStr(NoDisturbFriendsCount) + '; ' + //#13#10 +
        'Нет на месте: ' + IntToStr(NoPlaceFriendsCount) + '; ' +
        'Спит: ' + IntToStr(SleepFriendsCount) + '; ' +
        'Хочет обменяться: ' + IntToStr(TradeFriendsCount) + '; ' +
        'Хочеть играть: ' + IntToStr(WantPlayFriendsCount);
      end
      else
        break;
    end;
  end
  else
  begin
    Log('Не удалось совершить авторизацию', -1);
    //Screen.Cursor := crArrow;
  end;
end;

procedure TMainSteamHelperForm.ShowMatchHistoryClick(Sender: TObject);
var LoadURL, Date1, Date2, test1, test2: String;
    Node, Root, XMLMatches, Players, Player, XMLMatch: IXMLNode;
    HeroName, ID, Return, MatchPlayerAccID, MatchPlayerHeroID, DotaUserID: String;
    i, j, k: integer;
    GamesDates: array of integer;
begin
  if GamesByDateTree.Items.Count > 0 then
    GamesByDateTree.Items.Delete(GamesByDateTree.Items[0]);
  DotaUserID := Trim(FloatToStr(StrToFloat(Dota2ConnectionID.Text) - 76561197960265728));
  LoadURL := 'http://api.steampowered.com/IDOTA2Match_570/GetMatchHistory/V001/?key=' + SteamKey + '&account_id=' + DotaUserID + '&matches_requested=' + IntToStr(VisibleMatchCount.Position) + '&format=xml';
  if DownloadFile(LoadURL, TempDotaPath + PlayerMatchHistory) then
  begin
{
    GamesByDateTree.Items.Add(nil, 'LOL');
    GamesByDateTree.Items.Add(nil, 'LOL2');
    GamesByDateTree.Items.AddChild(GamesByDateTree.Items.Item[0], 'LOL3');
}
    SetLength(GamesDates, 1);
    NewDotaMatchXMLFile(TempDotaPath + PlayerMatchHistory);

    XMLDoc.LoadFromFile(TempDotaPath + PlayerMatchHistory);
    XMLDoc.Active := TRUE;
{ RESULT
result
status
1 - Success
15 - Cannot get match history for a user that hasn't allowed it.
statusDetail
A message explaining the status, should status not be 1.
num_results
The number of matches in this response.
total_results
The total number of matches for the query.
results_remaining
The number of matches left for this query.
matches
A list of matches.
match_id
The matches unique ID.
match_seq_num
A 'sequence number', representing the order in which matches were recorded.
start_time
Unix timestamp of when the match began.
lobby_type
-1 - Invalid
0 - Public matchmaking
1 - Practise
2 - Tournament
3 - Tutorial
4 - Co-op with bots.
5 - Team match
6 - Solo Queue
players
The list of players within the match.
account_id
32-bit account ID.
player_slot
See #Player Slot below.
hero_id
The hero's unique ID. A list of hero IDs can be found via the GetHeroes method.
}

    Root := XMLDoc.DocumentElement;
    if Root.ChildNodes.Nodes['status'].Text = '15' then
    begin
      PrivateGamesStatus.Caption := 'На историю матчей наложена приватность!';
      //DotaCheckGrid.Visible := FALSE;
      exit;
    end;

    if GamesByDateTree.Items.Count = 0 then
      GamesByDateTree.Items.Add(nil, 'Матчи ' + '(последние ' + Root.ChildNodes.Nodes['num_results'].Text + ')');;

    XMLMatches := Root.ChildNodes.Nodes['matches'];
{
    for I := 1 to DotaCheckGrid.RowCount do
    begin
      Application.ProcessMessages();
      DotaCheckGrid.Cells[0, i] := IntToStr(i);
    end;
}

{ XML
<result>
	<status>1</status>
	<num_results>25</num_results>
	<total_results>330</total_results>
	<results_remaining>305</results_remaining>
	<matches>
		<match>
			<match_id>258224345</match_id>
			<match_seq_num>234222703</match_seq_num>
			<start_time>1375212766</start_time>
			<lobby_type>4</lobby_type>
			<players>
				<player>
					<account_id>4294967295</account_id>
					<player_slot>0</player_slot>
					<hero_id>73</hero_id>
				</player>      GamesByDateTree.Items
}
    SetLength(GamesDates, XMLMatches.ChildNodes.Count);
    ConnectProgress.Max := XMLMatches.ChildNodes.Count - 1;
    for i := 0 to XMLMatches.ChildNodes.Count - 1 do
    begin
      if DownloadFiles then
      begin
        ConnectProgress.Position := i;
        Application.ProcessMessages();
        GamesDates[i] := 0;
        XMLMatch := XMLMatches.ChildNodes.Nodes[i];
        Date1 := Date1 + ' ' + IntToStr(i) + '_' + DateToStr(UnixToDateTime(Cardinal(StrToInt(XMLMatch.ChildNodes.Nodes['start_time'].Text)), FALSE));
        Date1 := Date1 + ' ';
        //GamesByDateTree.Items.AddChild(GamesByDateTree.Items[j - 1], XMLMatch.ChildNodes.Nodes['match_id'].Text + '_' + DateTimeToStr(UnixToDateTime(Cardinal(StrToInt(XMLMatch.ChildNodes.Nodes['start_time'].Text)), FALSE)));
        //GamesByDateTree.Items.AddChild(GamesByDateTree.Items[0], Date2);
        //DotaCheckGrid.Cells[1, i + 1] := XMLMatch.ChildNodes.Nodes['match_id'].Text;
        //DotaCheckGrid.Cells[2, i + 1] := DateToStr(UnixToDateTime(Cardinal(StrToInt(XMLMatch.ChildNodes.Nodes['start_time'].Text)), FALSE));
        //Players := XMLMatch.ChildNodes.Nodes['players'];
        //GamesByDateTree.Items.
      end
      else
        break;
      end;
      while TRUE do
      begin
        if GamesByDateTree.Items[0].Count = 0 then
        begin
          Date2 := Date1;
          Return := Trim(Copy(Date2, Pos('_', Date2) + 1, Pos('_', Date2) - 1));
          Delete(Date2, 1, Pos('_', Date2));
          Return := Copy(Date2, 1, Pos(' ', Date2) - 1);
          Delete(Date2, 1, Pos(' ', Date2));
          GamesByDateTree.Items.AddChild(GamesByDateTree.Items[0], Return);
        end
        else
        begin
          ID := Trim(Copy(Date1, 1, Pos('_', Date1) - 1));
          Delete(Date1, 1, Pos('_', Date1));
          Return := Copy(Date1, 1, Pos(' ', Date1) - 1);
          Delete(Date1, 1, Pos(' ', Date1));
          Test2 := IntToStr(GamesByDateTree.Items[0].Count);
          Test1 := GamesByDateTree.Items.Item[0].GetLastChild.Text;
          if GamesByDateTree.Items.Item[0].GetLastChild.Text = Return then
          begin
            XMLMatch := XMLMatches.ChildNodes.Nodes[StrToInt(ID)];
            GamesByDateTree.Items.AddChild(GamesByDateTree.Items.Item[0].GetLastChild,
            XMLMatch.ChildNodes.Nodes['match_id'].Text + '. ' +
            TimeToStr(UnixToDateTime(Cardinal(StrToInt(XMLMatch.ChildNodes.Nodes['start_time'].Text)), FALSE)));
          end
          else
          begin
            GamesByDateTree.Items.Item[0].GetLastChild.Text := GamesByDateTree.Items.Item[0].GetLastChild.Text + ' (' + IntToStr(GamesByDateTree.Items.Item[0].GetLastChild.Count) + ')';
            Date1 := Date2;
            Trim(Date1);
            Delete(Date1, 1, Pos(ID + '_' + Return, Date1) - 1);
            Trim(Date1);
            Test1 := Trim(Copy(Date1, 1, Pos(' ', Date1) - 1));
            Date1 := Test1 + ' ' + Date1;
            Return := Trim(Copy(Date1, Pos('_', Date1) + 1, Pos('_', Date1) - 1));
            Delete(Date1, 1, Pos('_', Date1));
            Return := Copy(Date1, 1, Pos(' ', Date1) - 1);
            Delete(Date1, 1, Pos(' ', Date1));
            //GamesByDateTree.Items.AddChild(GamesByDateTree.Items[0], Return);
            GamesByDateTree.Items.AddChild(GamesByDateTree.Items.Item[0], Return);
          end;
          if Date1 = '' then
            break;
        end;
      end;
      GamesByDateTree.Items.Item[0].GetLastChild.Text := GamesByDateTree.Items.Item[0].GetLastChild.Text + ' (' + IntToStr(GamesByDateTree.Items.Item[0].GetLastChild.Count) + ')';
      GamesByDateTree.Items[0].Expanded := TRUE;
      //GamesByDateTree.Items[1].Expanded := TRUE;

{
<players>
  <player>
    <account_id>4294967295</account_id>
    <player_slot>0</player_slot>
    <hero_id>73</hero_id>
  </player>      GamesByDateTree.Items
}
      for i := 0 to XMLMatches.ChildNodes.Count - 1 do
      begin
        XMLMatch := XMLMatches.ChildNodes.Nodes[i];
        ID := XMLMatch.ChildNodes.Nodes['match_id'].Text;
        for j := 0 to GamesByDateTree.Items.Count do
        begin
          if Pos(ID, GamesByDateTree.Items[j].Text) > 0 then
          begin
            Players := XMLMatch.ChildNodes.Nodes['players'];
            for k := 0 to Players.ChildNodes.Count - 1 do
            begin
              Player := Players.ChildNodes.Nodes[k];
              MatchPlayerHeroID := Player.ChildNodes.Nodes['hero_id'].Text;
              HeroName := HeroNameByHeroID(XMLDoc, MatchPlayerHeroID);
              GamesByDateTree.Items.AddChild(GamesByDateTree.Items[j], HeroName)
            end;

          end;
        end;
      end;
      //GamesByDateTree.Items.AddChild(GamesByDateTree.Items[j - 1], XMLMatch.ChildNodes.Nodes['match_id'].Text + '_' + DateTimeToStr(UnixToDateTime(Cardinal(StrToInt(XMLMatch.ChildNodes.Nodes['start_time'].Text)), FALSE)));
      //GamesByDateTree.Items.AddChild(GamesByDateTree.Items[0], Date2);
      //DotaCheckGrid.Cells[1, i + 1] := XMLMatch.ChildNodes.Nodes['match_id'].Text;
      //DotaCheckGrid.Cells[2, i + 1] := DateToStr(UnixToDateTime(Cardinal(StrToInt(XMLMatch.ChildNodes.Nodes['start_time'].Text)), FALSE));
      //Players := XMLMatch.ChildNodes.Nodes['players'];
      //GamesByDateTree.Items.    players
  end;
end;

procedure TMainSteamHelperForm.SteamAppsGridClick(Sender: TObject);
begin
  WatchStatus.Visible := FALSE;
  WatchDOta2.Visible := FALSE;
end;

procedure TMainSteamHelperForm.SteamAppsGridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  GridSelection := SteamAppsGrid.Cells[ACol, ARow];
  SteamAppsGrid.Hint := GridSelection;
end;

procedure TMainSteamHelperForm.SteamBuysGridClick(Sender: TObject);
begin
  WatchStatus.Visible := FALSE;
  WatchDOta2.Visible := FALSE;
end;

procedure TMainSteamHelperForm.SteamBuysGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if Pos('Не было запусков' ,SteamBuysGrid.Cells[ACol,ARow]) > 0 then SteamBuysGrid.Canvas.Brush.Color:= clScrollBar;
  SteamBuysGrid.Canvas.FillRect(Rect);
  SteamBuysGrid.Canvas.TextOut(Rect.Left+2, Rect.Top+2, SteamBuysGrid.Cells[ACol, ARow]);
end;

procedure TMainSteamHelperForm.SteamBuysGridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  GridSelection := SteamBuysGrid.Cells[ACol, ARow];
  SteamBuysGrid.Hint := GridSelection;
end;

procedure TMainSteamHelperForm.SteamHelperNotificationCheckBoxClick(
  Sender: TObject);
begin
  LocalNotificationTimer.Interval := LocalNotificationRefresh.Position * 60000;
  if SteamHelperNotificationCheckBox.Checked then
  begin
    LocalNotificationGroupBox.Visible := TRUE;
    LocalNotificationTimer.Enabled := TRUE;
    IniFile.WriteBool('FriendsNotification','LocalNotification', SteamHelperNotificationCheckBox.Checked);
  end
  else
  begin
    LocalNotificationGroupBox.Visible := FALSE;
    LocalNotificationTimer.Enabled := FALSE;
    IniFile.WriteBool('FriendsNotification','LocalNotification', SteamHelperNotificationCheckBox.Checked);
  end;

  RefreshStatusBar;
end;

procedure TMainSteamHelperForm.SteamHelperPageChange(Sender: TObject);
begin
  DownloadFiles := TRUE;
  WatchStatus.Visible := FALSE;
  WatchDOta2.Visible := FALSE;
end;

procedure TMainSteamHelperForm.StopDownloadClick(Sender: TObject);
begin
  DownloadFiles := FALSE;
end;

procedure TMainSteamHelperForm.ShowAllHeroesButtonClick(Sender: TObject);
var LoadURL, LastAppsText: String;
    Node, Root, XMLApps, XMLApp: IXMLNode;
    i: integer;
begin
  if (Sender as TButton).Tag = 1 then
  begin
    LoadURL := 'http://api.steampowered.com/IEconDOTA2_570/GetHeroes/v1/?key=' + SteamKey + '&format=xml&language=us';
    DownloadAllHeroesButton.Caption := 'Ждём..';
    if DownloadFile(LoadURL, TempDotaPath + DotaHeroes) then
    begin
      DownloadAllHeroesButton.Caption := 'Загрузить список';
      ShowHeroes;
    end
    else
    begin
      DownloadAllHeroesButton.Caption := 'Загрузить список';
      ShowMessage('Не удалось загрузить список товаров');
    end;
  end
  else
  begin
    ShowHeroes;
  end;
  ShowAllHeroesGrid.Visible := TRUE;
end;

procedure TMainSteamHelperForm.ShowAllHeroesGridClick(Sender: TObject);
begin
  WatchStatus.Visible := FALSE;
  WatchDOta2.Visible := FALSE;
end;

procedure TMainSteamHelperForm.ShowAllHeroesGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
  var i, Help: integer;
begin
  for I := 0 to ShowAllHeroesGrid.RowCount - 1 do
  if ((ACol = 2)and(ARow = i + 1)) then
  begin
    Help := AllHeroIDs[i];
    DotaImageList.Draw(ShowAllHeroesGrid.Canvas, Rect.Left + 1, Rect.Top + 1, IndexOfHeroInListBoxByHeroID(Help));
  end;
end;

procedure TMainSteamHelperForm.ShowAllHeroesGridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  GridSelection := ShowAllHeroesGrid.Cells[ACol, ARow];
  ShowAllHeroesGrid.Hint := GridSelection;
end;

procedure TMainSteamHelperForm.MatchInfoByDataGrid2Click(Sender: TObject);
begin
  WatchStatus.Visible := FALSE;
  WatchDOta2.Visible := FALSE;
end;

procedure TMainSteamHelperForm.MatchInfoByDataGrid2DrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
  var Help, i, i1, i2, i3: integer;
  Stats: String;
begin
  for i := 0 to MatchInfoByDataGrid2.RowCount - 1 do
  begin
    if MatchInfoByDataGrid2.Cells[5, i + 1] <> '' then
    begin
      Stats := MatchInfoByDataGrid2.Cells[5, i + 1];
      i1 := StrToInt(Copy(Stats, 1, Pos('/', Stats) - 1));
      Delete(Stats, 1, Pos('/', Stats));
      i2 := StrToInt(Copy(Stats, 1, Pos('/', Stats) - 1));
      Delete(Stats, 1, Pos('/', Stats));
      i3 := StrToInt(Stats);
    end;
    if (i1 > i2) or (i3 > i2 * 2) or (i1 = i2) then
    begin
      if Pos(MatchInfoByDataGrid2.Cells[5, i + 1] ,MatchInfoByDataGrid2.Cells[ACol,ARow]) > 0 then MatchInfoByDataGrid2.Canvas.Brush.Color:= clMoneyGreen;
      MatchInfoByDataGrid2.Canvas.FillRect(Rect);
      MatchInfoByDataGrid2.Canvas.TextOut(Rect.Left + 2, Rect.Top+2, MatchInfoByDataGrid2.Cells[ACol, ARow]);
    end
    else
    begin
      if Pos(MatchInfoByDataGrid2.Cells[5, i + 1] ,MatchInfoByDataGrid2.Cells[ACol,ARow]) > 0 then MatchInfoByDataGrid2.Canvas.Brush.Color:= clRed;
      MatchInfoByDataGrid2.Canvas.FillRect(Rect);
      MatchInfoByDataGrid2.Canvas.TextOut(Rect.Left + 2, Rect.Top+2, MatchInfoByDataGrid2.Cells[ACol, ARow]);
    end;
  end;

  if Pos(CheckDotaUserName.Text ,MatchInfoByDataGrid2.Cells[ACol,ARow]) > 0 then MatchInfoByDataGrid2.Canvas.Brush.Color:= clMoneyGreen;
  MatchInfoByDataGrid2.Canvas.FillRect(Rect);
  MatchInfoByDataGrid2.Canvas.TextOut(Rect.Left + 2, Rect.Top+2, MatchInfoByDataGrid2.Cells[ACol, ARow]);

  {условие : в какой ячейке рисовать}
  for I := 0 to MatchInfoByDataGrid2.RowCount - 1 do
  if ((ACol = 4)and(ARow = i + 1)) then
  begin
    Help := HeroIDs[i];
    DotaImageList.Draw(MatchInfoByDataGrid2.Canvas, Rect.Left + 1, Rect.Top + 1, IndexOfHeroInListBoxByHeroID(Help));
  end;
end;

procedure TMainSteamHelperForm.MatchInfoByDataGrid2SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  GridSelection := MatchInfoByDataGrid2.Cells[ACol, ARow];
  MatchInfoByDataGrid2.Hint := GridSelection;
end;

procedure TMainSteamHelperForm.MatchInfoByDataGrid3Click(Sender: TObject);
begin
  WatchStatus.Visible := FALSE;
  WatchDOta2.Visible := FALSE;
end;

procedure TMainSteamHelperForm.MatchInfoByDataGrid3DrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
  var Help, i, i1, i2, i3: integer;
  Stats: String;
begin
  if MatchInfoByDataGrid3.Cells[1, 4] <> '' then
  begin
    Stats := MatchInfoByDataGrid3.Cells[1, 4];
    i1 := StrToInt(Copy(Stats, 1, Pos('/', Stats) - 1));
    Delete(Stats, 1, Pos('/', Stats));
    i2 := StrToInt(Copy(Stats, 1, Pos('/', Stats) - 1));
    Delete(Stats, 1, Pos('/', Stats));
    i3 := StrToInt(Stats);
  end;
  if (i1 > i2) or (i3 > i2 * 2) or (i1 = i2) then
  begin
    if Pos(MatchInfoByDataGrid3.Cells[1, 4] ,MatchInfoByDataGrid3.Cells[ACol,ARow]) > 0 then MatchInfoByDataGrid3.Canvas.Brush.Color:= clMoneyGreen;
    MatchInfoByDataGrid3.Canvas.FillRect(Rect);
    MatchInfoByDataGrid3.Canvas.TextOut(Rect.Left + 2, Rect.Top+2, MatchInfoByDataGrid3.Cells[ACol, ARow]);
  end
  else
  begin
    if Pos(MatchInfoByDataGrid3.Cells[1, 4] ,MatchInfoByDataGrid3.Cells[ACol,ARow]) > 0 then MatchInfoByDataGrid3.Canvas.Brush.Color:= clRed;
    MatchInfoByDataGrid3.Canvas.FillRect(Rect);
    MatchInfoByDataGrid3.Canvas.TextOut(Rect.Left + 2, Rect.Top+2, MatchInfoByDataGrid3.Cells[ACol, ARow]);
  end;
  {условие : в какой ячейке рисовать}
  for I := 0 to MatchInfoByDataGrid3.RowCount - 1 do
  if ((ACol = 1)and(ARow = 2)) then
  begin
    Help := HeroIDs[0];
    DotaImageList.Draw(MatchInfoByDataGrid3.Canvas, Rect.Left + 1, Rect.Top + 1, IndexOfHeroInListBoxByHeroID(Help));
  end;
end;

procedure TMainSteamHelperForm.MatchInfoByDataGrid3SelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
begin
  GridSelection := MatchInfoByDataGrid3.Cells[ACol, ARow];
  MatchInfoByDataGrid3.Hint := GridSelection;
end;

procedure TMainSteamHelperForm.MatchInfoByDataGridClick(Sender: TObject);
begin
  WatchStatus.Visible := FALSE;
  WatchDOta2.Visible := FALSE;
end;

procedure TMainSteamHelperForm.MatchInfoByDataGridDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
  var i, Help: integer;
begin
  if Pos('Публичный' ,MatchInfoByDataGrid.Cells[ACol,ARow]) > 0 then MatchInfoByDataGrid.Canvas.Brush.Color:= clMoneyGreen;
  MatchInfoByDataGrid.Canvas.FillRect(Rect);
  MatchInfoByDataGrid.Canvas.TextOut(Rect.Left+2, Rect.Top+2, MatchInfoByDataGrid.Cells[ACol, ARow]);

  if Pos('Ко-Оп с ботами' ,MatchInfoByDataGrid.Cells[ACol,ARow]) > 0 then MatchInfoByDataGrid.Canvas.Brush.Color:= clInfoBK;
  MatchInfoByDataGrid.Canvas.FillRect(Rect);
  MatchInfoByDataGrid.Canvas.TextOut(Rect.Left+2, Rect.Top+2, MatchInfoByDataGrid.Cells[ACol, ARow]);

  if Pos('Тренировка' ,MatchInfoByDataGrid.Cells[ACol,ARow]) > 0 then MatchInfoByDataGrid.Canvas.Brush.Color:= clMedGray;
  MatchInfoByDataGrid.Canvas.FillRect(Rect);
  MatchInfoByDataGrid.Canvas.TextOut(Rect.Left+2, Rect.Top+2, MatchInfoByDataGrid.Cells[ACol, ARow]);
  {условие : в какой ячейке рисовать}
  for I := 0 to MatchInfoByDataGrid.RowCount - 1 do
  if ((ACol = 4)and(ARow = i + 1)) then
  begin
    Help := HeroIDs[i];
    DotaImageList.Draw(MatchInfoByDataGrid.Canvas, Rect.Left + 1, Rect.Top + 1, IndexOfHeroInListBoxByHeroID(Help));
  end;
{1- индекс картинки в ImageList-е
    0: Result := 'Публичный';
    1: Result := 'Тренировка';
    2: Result := 'Турнир';
    3: Result := 'Гайд';
    4: Result := 'Ко-Оп с ботами';
    5: Result := 'Командный';
    6: Result := 'Solo Queue';
}

end;

procedure TMainSteamHelperForm.MatchInfoByDataGridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  GridSelection := MatchInfoByDataGrid.Cells[ACol, ARow];
  MatchInfoByDataGrid.Hint := GridSelection;
end;

procedure TMainSteamHelperForm.GamesByDateTreeChange_0(DotaUserID: String);
var LoadURL, GameDate: String;
    Root, XMLMatches, Players, Player, XMLMatch: IXMLNode;
    HeroName, Return, MatchID, MatchPlayerAccID, MatchPlayerHeroID, User64ID: String;
    i, j, k: integer;
    User64IDReal: real;
begin
  SaveMatch.Visible := FALSE;
  MatchInfoByDataGrid.Visible := TRUE;
  MatchInfoByDataGrid2.Visible := FALSE;
  MatchInfoByDataGrid3.Visible := FALSE;
  //showmessage('None' + IntToStr(Node.Level));
  //showmessage(Node.Text + IntToStr(Node.Level) + ' ' + IntToStr(Node.Count));
  //showmessage(Node.Parent.Text);
  //LoadURL := 'http://api.steampowered.com/IEconDOTA2_570/GetHeroes/v1/?key=' + SteamKey + '&format=xml&language=us';
  //DownloadFile(LoadURL, TempDotaPath + DotaHeroes);

  NewDotaMatchXMLFile(TempDotaPath + PlayerMatchHistory);

  XMLDoc.LoadFromFile(TempDotaPath + PlayerMatchHistory);
  XMLDoc.Active := TRUE;
{ XML
<result>
  <status>1</status>
  <num_results>25</num_results>
  <total_results>330</total_results>
  <results_remaining>305</results_remaining>
  <matches>
    <match>
      <match_id>258224345</match_id>
      <match_seq_num>234222703</match_seq_num>
      <start_time>1375212766</start_time>
      <lobby_type>4</lobby_type>
      <players>
        <player>
          <account_id>4294967295</account_id>
          <player_slot>0</player_slot>
          <hero_id>73</hero_id>
        </player>
}
  Root := XMLDoc.DocumentElement;
  if Root.ChildNodes.Nodes['status'].Text = '15' then
  begin
    GameInfoBox.Caption := 'На историю матчей наложена приватность!';
    GameInfoBox.Visible := FALSE;
    exit
  end;
  GameInfoBox.Caption := 'История матчей ' + '(последние ' + Root.ChildNodes.Nodes['num_results'].Text + ' матчей)';
  GameInfoBox.Visible := TRUE;

  XMLMatches := Root.ChildNodes.Nodes['matches'];

  MatchInfoByDataGrid.RowCount := XMLMatches.ChildNodes.Count + 1;

  for I := 1 to XMLMatches.ChildNodes.Count + 1 do
  begin
    Application.ProcessMessages();
    MatchInfoByDataGrid.Cells[0, i] := IntToStr(i);
  end;

  SetLength(HeroIDs, XMLMatches.ChildNodes.Count);//XMLMatches.ChildNodes.Count
  ConnectProgress.Max := XMLMatches.ChildNodes.Count - 1;
  for i := 0 to XMLMatches.ChildNodes.Count - 1 do
  begin
    if DownloadFiles then
    begin
      ConnectProgress.Position := i;
      Application.ProcessMessages();
      XMLMatch := XMLMatches.ChildNodes.Nodes[i];
      GameDate := DateTimeToStr(UnixToDateTime(Cardinal(StrToInt(XMLMatch.ChildNodes.Nodes['start_time'].Text)), FALSE));
      MatchInfoByDataGrid.Cells[1, i+ 1] := XMLMatch.ChildNodes.Nodes['match_id'].Text;
      MatchInfoByDataGrid.Cells[2, i + 1] := GameDate;
      MatchInfoByDataGrid.Cells[5, i + 1] := ReturnLobbyType(XMLMatch.ChildNodes.Nodes['lobby_type'].Text);
      Players := XMLMatch.ChildNodes.Nodes['players'];
      for j := 0 to Players.ChildNodes.Count - 1 do
      begin
        Application.ProcessMessages();
        Player := Players.ChildNodes.Nodes[j];
        MatchPlayerAccID := Player.ChildNodes.Nodes['account_id'].Text;
        MatchPlayerHeroID := Player.ChildNodes.Nodes['hero_id'].Text;
        if MatchPlayerAccID = DotaUserID then
        begin
          HeroIDs[i] := StrToInt(MatchPlayerHeroID);
          HeroName := HeroNameByHeroID(XMLDoc, MatchPlayerHeroID);
          MatchInfoByDataGrid.Cells[3, i + 1] := HeroName;// I'M HERE!
        end;
      end;
    end
    else
      break;
    end;
    ConnectProgress.Position := ConnectProgress.Max;
end;

procedure TMainSteamHelperForm.GamesByDateTreeChange_1(Node: TTreeNode; DotaUserID: String);
var LoadURL, GameDate: String;
    Root, XMLMatches, Players, Player, XMLMatch: IXMLNode;
    HeroName, Return, MatchID, MatchPlayerAccID, MatchPlayerHeroID, User64ID: String;
    i, j, k: integer;
    User64IDReal: real;
begin
  SaveMatch.Visible := FALSE;
  MatchInfoByDataGrid.Visible := TRUE;
  MatchInfoByDataGrid2.Visible := FALSE;
  MatchInfoByDataGrid3.Visible := FALSE;
  //showmessage(Node.Text + IntToStr(Node.Level) + ' ' + IntToStr(Node.Count));
  //showmessage(Node.Parent.Text);
  //LoadURL := 'http://api.steampowered.com/IEconDOTA2_570/GetHeroes/v1/?key=' + SteamKey + '&format=xml&language=us';
  //DownloadFile(LoadURL, TempDotaPath + DotaHeroes);

  NewDotaMatchXMLFile(TempDotaPath + PlayerMatchHistory);

  XMLDoc.LoadFromFile(TempDotaPath + PlayerMatchHistory);
  XMLDoc.Active := TRUE;
{ XML
<result>
  <status>1</status>
  <num_results>25</num_results>
  <total_results>330</total_results>
  <results_remaining>305</results_remaining>
  <matches>
    <match>
      <match_id>258224345</match_id>
      <match_seq_num>234222703</match_seq_num>
      <start_time>1375212766</start_time>
      <lobby_type>4</lobby_type>
      <players>
        <player>
          <account_id>4294967295</account_id>
          <player_slot>0</player_slot>
          <hero_id>73</hero_id>
        </player>
}
  Root := XMLDoc.DocumentElement;
  if Root.ChildNodes.Nodes['status'].Text = '15' then
  begin
    GameInfoBox.Caption := 'На историю матчей наложена приватность!';
    GameInfoBox.Visible := FALSE;
    exit
  end;
  GameInfoBox.Caption := 'История матчей ' + '(последние ' + Root.ChildNodes.Nodes['num_results'].Text + ' матчей)';
  GameInfoBox.Visible := TRUE;

  XMLMatches := Root.ChildNodes.Nodes['matches'];

  MatchInfoByDataGrid.RowCount := Node.Count + 1;

  for I := 1 to Node.Count + 1 do
  begin
    Application.ProcessMessages();
    MatchInfoByDataGrid.Cells[0, i] := IntToStr(i);
  end;

  SetLength(HeroIDs, Node.Count);//XMLMatches.ChildNodes.Count
  k := 0;
  ConnectProgress.Max := XMLMatches.ChildNodes.Count - 1;
  for i := 0 to XMLMatches.ChildNodes.Count - 1 do
  begin
    if DownloadFiles then
    begin
      ConnectProgress.Position := i;
      Application.ProcessMessages();
      XMLMatch := XMLMatches.ChildNodes.Nodes[i];
      GameDate := DateToStr(UnixToDateTime(Cardinal(StrToInt(XMLMatch.ChildNodes.Nodes['start_time'].Text)), FALSE));
      if Pos(GameDate, Node.Text) > 0 then
      begin
        MatchInfoByDataGrid.Cells[1, k + 1] := XMLMatch.ChildNodes.Nodes['match_id'].Text;
        MatchInfoByDataGrid.Cells[2, k + 1] := GameDate;
        MatchInfoByDataGrid.Cells[5, k + 1] := ReturnLobbyType(XMLMatch.ChildNodes.Nodes['lobby_type'].Text);
        inc(k);//INDEX FOR MatchInfoByHeroGrid.Cells[3, k] := HeroName;
        Players := XMLMatch.ChildNodes.Nodes['players'];
        for j := 0 to Players.ChildNodes.Count - 1 do
        begin
          Application.ProcessMessages();
          Player := Players.ChildNodes.Nodes[j];
          MatchPlayerAccID := Player.ChildNodes.Nodes['account_id'].Text;
          MatchPlayerHeroID := Player.ChildNodes.Nodes['hero_id'].Text;
          if MatchPlayerAccID = DotaUserID then
          begin
            HeroIDs[k - 1] := StrToInt(MatchPlayerHeroID);
            HeroName := HeroNameByHeroID(XMLDoc, MatchPlayerHeroID);
            MatchInfoByDataGrid.Cells[3, k] := HeroName;// I'M HERE!
          end;
        end;
      end;
    end
    else
      break;
    end;
    ConnectProgress.Position := ConnectProgress.Max;
end;

procedure TMainSteamHelperForm.GamesByDateTreeChange_2(Node: TTreeNode; DotaUserID: String);
var LoadURL, GameDate, HeroID, MatchSeqNum, Winner, S1, S2: String;
    Root, XMLMatches, Players, Player, XMLMatch: IXMLNode;
    HeroName, Return, MatchID, MatchPlayerAccID, MatchPlayerHeroID, User64ID: String;
    i, j, k, M, S, FbM, FbS: integer;
    User64IDReal: real;
begin
  MatchInfoByDataGrid.Visible := FALSE;
  MatchInfoByDataGrid2.Visible := TRUE;
  MatchInfoByDataGrid3.Visible := FALSE;
  //showmessage('None' + IntToStr(Node.Level));
  //showmessage(Node.Text + IntToStr(Node.Level) + ' ' + IntToStr(Node.Count));
  //showmessage(Node.Parent.Text);
  //LoadURL := 'http://api.steampowered.com/IEconDOTA2_570/GetHeroes/v1/?key=' + SteamKey + '&format=xml&language=us';
  //DownloadFile(LoadURL, TempDotaPath + DotaHeroes);

  NewDotaMatchXMLFile(TempDotaPath + PlayerMatchHistory);

  XMLDoc.LoadFromFile(TempDotaPath + PlayerMatchHistory);
  XMLDoc.Active := TRUE;
{ XML
<result>
  <status>1</status>
  <num_results>25</num_results>
  <total_results>330</total_results>
  <results_remaining>305</results_remaining>
  <matches>
    <match>
      <match_id>258224345</match_id>
      <match_seq_num>234222703</match_seq_num>
      <start_time>1375212766</start_time>
      <lobby_type>4</lobby_type>
      <players>
        <player>
          <account_id>4294967295</account_id>
          <player_slot>0</player_slot>
          <hero_id>73</hero_id>
        </player>
}
  Root := XMLDoc.DocumentElement;
  if Root.ChildNodes.Nodes['status'].Text = '15' then
  begin
    GameInfoBox.Caption := 'На историю матчей наложена приватность!';
    GameInfoBox.Visible := FALSE;
    exit
  end;
  GameInfoBox.Caption := 'История матча: ';
  GameInfoBox.Visible := TRUE;

  XMLMatches := Root.ChildNodes.Nodes['matches'];

  MatchInfoByDataGrid2.RowCount := 11;

  for I := 1 to 11 do
  begin
    Application.ProcessMessages();
    MatchInfoByDataGrid2.Cells[0, i] := IntToStr(i);
  end;

  SetLength(HeroIDs, 10);//XMLMatches.ChildNodes.Count
  ConnectProgress.Max := XMLMatches.ChildNodes.Count - 1;
  for i := 0 to XMLMatches.ChildNodes.Count - 1 do
  begin
    if DownloadFiles then
    begin
      ConnectProgress.Position := i;
      Application.ProcessMessages();
      XMLMatch := XMLMatches.ChildNodes.Nodes[i];
      MatchID := XMLMatch.ChildNodes.Nodes['match_id'].Text;
      GameInfoBox.Caption := 'История матча: ' + MatchID;
      if Pos(MatchID, Node.Text) > 0 then
      begin
{
MatchInfoByDataGrid2.Cells[0, 0] := 'ID матча';
MatchInfoByDataGrid2.Cells[1, 0] := 'ID игрока';  //
MatchInfoByDataGrid2.Cells[2, 0] := 'Ник';  //
MatchInfoByDataGrid2.Cells[3, 0] := 'Герой';  //
MatchInfoByDataGrid2.Cells[4, 0] := 'Иконка';
MatchInfoByDataGrid2.Cells[5, 0] := 'Слот';
}
        //MatchInfoByDataGrid2.Cells[0, 0] := 'ID: ' + XMLMatch.ChildNodes.Nodes['match_id'].Text;
        //MatchInfoByDataGrid.Cells[5, i + 1] := ReturnLobbyType(XMLMatch.ChildNodes.Nodes['lobby_type'].Text);
        Players := XMLMatch.ChildNodes.Nodes['players'];
        for j := 0 to Players.ChildNodes.Count - 1 do
        begin
          Application.ProcessMessages();
          Player := Players.ChildNodes.Nodes[j];
          MatchPlayerAccID := Player.ChildNodes.Nodes['account_id'].Text;
          if MatchPlayerAccID <> '' then
          begin
            User64IDInt64 := StrToInt64(Player.ChildNodes.Nodes['account_id'].Text);
            User64IDInt64 := User64IDInt64 + 76561197960265728;
            MatchInfoByDataGrid2.Cells[2, j + 1] := LoadDotaUserNameByID(IntToStr(User64IDInt64));
            if IntToStr(User64IDInt64) = Dota2ConnectionID.Text then
              UserIndex := j + 1;
          end
          else
          begin
            MatchPlayerAccID := '';
            MatchInfoByDataGrid2.Cells[2, j + 1] := MatchPlayerAccID;
          end;
          MatchPlayerHeroID := Player.ChildNodes.Nodes['hero_id'].Text;
          HeroIDs[j] := StrToInt(MatchPlayerHeroID);
          HeroName := HeroNameByHeroID(XMLDoc, MatchPlayerHeroID);
          //User64IDInt64 := 1;
          //User64IDInt64 := StrToInt64(MatchPlayerAccID);
          //User64IDInt64 := StrToInt64(MatchPlayerAccID);

          MatchInfoByDataGrid2.Cells[1, j + 1] := Player.ChildNodes.Nodes['account_id'].Text;
          MatchInfoByDataGrid2.Cells[3, j + 1] := HeroName;
        end;
        //ConnectProgress.Position := ConnectProgress.Max;
        break;
      end;
    end
    else
      break;
    end;

  //ДАЛЕЕ СКОПИПАСЧЕНО ИЗ GamesByDateTreeChange_3
  ConnectProgress.Max := 6;
  NewDotaMatchXMLFile(TempDotaPath + PlayerMatchHistory);

  XMLDoc.LoadFromFile(TempDotaPath + PlayerMatchHistory);
  XMLDoc.Active := TRUE;

  ConnectProgress.Position := 1;
  Root := XMLDoc.DocumentElement;
  if Root.ChildNodes.Nodes['status'].Text = '15' then
  begin
    GameInfoBox.Caption := 'На историю матчей наложена приватность!';
    GameInfoBox.Visible := FALSE;
    exit
  end;
  ///GameInfoBox.Caption := 'История матчей ' + '(последние ' + Root.ChildNodes.Nodes['num_results'].Text + ' матчей)';
  GameInfoBox.Visible := TRUE;

  XMLMatches := Root.ChildNodes.Nodes['matches'];

  ConnectProgress.Position := 2;

  for I := 0 to XMLMatches.ChildNodes.Count - 1 do
  begin
    XMLMatch := XMLMatches.ChildNodes.Nodes[i];
    MatchID := XMLMatch.ChildNodes.Nodes['match_id'].Text;
    if Pos(MatchID, Node.Text) > 0 then
    begin
      MatchSeqNum := XMLMatch.ChildNodes.Nodes['match_seq_num'].Text;
      Players := XMLMatch.ChildNodes.Nodes['players'];
      for j := 0 to Players.ChildNodes.Count - 1 do
      begin
        Player := Players.ChildNodes.Nodes[j];
        HeroID := Player.ChildNodes.Nodes['hero_id'].Text;
        if MatchInfoByDataGrid2.Cells[3, j + 1] = HeroNameByHeroID(XMLDoc, HeroID) then
        begin
          LoadURL := 'http://api.steampowered.com/IDOTA2Match_570/GetMatchHistoryBySequenceNum/v1/?key=' + SteamKey + '&start_at_match_seq_num=' + MatchSeqNum + '&matches_requested=1&format=xml';
          DownloadFile(LoadURL, TempDotaPath + MatchHistoryBySequenceNum);

          ConnectProgress.Position := 3;

          NewDotaMatchXMLFile(TempDotaPath + MatchHistoryBySequenceNum);

          XMLDoc.LoadFromFile(TempDotaPath + MatchHistoryBySequenceNum);
          XMLDoc.Active := TRUE;

          Root := XMLDoc.DocumentElement;
          if Root.ChildNodes.Nodes['status'].Text = '8' then
          begin
            GameInfoBox.Caption := 'Неправельный запрос...';
            GameInfoBox.Visible := FALSE;
            exit
          end;

          ConnectProgress.Position := 4;

          XMLMatches := Root.ChildNodes.Nodes['matches'];
          XMLMatch := XMLMatches.ChildNodes.Nodes['match'];
          MatchID := XMLMatch.ChildNodes.Nodes['match_id'].Text;
          Players := XMLMatch.ChildNodes.Nodes['players'];

          if not Pos(MatchID, Node.Text) > 0 then
          begin
            exit;
            ShowMessage('Произошла ошибка загрузки данных: загруженный MatchID (' + MatchID + ') не совпадает с нужным');
          end;

          ConnectProgress.Position := 5;

          for k := 0 to Players.ChildNodes.Count - 1 do
          begin
            Player := Players.ChildNodes.Nodes[k];
            HeroID := Player.ChildNodes.Nodes['hero_id'].Text;
            if MatchInfoByDataGrid2.Cells[3, k + 1] = HeroNameByHeroID(XMLDoc, HeroID) then
            begin
              MatchInfoByDataGrid2.Cells[5, k + 1] :=
              Player.ChildNodes.Nodes['kills'].Text + '/' +
              Player.ChildNodes.Nodes['deaths'].Text + '/' +
              Player.ChildNodes.Nodes['assists'].Text;
            end;
          end;

{<radiant_win>true</radiant_win> radiant - dire
<duration>1651</duration>
<start_time>1375212766</start_time>
<match_id>258224345</match_id>
<match_seq_num>234222703</match_seq_num>
<tower_status_radiant>1983</tower_status_radiant>
<tower_status_dire>256</tower_status_dire>
<barracks_status_radiant>63</barracks_status_radiant>
<barracks_status_dire>51</barracks_status_dire>
<cluster>122</cluster>
<first_blood_time>75</first_blood_time>
<lobby_type>4</lobby_type>
<human_players>5</human_players>
<leagueid>0</leagueid>
<positive_votes>0</positive_votes>
<negative_votes>0</negative_votes>
<game_mode>1</game_mode>
}
          if XMLMatch.ChildNodes.Nodes['radiant_win'].Text = 'true' then
            Winner := 'Radiant'
          else
            Winner := 'Dire';
          M := StrToInt(XMLMatch.ChildNodes.Nodes['duration'].Text) div 60;
          S := StrToInt(XMLMatch.ChildNodes.Nodes['duration'].Text) mod 60;
          FbM := StrToInt(XMLMatch.ChildNodes.Nodes['first_blood_time'].Text) div 60;
          FbS := StrToInt(XMLMatch.ChildNodes.Nodes['first_blood_time'].Text) mod 60;
          MatchInfoByDataEdit.Text :=
          'Победил: ' + Winner + '; ' +
          'Длилось: ' + IntToStr(M) + ':' + IntToStr(S) + '; ' +
          'ФБ на: ' + IntToStr(FbM) + ':' + IntToStr(FbS) + '; ' +
          'Тип: ' + ReturnLobbyType(XMLMatch.ChildNodes.Nodes['lobby_type'].Text) + '; ' +
          'Мод: ' + ReturnGameMode(XMLMatch.ChildNodes.Nodes['game_mode'].Text) + '; ' +
          'Людей: ' + XMLMatch.ChildNodes.Nodes['human_players'].Text + '; ' +
          'Лайков: ' + XMLMatch.ChildNodes.Nodes['positive_votes'].Text + '; ' +
          'Дизлайков: ' + XMLMatch.ChildNodes.Nodes['negative_votes'].Text + '; ';

          ConnectProgress.Position := 6;
          exit;
          //SetLength(HeroIDs, 10);//XMLMatches.ChildNodes.Count
        end;
      end;
    end;
  end;

{ XML
<result>
	<status>1</status>
	<matches>
		<match>
			<players>
				<player>
					<account_id>4294967295</account_id>
					<hero_id>73</hero_id>

					<kills>8</kills>
					<deaths>2</deaths>
					<assists>19</assists>
}
end;

procedure TMainSteamHelperForm.GamesByDateTreeChange_3(Node: TTreeNode; DotaUserID: String);
var LoadURL, GameDate, HeroID: String;
    Root, XMLMatches, Players, Player, XMLMatch: IXMLNode;
    HeroName, MatchSeqNum, Return, MatchID: String;
    MatchPlayerAccID, MatchPlayerHeroID, User64ID: String;
    i, j, k, NodeUserIndex: integer;
    User64IDReal: real;
begin
  SaveMatch.Visible := FALSE;
  MatchInfoByDataGrid.Visible := FALSE;
  MatchInfoByDataGrid2.Visible := FALSE;
  MatchInfoByDataGrid3.Visible := TRUE;
  //showmessage('None' + IntToStr(Node.Level));
  //showmessage(Node.Text + IntToStr(Node.Level) + ' ' + IntToStr(Node.Count));
  //showmessage(Node.Parent.Text);
  ConnectProgress.Max := 6;
  NewDotaMatchXMLFile(TempDotaPath + PlayerMatchHistory);

  XMLDoc.LoadFromFile(TempDotaPath + PlayerMatchHistory);
  XMLDoc.Active := TRUE;

  Root := XMLDoc.DocumentElement;
  if Root.ChildNodes.Nodes['status'].Text = '15' then
  begin
    GameInfoBox.Caption := 'На историю матчей наложена приватность!';
    GameInfoBox.Visible := FALSE;
    exit
  end;
  GameInfoBox.Caption := 'История матчей ' + '(последние ' + Root.ChildNodes.Nodes['num_results'].Text + ' матчей)';
  GameInfoBox.Visible := TRUE;

  XMLMatches := Root.ChildNodes.Nodes['matches'];

  ConnectProgress.Position := 2;

  for I := 0 to XMLMatches.ChildNodes.Count - 1 do
  begin
    XMLMatch := XMLMatches.ChildNodes.Nodes[i];
    MatchID := XMLMatch.ChildNodes.Nodes['match_id'].Text;
    if Pos(MatchID, Node.Parent.Text) > 0 then
    begin
      MatchSeqNum := XMLMatch.ChildNodes.Nodes['match_seq_num'].Text;
      Players := XMLMatch.ChildNodes.Nodes['players'];
      for j := 0 to Players.ChildNodes.Count - 1 do
      begin
        Player := Players.ChildNodes.Nodes[j];
        HeroID := Player.ChildNodes.Nodes['hero_id'].Text;
        if Node.Text = HeroNameByHeroID(XMLDoc, HeroID) then
        begin
          break;
        end;
      end;
      break;
    end;
  end;

  LoadURL := 'http://api.steampowered.com/IDOTA2Match_570/GetMatchHistoryBySequenceNum/v1/?key=' + SteamKey + '&start_at_match_seq_num=' + MatchSeqNum + '&matches_requested=1&format=xml';
  DownloadFile(LoadURL, TempDotaPath + MatchHistoryBySequenceNum);

  ConnectProgress.Position := 3;

  NewDotaMatchXMLFile(TempDotaPath + MatchHistoryBySequenceNum);

  XMLDoc.LoadFromFile(TempDotaPath + MatchHistoryBySequenceNum);
  XMLDoc.Active := TRUE;

  Root := XMLDoc.DocumentElement;
  if Root.ChildNodes.Nodes['status'].Text = '8' then
  begin
    GameInfoBox.Caption := 'Неправельный запрос...';
    GameInfoBox.Visible := FALSE;
    exit
  end;
  ConnectProgress.Position := 4;
{ XML
<result>
	<status>1</status>
	<matches>
		<match>
			<players>
				<player>
					<account_id>4294967295</account_id>
					<player_slot>0</player_slot>
					<hero_id>73</hero_id>
					<item_0>50</item_0>
					<item_1>102</item_1>
					<item_2>36</item_2>
					<item_3>125</item_3>
					<item_4>137</item_4>
					<item_5>166</item_5>
					<kills>8</kills>
					<deaths>2</deaths>
					<assists>19</assists>
					<leaver_status>0</leaver_status>
					<gold>5022</gold>
					<last_hits>106</last_hits>
					<denies>0</denies>
					<gold_per_min>703</gold_per_min>
					<xp_per_min>755</xp_per_min>
					<gold_spent>16369</gold_spent>
					<hero_damage>11330</hero_damage>
					<tower_damage>149</tower_damage>
					<hero_healing>0</hero_healing>
					<level>19</level>
}
  XMLMatches := Root.ChildNodes.Nodes['matches'];
  XMLMatch := XMLMatches.ChildNodes.Nodes['match'];
  MatchID := XMLMatch.ChildNodes.Nodes['match_id'].Text;
  Players := XMLMatch.ChildNodes.Nodes['players'];

  if not Pos(MatchID, Node.Parent.Text) > 0 then
  begin
    exit;
    ShowMessage('Произошла ошибка загрузки данных: загруженный MatchID (' + MatchID + ') не совпадает с нужным');
  end;

  for I := 0 to Players.ChildNodes.Count - 1 do
  begin
    Player := Players.ChildNodes.Nodes[i];
    if Player.ChildNodes.Nodes['hero_id'].Text = HeroID then
    begin
      NodeUserIndex := i;
      break;
    end;
  end;
  ConnectProgress.Position := 5;
  GameInfoBox.Caption := 'Информация игрока: ' + Player.ChildNodes.Nodes['account_id'].Text;
  GameInfoBox.Visible := TRUE;

  MatchInfoByDataGrid3.RowCount := 14;
{
  for I := 1 to 11 do
  begin
    Application.ProcessMessages();
    MatchInfoByDataGrid3.Cells[0, i] := IntToStr(i);
  end;
}
  SetLength(HeroIDs, 1);
  HeroIDs[0] := StrToInt(HeroID);
  //SetLength(HeroIDs, 10);//XMLMatches.ChildNodes.Count
  MatchInfoByDataGrid3.Cells[1, 1] := HeroNameByHeroID(XMLDoc, HeroID) + ' (Hero ID: ' + Player.ChildNodes.Nodes['hero_id'].Text + ')';
  MatchInfoByDataGrid3.Cells[1, 2] := '';
  MatchInfoByDataGrid3.Cells[1, 3] := Player.ChildNodes.Nodes['level'].Text;
  MatchInfoByDataGrid3.Cells[1, 4] :=
  Player.ChildNodes.Nodes['kills'].Text + '/' +
  Player.ChildNodes.Nodes['deaths'].Text + '/' +
  Player.ChildNodes.Nodes['assists'].Text;
  MatchInfoByDataGrid3.Cells[1, 5] := Player.ChildNodes.Nodes['gold'].Text;
  MatchInfoByDataGrid3.Cells[1, 6] := Player.ChildNodes.Nodes['last_hits'].Text;
  MatchInfoByDataGrid3.Cells[1, 7] := Player.ChildNodes.Nodes['denies'].Text;
  MatchInfoByDataGrid3.Cells[1, 8] := Player.ChildNodes.Nodes['gold_per_min'].Text;
  MatchInfoByDataGrid3.Cells[1, 9] := Player.ChildNodes.Nodes['xp_per_min'].Text;
  MatchInfoByDataGrid3.Cells[1, 10] := Player.ChildNodes.Nodes['gold_spent'].Text;
  MatchInfoByDataGrid3.Cells[1, 11] := Player.ChildNodes.Nodes['hero_damage'].Text;
  MatchInfoByDataGrid3.Cells[1, 12] := Player.ChildNodes.Nodes['tower_damage'].Text;
  MatchInfoByDataGrid3.Cells[1, 13] := Player.ChildNodes.Nodes['hero_healing'].Text;

{
  MatchInfoByDataGrid3.Cells[0, 1] := 'Герой';
  MatchInfoByDataGrid3.Cells[0, 2] := 'Иконка героя';
  MatchInfoByDataGrid3.Cells[0, 3] := 'Уровень';
  MatchInfoByDataGrid3.Cells[0, 4] := 'Убил/Умер/Помог';
  MatchInfoByDataGrid3.Cells[0, 5] := 'Золота в конце';
  MatchInfoByDataGrid3.Cells[0, 6] := 'Добил юнитов';
  MatchInfoByDataGrid3.Cells[0, 7] := 'Добил своих';
  MatchInfoByDataGrid3.Cells[0, 8] := 'Золота в минуту';
  MatchInfoByDataGrid3.Cells[0, 9] := 'Опыта в минуту';
  MatchInfoByDataGrid3.Cells[0, 10] := 'Золота потрачено';
  MatchInfoByDataGrid3.Cells[0, 11] := 'Нанесено урона героям';
  MatchInfoByDataGrid3.Cells[0, 12] := 'Нанесено урона зданиям';
  MatchInfoByDataGrid3.Cells[0, 13] := 'Лечение союзников';

}
  ConnectProgress.Position := ConnectProgress.Max;
end;

procedure TMainSteamHelperForm.GamesByDateTreeChange(Sender: TObject;
  Node: TTreeNode);
var LoadURL, GameDate, DotaUserID: String;
    Root, XMLMatches, Players, Player, XMLMatch: IXMLNode;
    HeroName, Return, MatchID, MatchPlayerAccID, MatchPlayerHeroID, User64ID: String;
    i, j, k: integer;
    User64IDReal: real;
begin
  SetLength(HeroIDs, 1);
  DotaUserID := Trim(FloatToStr(StrToFloat(Dota2ConnectionID.Text) - 76561197960265728));
  case Node.Level of
    0: GamesByDateTreeChange_0(DotaUserID);

    1: GamesByDateTreeChange_1(Node, DotaUserID);

    2: LoadMatchInfo(Node.Text); //GamesByDateTreeChange_2(Node, DotaUserID);

    3: GamesByDateTreeChange_3(Node, DotaUserID);

  end;
  MatchInfoByDataGrid.Refresh;
  MatchInfoByDataGrid2.Refresh;
end;

procedure TMainSteamHelperForm.GamesFullListGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
  var i: integer;
begin
  {условие : в какой ячейке рисовать
  GamesFullListGrid.RowCount := GamesFullList.Count;
  for i  := 0 to GamesFullList.Count do
  begin
  if ((ACol = 4)and(ARow = i + 1)) then
    GamesFullList.Draw(GamesFullListGrid.Canvas, Rect.Left + 2, Rect.Top + 2, i);
  end;
{1- индекс картинки в ImageList-е}
end;

procedure TMainSteamHelperForm.GamesFullListGridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  GridSelection := FriendsDataGrid.Cells[ACol, ARow];
  PublicDataGrid.Hint := GridSelection;
end;

procedure TMainSteamHelperForm.FillUserInfoGrid;
var i: integer;
begin
  //PUBLIC DATA
  PublicDataGrid.ColWidths[0] := 160;
  PublicDataGrid.ColWidths[1] := 500; //330
  PublicDataGrid.Cells[1, 0] := ' Информация';
  PublicDataGrid.Cells[0, 0] := '';  //64steamid
  PublicDataGrid.Cells[0, 1] := '64-битный SteamID';  //64steamid
  PublicDataGrid.Cells[0, 2] := '32-битный SteamID (Dota 2 ID)';  //32steamid
  PublicDataGrid.Cells[0, 3] := 'Ник';  //personaname
  PublicDataGrid.Cells[0, 4] := 'Уровень';  //GetUserLVL(XMLDoc, UserID.Text);
  PublicDataGrid.Cells[0, 5] := 'Профиль';  //profileurl
  PublicDataGrid.Cells[0, 6] := 'Статус'; //personastate
  PublicDataGrid.Cells[0, 7] := 'Приватность';  //communityvisibilitystate
  PublicDataGrid.Cells[0, 8] := 'Статус профиля'; //profilestate
  PublicDataGrid.Cells[0, 9] := 'Был онлайн'; //lastlogoff
  PublicDataGrid.Cells[0, 10] := 'Аватар (184x184)'; //avatarfull
  PublicDataGrid.Cells[0, 11] := 'Аватар (64x64)'; //avatarmedium
  PublicDataGrid.Cells[0, 12] := 'Аватар (32x32)'; //avatar

  //PRIVATE DATA
  PrivateDataGrid.ColWidths[0] := 105;
  PrivateDataGrid.ColWidths[1] := 500;
  PrivateDataGrid.Cells[1, 0] := ' Информация';
  PrivateDataGrid.Cells[0, 1] := 'Имя';  //realname
  PrivateDataGrid.Cells[0, 2] := 'ID основной группы';  //primaryclanid
  PrivateDataGrid.Cells[0, 3] := 'Аккуант создан';  //timecreated
  PrivateDataGrid.Cells[0, 4] := 'ID игры';  //gameid
  PrivateDataGrid.Cells[0, 5] := 'Название игры';  //gameextrainfo
  PrivateDataGrid.Cells[0, 6] := 'IP сервера игры'; //gameserverip
  PrivateDataGrid.Cells[0, 7] := 'Страна';  //loccountrycode
  {PrivateDataGrid.Cells[0, 7] := 'Статус профиля'; //profilestate
  PrivateDataGrid.Cells[0, 8] := 'Был в онлайн'; //lastlogoff
  PrivateDataGrid.Cells[0, 9] := 'Аватар (184x184)'; //avatarfull
  PrivateDataGrid.Cells[0, 10] := 'Аватар (64x64)'; //avatarmedium
  PrivateDataGrid.Cells[0, 11] := 'Аватар (32x32)'; //avatar}

  //BUY DATA
{
<appid>570</appid>
<name>Dota 2</name>
<playtime_2weeks>1784</playtime_2weeks>
<playtime_forever>19126</playtime_forever>
<img_icon_url>0bbb630d63262dd66d2fdd0f7d37e8661a410075</img_icon_url>
<img_logo_url>d4f836839254be08d8e9dd333ecc9a01782c26d2</img_logo_url>
}
  SteamBuysGrid.ColWidths[0] := 33;
  SteamBuysGrid.ColWidths[1] := 60;
  SteamBuysGrid.ColWidths[2] := 180;
  SteamBuysGrid.ColWidths[3] := 130;
  SteamBuysGrid.ColWidths[4] := 110;
  SteamBuysGrid.ColWidths[5] := 110;
  SteamBuysGrid.Cells[0, 0] := '№';
  SteamBuysGrid.Cells[1, 0] := 'ID игры';  //appid
  SteamBuysGrid.Cells[2, 0] := 'Название';  //name
  SteamBuysGrid.Cells[3, 0] := 'Времени в игре';  //playtime_forever
  SteamBuysGrid.Cells[4, 0] := 'Иконка';  //img_icon_url
  SteamBuysGrid.Cells[5, 0] := 'Логотип';  //img_logo_url

  //FRIENDS DATA
{
<steamid>76561197988574927</steamid>
имя
<relationship>friend</relationship>
<friend_since>1354372996</friend_since>
}
  FriendsDataGrid.ColWidths[0] := 33; //№
  FriendsDataGrid.ColWidths[1] := 120;  //64-битный SteamID
  FriendsDataGrid.ColWidths[2] := 100;  //Ник
  FriendsDataGrid.ColWidths[3] := 50; //Уровень
  FriendsDataGrid.ColWidths[4] := 100; //Статус
  FriendsDataGrid.ColWidths[5] := 100; //В игре
  FriendsDataGrid.ColWidths[6] := 50; //Группа
  FriendsDataGrid.ColWidths[7] := 110; //Друзья с
  FriendsDataGrid.Cells[0, 0] := '№';
  FriendsDataGrid.Cells[1, 0] := '64-битный SteamID';  //steamid
  FriendsDataGrid.Cells[2, 0] := 'Ник';  //realname
  FriendsDataGrid.Cells[3, 0] := 'Уровень';  //realname
  FriendsDataGrid.Cells[4, 0] := 'Статус';  //realname
  FriendsDataGrid.Cells[5, 0] := 'В игре';  //realname
  FriendsDataGrid.Cells[6, 0] := 'Группа';  //relationship
  FriendsDataGrid.Cells[7, 0] := 'Друзья с';  //friend_since

  //Achievements DATA
{
<apiname>Achievement_15</apiname>
<achieved>0</achieved>
<name>Industrial Accident</name>
<description>Killed 20 enemies with a Sky-Hook Execution.</description>
}
  GetPlayerAchievementsGrid.ColWidths[0] := 33;
  GetPlayerAchievementsGrid.ColWidths[1] := 120;
  GetPlayerAchievementsGrid.ColWidths[2] := 100;
  GetPlayerAchievementsGrid.ColWidths[3] := 100;
  GetPlayerAchievementsGrid.ColWidths[4] := 100;

  GetPlayerAchievementsGrid.Cells[0, 0] := '№';
  GetPlayerAchievementsGrid.Cells[1, 0] := 'Api имя';  //steamid
  GetPlayerAchievementsGrid.Cells[2, 0] := 'Название';  //realname
  GetPlayerAchievementsGrid.Cells[3, 0] := 'Статус';  //relationship
  GetPlayerAchievementsGrid.Cells[4, 0] := 'Описание';  //friend_since

  //STEAM APPS
{
<applist>
	<apps>
		<app>
			<appid>5</appid>
			<name>Dedicated Server</name>
		</app>
		<app>
}
  SteamAppsGrid.ColWidths[0] := 65;
  SteamAppsGrid.ColWidths[1] := 80;
  SteamAppsGrid.ColWidths[2] := 400;

  SteamAppsGrid.Cells[0, 0] := '№';
  SteamAppsGrid.Cells[1, 0] := 'ID';  //appid
  SteamAppsGrid.Cells[2, 0] := 'Название';  //name

//DOTA CHECK
  DotaCheckGrid.ColWidths[0] := 35;
  DotaCheckGrid.ColWidths[1] := 80;
  DotaCheckGrid.ColWidths[2] := 120;
  DotaCheckGrid.ColWidths[3] := 110;
  DotaCheckGrid.ColWidths[4] := 43;
  DotaCheckGrid.Cells[0, 0] := '№';
  DotaCheckGrid.Cells[1, 0] := 'ID матча';  //
  DotaCheckGrid.Cells[2, 0] := 'Дата (начало)';  //
  DotaCheckGrid.Cells[3, 0] := 'Вы играли героем';  //
  DotaCheckGrid.Cells[4, 0] := 'Иконка';

//DOTA MATCH BY DATA
  MatchInfoByDataGrid.ColWidths[0] := 30;
  MatchInfoByDataGrid.ColWidths[1] := 68;
  MatchInfoByDataGrid.ColWidths[2] := 115;
  MatchInfoByDataGrid.ColWidths[3] := 96;
  MatchInfoByDataGrid.ColWidths[4] := 43;
  MatchInfoByDataGrid.ColWidths[5] := 82;
  MatchInfoByDataGrid.Cells[0, 0] := '№';
  MatchInfoByDataGrid.Cells[1, 0] := 'ID матча';  //
  MatchInfoByDataGrid.Cells[2, 0] := 'Дата (начало)';  //
  MatchInfoByDataGrid.Cells[3, 0] := 'Вы играли героем';  //
  MatchInfoByDataGrid.Cells[4, 0] := 'Иконка';
  MatchInfoByDataGrid.Cells[5, 0] := 'Тип матча';

//DOTA MATCH BY DATA 2
  MatchInfoByDataGrid2.ColWidths[0] := 30;
  MatchInfoByDataGrid2.ColWidths[1] := 68;
  MatchInfoByDataGrid2.ColWidths[2] := 115;
  MatchInfoByDataGrid2.ColWidths[3] := 96;
  MatchInfoByDataGrid2.ColWidths[4] := 43;
  MatchInfoByDataGrid2.ColWidths[5] := 82;
  MatchInfoByDataGrid2.Cells[0, 0] := '№';
  MatchInfoByDataGrid2.Cells[1, 0] := 'ID игрока';  //
  MatchInfoByDataGrid2.Cells[2, 0] := 'Ник';  //
  MatchInfoByDataGrid2.Cells[3, 0] := 'Герой';  //
  MatchInfoByDataGrid2.Cells[4, 0] := 'Иконка';
  MatchInfoByDataGrid2.Cells[5, 0] := 'K/D/A';

//DOTA MATCH BY DATA 3
{
<kills>8</kills>
<deaths>2</deaths>
<assists>19</assists>

<leaver_status>0</leaver_status>

<gold>5022</gold>
<last_hits>106</last_hits>
<denies>0</denies>
<gold_per_min>703</gold_per_min>
<xp_per_min>755</xp_per_min>
<gold_spent>16369</gold_spent>
<hero_damage>11330</hero_damage>
<tower_damage>149</tower_damage>
<hero_healing>0</hero_healing>
<level>19</level>

  MatchInfoByDataGrid3.Cells[0, 1] := 'Герой';
  MatchInfoByDataGrid3.Cells[0, 2] := 'Иконка героя';
  MatchInfoByDataGrid3.Cells[0, 3] := 'Убил/Умер/Помог';
  MatchInfoByDataGrid3.Cells[0, 4] := 'Золота в конце';
  MatchInfoByDataGrid3.Cells[0, 5] := 'Добил юнитов';
  MatchInfoByDataGrid3.Cells[0, 6] := 'Добил своих';
  MatchInfoByDataGrid3.Cells[0, 7] := 'Золота в минуту';
  MatchInfoByDataGrid3.Cells[0, 8] := 'Опыта в минуту';
  MatchInfoByDataGrid3.Cells[0, 9] := 'Золота потрачено';
  MatchInfoByDataGrid3.Cells[0, 10] := 'Нанесено урона героям';
  MatchInfoByDataGrid3.Cells[0, 11] := 'Нанесено урона зданиям';
  MatchInfoByDataGrid3.Cells[0, 12] := 'Лечение союзников';
  MatchInfoByDataGrid3.Cells[0, 13] := 'Уровень';
}
  MatchInfoByDataGrid3.ColWidths[0] := 150;
  MatchInfoByDataGrid3.ColWidths[1] := 280;

  //ГОРИЗОНТАЛЬНО
  MatchInfoByDataGrid3.Cells[0, 0] := 'Параметр';
  MatchInfoByDataGrid3.Cells[1, 0] := 'Информация';

  //ВЕРТИКАЛЬНО
  MatchInfoByDataGrid3.Cells[0, 1] := 'Герой';
  MatchInfoByDataGrid3.Cells[0, 2] := 'Иконка героя';
  MatchInfoByDataGrid3.Cells[0, 3] := 'Уровень';
  MatchInfoByDataGrid3.Cells[0, 4] := 'Убил/Умер/Помог';
  MatchInfoByDataGrid3.Cells[0, 5] := 'Золота в конце';
  MatchInfoByDataGrid3.Cells[0, 6] := 'Добито юнитов';
  MatchInfoByDataGrid3.Cells[0, 7] := 'Добито своих';
  MatchInfoByDataGrid3.Cells[0, 8] := 'Золота в минуту';
  MatchInfoByDataGrid3.Cells[0, 9] := 'Опыта в минуту';
  MatchInfoByDataGrid3.Cells[0, 10] := 'Золота потрачено';
  MatchInfoByDataGrid3.Cells[0, 11] := 'Нанесено урона героям';
  MatchInfoByDataGrid3.Cells[0, 12] := 'Нанесено урона зданиям';
  MatchInfoByDataGrid3.Cells[0, 13] := 'Лечение союзников';

  //DOTA HEROES
  ShowAllHeroesGrid.ColWidths[0] := 30;
  ShowAllHeroesGrid.ColWidths[1] := 60;
  ShowAllHeroesGrid.ColWidths[2] := 43;
  ShowAllHeroesGrid.ColWidths[3] := 200;
  ShowAllHeroesGrid.ColWidths[4] := 200;

  ShowAllHeroesGrid.Cells[0, 0] := '№';
  ShowAllHeroesGrid.Cells[1, 0] := 'ID';  //
  ShowAllHeroesGrid.Cells[2, 0] := 'Иконка';  //
  ShowAllHeroesGrid.Cells[3, 0] := 'Имя';  //
  ShowAllHeroesGrid.Cells[4, 0] := 'Локализованное имя';

end;

procedure TMainSteamHelperForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DownloadFiles := FALSE;
  //DeleteFilesFromPath(TempPath);  //+ 'FriendsList'
  DeleteFilesFromPath(TempPath + 'FriendsList');  //+ 'FriendsList'
  DeleteFilesFromPath(TempDotaUsersPath);

  Reg.Free;

  IniFile.WriteInteger('MainSteamHelperForm','Height', MainSteamHelperForm.Height);
  IniFile.WriteInteger('MainSteamHelperForm','Width', MainSteamHelperForm.Width);

  IniFile.WriteInteger('MainSteamHelperForm','GamesListWidth', GamesList.Width);

  IniFile.WriteInteger('MainSteamHelperForm','GamesByDateTreeWidth', GamesByDateTree.Width);
end;

procedure TMainSteamHelperForm.RefreshStatusBar;
var UpdateCount: integer;
begin
  UpdateCount := 0;
  if SteamHelperNotificationCheckBox.Checked then
  begin
    if LocalNotification1UserIDCheckBox.Checked then
      inc(UpdateCount);
    if LocalNotificationPlayGameCheckBox.Checked then
      inc(UpdateCount);
  end;
  if LocalSteamNotificationCheckBox.Checked then
    inc(UpdateCount);
  if LocalDealNotificationCheckBox.Checked then
    inc(UpdateCount);
  if LocalDotaNotificationCheckBox.Checked then
    inc(UpdateCount);
  if LocalHeroNotificationCheckBox.Checked then
    inc(UpdateCount);

  with StatusBar do
  begin
  //USER HELLO
  Panels[0].Text := 'Привет, ' + UserName;
  //ONLINE
  if UpdateCount > 0 then
    Panels[1].Text := 'Уведомлений: ' + IntToStr(UpdateCount)
  else
    Panels[1].Text := 'Уведомлений нет ';
  //IP
    Panels[2].Text := GetIPAddress;
    if (SteamHelperNotificationCheckBox.Checked) and (UpdateCount = 0) then
    Panels[1].Text := 'Обновляется состояние друзей';
  end;
end;

procedure TMainSteamHelperForm.ReadINI;
begin
  //Инициилизация INI
  IniFile := TIniFile.Create(ExePath + 'Config.ini');
//Options
  MainMenuAutoLoad.Checked := IniFile.ReadBool('Options', 'Autoload', TRUE);

  MainMenuToTray.Checked := IniFile.ReadBool('Options', 'Tray', FALSE);

//Form
  MainSteamHelperForm.Height := IniFile.ReadInteger('MainSteamHelperForm','Height', 513);
  MainSteamHelperForm.Width := IniFile.ReadInteger('MainSteamHelperForm','Width', 725);

  GamesList.Width := IniFile.ReadInteger('MainSteamHelperForm','GamesListWidth', 170);

  GamesByDateTree.Width := IniFile.ReadInteger('MainSteamHelperForm','GamesByDateTreeWidth', 217);

//USER
  UserID.Text := IniFile.ReadString('UserInfo','User64ID', '');
  UserLink.Text := IniFile.ReadString('UserInfo','UserLink', 'http://steamcommunity.com/id/');
  Dota2ConnectionID.Text := IniFile.ReadString('UserInfo','Dota2User', '');

//OPTIONS
  LocalNotificationShowMessage.Checked := IniFile.ReadBool('LocalNotification','LocalNotificationShowMessage', FALSE);
  LocalNotificationBaloonHint.Checked := IniFile.ReadBool('LocalNotification','LocalNotificationBaloonHint', FALSE);

  //FRIEND
  SteamHelperNotificationCheckBox.Checked := IniFile.ReadBool('FriendsNotification','LocalNotification', FALSE);
  LocalNotificationRefresh.Position := IniFile.ReadInteger('FriendsNotification','LocalNotificationRefresh', 1);
  LocalNotification1UserIDCheckBox.Checked := IniFile.ReadBool('FriendsNotification','LocalNotification1UserID', FALSE);

  LocalNotificationPlayGameCheckBox.Checked := IniFile.ReadBool('FriendsNotification','LocalNotificationPlayGame', FALSE);

  //STEAM
  LocalSteamNotificationRefresh.Position := IniFile.ReadInteger('SteamNotification','LocalSteamNotificationRefresh', 1);
  LocalSteamNotificationCheckBox.Checked := IniFile.ReadBool('SteamNotification','LocalSteamNotification', FALSE);

  LocalDealNotificationCheckBox.Checked := IniFile.ReadBool('SteamNotification','LocalDealNotification', FALSE);

  //DOTA 2
  LocalDotaNotificationRefresh.Position := IniFile.ReadInteger('DotaNotification','LocalDotaNotificationRefresh', 1);
  LocalDotaNotificationCheckBox.Checked := IniFile.ReadBool('DotaNotification','LocalDotaNotification', FALSE);

  LocaHeroNotificationRefresh.Position := IniFile.ReadInteger('DotaNotification','LocaHeroNotificationRefresh', 1);
  LocalHeroNotificationCheckBox.Checked := IniFile.ReadBool('DotaNotification','LocalHeroNotification', FALSE);

//TEXT
  //FRIENDS
  LocalNotification1UserID.Text := IniFile.ReadString('FriendsNotification','LocalNotification1UserIDText', '');
  LocalFriendNotificationTemplate.Text := IniFile.ReadString('FriendsNotification','LocalFriendNotificationTemplateText', '%Время% %Ник% сменил статус с %ПрошлыйСтатус% на %НовыйСтатус%');

  LocalNotificationPlayGameTemplate.Text := IniFile.ReadString('FriendsNotification','LocalNotificationPlayGameTemplateText', '%Время% %Ник% %Состояние%');

  //STEAM
  LocalNotificationNewAppCheckBoxTemplate.Text := IniFile.ReadString('SteamNotification','LocalNotificationNewAppCheckBoxTemplateText', '%Время% В Steam появился %Товар%');

  LocalDealNotificationTemplate.Text := IniFile.ReadString('SteamNotification','LocalDealNotificationTemplateText', '%Время% В Steam скидка %Скидка% на игру %Товар%! Вместо %ЦенаБезСкидки%р она стоит %ЦенаСоСкидкой%р');
  LocalDealFormNotificationTemplate.Text := IniFile.ReadString('SteamNotification','LocalDealFormNotificationTemplateText', 'Скидка %Скидка% на %Товар%');

  //DOTA 2
  LocalDotaNotification1UserID.Text := IniFile.ReadString('DotaNotification','LocalDotaNotification1UserIDText', '');
  LocalDotaNotificationTemplate.Text := IniFile.ReadString('DotaNotification','LocalDotaNotificationTemplateText', '%ДатаНачала% %ВремяНачала% %Ник% сыграл %Герой% со счётом %K%/%D%/%A%,' + ' ФБ на %ФБ%, длительностью %МатчДлился%, золотом %Золото%, крипами %ЛХ%/%Отобрано%,' + ' ГПМ %ГПМ%, ЭПМ %ЭПМ%, потраченным золотом %Потрачено%,' + ' урона героям %УронГероям%, урона зданиям %УронЗданиям%, вылеченным ХП союзникам %Вылечено%');
  LocalHeroNotificationTemplate.Text := IniFile.ReadString('DotaNotification','LocalHeroNotificationTemplateText', '%Время% В Dota 2 появился (появится) герой %Герой% ');

  //MAIL
  MailFriendsCheckBox.Checked := IniFile.ReadBool('Mail','MailFriends', FALSE);
  MailSteamCheckBox.Checked := IniFile.ReadBool('Mail','MailSteam', FALSE);
  MailDota2CheckBox.Checked := IniFile.ReadBool('Mail','MailDota2', FALSE);

  if RegMail.ReadString('MailAdress') <> '' then
  begin
    MailGroupBox.Visible := TRUE;
    MailNotification.Enabled := TRUE;
  end
  else
  begin
    MailGroupBox.Visible := FALSE;
    MailNotification.Enabled := FALSE;
    MailFriendsCheckBox.Checked := FALSE;
    MailSteamCheckBox.Checked := FALSE;
    MailDota2CheckBox.Checked := FALSE;
  end;
  //TEXT
  MailFriendsEdit.Text := IniFile.ReadString('Mail','MailFriendsText', 'События друзей');
  MailSteamEdit.Text := IniFile.ReadString('Mail','MailSteamText', 'События в Steam');
  MailDotaEdit.Text := IniFile.ReadString('Mail','MailDota2Text', 'События в Dota 2');

  //SMS
  SmsFriendsCheckBox.Checked := IniFile.ReadBool('SMS','SmsFriends', FALSE);
  SmsSteamCheckBox.Checked := IniFile.ReadBool('SMS','SmsSteam', FALSE);
  SmsDotaCheckBox.Checked := IniFile.ReadBool('SMS','SmsDota', FALSE);
  SmsDotaRadioGroup.ItemIndex := IniFile.ReadInteger('SMS','SmsDotaType', 2);

  SmsPhoneEdit.Text := IniFile.ReadString('SMS','login', '');
  if SmsPhoneEdit.Text <> '' then
    SmsApiIDEdit.Text := SmsApiDeCrypt(IniFile.ReadString('SMS','api_id', ''), SmsPhoneEdit.Text)
  else
    SmsApiIDEdit.Text := '';

  if SmsApiIDEdit.Text <> '' then
  begin
    if SmsApiIDEdit.Text = SmsApiDeCrypt(IniFile.ReadString('SMS','api_id', ''), SmsPhoneEdit.Text) then
    begin
      SmsGroup.Visible := TRUE;
      SMSNotification.Enabled := TRUE;
    end
    else
    begin
      SmsGroup.Visible := FALSE;
      SMSNotification.Enabled := FALSE;
      SmsFriendsCheckBox.Checked := FALSE;
      SmsSteamCheckBox.Checked := FALSE;
      SmsDotaCheckBox.Checked := FALSE;
    end;
  end
  else
  begin
    SmsGroup.Visible := FALSE;
    SMSNotification.Enabled := FALSE;
    SmsFriendsCheckBox.Checked := FALSE;
    SmsSteamCheckBox.Checked := FALSE;
    SmsDotaCheckBox.Checked := FALSE;
  end;

  //MainMenuAutoLoadClick(nil);
  //MainMenuToTrayClick(nil);

  SteamHelperNotificationCheckBoxClick(nil);
  LocalNotification1UserIDCheckBoxClick(nil);
  LocalNotificationPlayGameCheckBoxClick(nil);

  LocalSteamNotificationCheckBoxClick(nil);
  LocalDealNotificationCheckBoxClick(nil);

  LocalDotaNotificationCheckBoxClick(nil);
  LocalHeroNotificationCheckBoxClick(nil);
end;

procedure TMainSteamHelperForm.FormCreate(Sender: TObject);
begin
  MailCheckSendPassword := Random(40000) + Random(3000) + Random(200) + Random(10);

  MainSteamHelperForm.Caption := ProgramCaption;
  ExePath := ExtractFilePath(Application.ExeName);

  //Инициилизация реестра
  //SMS
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;

  if not Reg.KeyExists('\SOFTWARE\Steam Helper') then
    Reg.CreateKey('\SOFTWARE\Steam Helper');
  if not Reg.KeyExists('\SOFTWARE\Steam Helper\SMS') then
  begin
    Reg.CreateKey('\SOFTWARE\Steam Helper\SMS');
  end;

  Reg.OpenKey('\SOFTWARE\Steam Helper\SMS', false);

  if not Reg.ValueExists('Date') then
    Reg.WriteString('Date', DateToStr(Date));

  if not Reg.ValueExists('Count') then
    Reg.WriteInteger('Count', SmsMessageCount);

  //MAIL
  RegMail := TRegistry.Create;
  RegMail.RootKey := HKEY_CURRENT_USER;

  if not RegMail.KeyExists('\SOFTWARE\Steam Helper') then
    RegMail.CreateKey('\SOFTWARE\Steam Helper');
  if not RegMail.KeyExists('\SOFTWARE\Steam Helper\Mail') then
  begin
    RegMail.CreateKey('\SOFTWARE\Steam Helper\Mail');
  end;

  RegMail.OpenKey('\SOFTWARE\Steam Helper\Mail', false);

  if not RegMail.ValueExists('MailAdress') then
    RegMail.WriteString('MailAdress', '');

  if RegMail.ReadString('MailAdress') <> '' then
  begin
    MaillNotificationStatusLabel.Caption := 'Подтверждён';
    MaillNotificationStatusLabel.Font.Color := clGreen;
    MaillNotificationUserMail.Text := RegMail.ReadString('MailAdress');
  end
  else
  begin
    MaillNotificationStatusLabel.Caption := 'Не подтверждён';
    MaillNotificationStatusLabel.Font.Color := clRed;
    MaillNotificationUserMail.Text := '';
  end;


  //ЗАГРУЗКА НАСТРОЕК
  ReadINI;

  if MainMenuToTray.Checked then
    MainSteamHelperForm.Hide;

  //Временные папка (или неочень)
  TempPath := ExePath + 'Temp\';
  LogPath := ExePath + 'Log\';
  TempDotaPath := TempPath + 'Dota2\';
  TempDotaUsersPath := TempDotaPath + 'Users\';
  TempDailyDealPath := TempPath + 'DailyDeal\';
  //Global Notification
  GlobalNotificationTempPath := ExePath + 'Global Notification\';

  //Log('Программа запущена', -1);
  SetLength(HeroIDs, 1);
  SetLength(AllHeroIDs, 1);

  HeroIDs[0] := 0;
  UserIndex := -1;

  //ЗАГРУЗКА ЧЕКБОКСОВ
  //SteamHelperNotificationCheckBoxClick(nil);
  //Log('Настройки загружены', -1);
  TrayIconLocalNotification.Visible := TRUE;

  //Заполнение таблицы информации
  FillUserInfoGrid;
  //Log('Таблицы заполнены', -1);

  //Dendi ID  76561198030654385
  VisibleMatchCount.Position := VisibleMatchCount.Max;

  DownloadFiles := TRUE;


  if not DirectoryExists(TempPath) then
    CreateDir(TempPath);

  if not DirectoryExists(ExePath + 'SavedMatches\') then
    CreateDir(ExePath + 'SavedMatches\');

  if not DirectoryExists(TempDotaPath) then
    CreateDir(TempDotaPath);

  if not DirectoryExists(TempPath + 'FriendsList') then
    CreateDir(TempPath + 'FriendsList');

  if not DirectoryExists(TempDailyDealPath) then
    CreateDir(TempDailyDealPath);

  if not DirectoryExists(TempDotaUsersPath) then
    CreateDir(TempDotaUsersPath);

  if not DirectoryExists(LogPath) then
    CreateDir(LogPath);

  //УВЕДОМЛЕНИЯ ГЛОБАЛЬНЫ (СМС, ПОЧТА)
  if not DirectoryExists(GlobalNotificationTempPath) then
    CreateDir(GlobalNotificationTempPath);

  DownloadLogosPath.Text := ExtractFilePath(Application.ExeName) + 'Pictures';
  DownloadHeroesPath.Text := ExtractFilePath(Application.ExeName) + 'Dota 2 Heroes';

  CheckPanel.Visible := FALSE;
  DotaCheckGroup.Visible := FALSE;
  GameInfoBox.Visible := FALSE;

  //ПрогрессБар в СтатусБар
  with ConnectProgress do
  begin
    Parent := StatusBar;
    Position := 0;
    Top := 2;
    Left := 450;
    Height := StatusBar.Height - Top;
    Width := 230;
  end;

  RefreshStatusBar;

  //LABEL в СтатусБар
  with SmsCounLabel do
  begin
    Caption := 'Осталось сообщений на сегодня: ' + IntToStr(Reg.ReadInteger('Count'));
    Parent := SmsCounProgressBar;
    Top := 2;
    Left := 60;
    Height := StatusBar.Height - Top;
    Width := 230;
  end;
  SmsCounProgressBar.Position := Reg.ReadInteger('Count');

  MailCheckLabel.Caption :=
  'Чтобы убедиться, что введённый почтовый ящик точно ваш,' + #13#10 +
  'необходимо ниже ввести отправленный на него код.' + #13#10;
  //УВЕДОМЛЕНИЯ
  LocalNotificationTimer.Interval := LocalNotificationRefresh.Position * 60000;

  SteamNewAppTimer.Interval := LocalSteamNotificationRefresh.Position * 3600000;

  DealTimer.Interval := LocalSteamNotificationRefresh.Position * 3600000;

  DotaTimer.Interval := LocalDotaNotificationRefresh.Position * 60000;

  NewHeroTimer.Interval := LocaHeroNotificationRefresh.Position * 3600000;
  //Log('Уведомления загружены', -1);
end;

procedure TMainSteamHelperForm.FriendsDataGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if Pos('В сети' ,FriendsDataGrid.Cells[ACol,ARow]) > 0 then FriendsDataGrid.Canvas.Brush.Color:= clMoneyGreen;
  FriendsDataGrid.Canvas.FillRect(Rect);
  FriendsDataGrid.Canvas.TextOut(Rect.Left+2, Rect.Top+2, FriendsDataGrid.Cells[ACol, ARow]);

  if Pos('Спит' ,FriendsDataGrid.Cells[ACol,ARow]) > 0 then FriendsDataGrid.Canvas.Brush.Color:= clInfoBK;
  FriendsDataGrid.Canvas.FillRect(Rect);
  FriendsDataGrid.Canvas.TextOut(Rect.Left+2, Rect.Top+2, FriendsDataGrid.Cells[ACol, ARow]);
end;

procedure TMainSteamHelperForm.FriendsDataGridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  WatchStatus.Visible := TRUE;
  WatchDOta2.Visible := TRUE;
  GridSelection := FriendsDataGrid.Cells[ACol, ARow];
  FriendsDataGrid.Hint := GridSelection;
  WatchStatusStr := FriendsDataGrid.Cells[1, ARow];
end;

procedure TMainSteamHelperForm.GamesListClick(Sender: TObject);
var LoadURL: String;
    Node, Root, XMLAchievements, XMLAchievement: IXMLNode;
    Return, CountryCode: String;
    i, j, AllAchiv, DoneAchiv, Nodes: integer;
begin
  if GamesList.Count = 0 then
    exit;
    //loccountrycode
  //Screen.Cursor := crHourGlass;//Screen.Cursor := crArrow;
  DoneAchiv := 0;
  AllAchiv := 0;
  Nodes := 0;
  DoneAchievements.Clear;
  GetPlayerAchievementsGrid.Refresh;
  if GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'loccountrycode') = '?' then
    CountryCode := 'gb'
  else
    CountryCode := AnsiLowerCase(GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'loccountrycode'));
  LoadURL := 'http://api.steampowered.com/ISteamUserStats/GetPlayerAchievements/v1/?key=' + SteamKey + '&steamid=' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'steamid') + '&appid=' + IntToStr(GamesIDs[GamesList.ItemIndex]) + '&l=' + CountryCode + '&format=xml';
  if DownloadFile(LoadURL, TempPath + PlayerAchievements) then
  begin
    //MemoHelp.Lines.LoadFromFile(TempPath + UserXML);
    NewXMLAchievements(TempPath + PlayerAchievements);
{
<playerstats>
  <steamID>76561198030988834</steamID>
  <gameName>BioShock Infinite</gameName>
  <achievements>
    <achievement>
      <apiname>Achievement_1</apiname>
      <achieved>1</achieved>
      <name>Written in the Clouds</name>
      <description/>
}
    XMLDoc.LoadFromFile(TempPath + PlayerAchievements);
    XMLDoc.Active := TRUE;
    Root := XMLDoc.DocumentElement;
    Nodes := Root.ChildNodes.Count;
    if Nodes <> 3 then
      Return := Root.ChildNodes.Nodes['success'].Text
    else
      Return := 'false';
    if Return = 'false' then
    begin
      DoneAchievements.Visible := FALSE;
      GetPlayerAchievementsGrid.Visible := FALSE;
      Exit;
    end
    else
    if Return = 'true' then
    begin
      DoneAchievements.Visible := TRUE;
      GetPlayerAchievementsGrid.Visible := TRUE;
    end;
    XMLAchievements := Root.ChildNodes.Nodes['achievements']; //

    GetPlayerAchievementsGrid.RowCount := XMLAchievements.ChildNodes.Count + 1;
    for I := 1 to XMLAchievements.ChildNodes.Count do
    begin
      Application.ProcessMessages();
      GetPlayerAchievementsGrid.Cells[0, i] := IntToStr(i);
    end;
    AllAchiv := XMLAchievements.ChildNodes.Count;

    ConnectProgress.Max := XMLAchievements.ChildNodes.Count - 1;
    ConnectProgress.Position := 5;
    for i := 0 to XMLAchievements.ChildNodes.Count - 1 do
    begin
      ConnectProgress.Position := i;
      Application.ProcessMessages();
      XMLAchievement := XMLAchievements.ChildNodes.Nodes[i];
      GetPlayerAchievementsGrid.Cells[1, i + 1] := XMLAchievement.ChildNodes.Nodes['apiname'].Text;
      GetPlayerAchievementsGrid.Cells[2, i + 1] := XMLAchievement.ChildNodes.Nodes['name'].Text;
      if XMLAchievement.ChildNodes.Nodes['achieved'].Text = '1' then
      begin
        inc(DoneAchiv);
        GetPlayerAchievementsGrid.Cells[3, i + 1] := '  Выполнено';
      end
      else
      if XMLAchievement.ChildNodes.Nodes['achieved'].Text = '0' then
        GetPlayerAchievementsGrid.Cells[3, i + 1] := '  Не выполнено';
      GetPlayerAchievementsGrid.Cells[4, i + 1] := XMLAchievement.ChildNodes.Nodes['description'].Text;

      DoneAchievements.Text := GamesList.Items[GamesList.ItemIndex] + '. Всего достижений: ' + IntToStr(AllAchiv) + '; Выполнено: ' + IntToStr(DoneAchiv) + '; Процент: ' + IntToStr(Round(100 * DoneAchiv/AllAchiv)) + '%';
      {GetPlayerAchievementsGrid.Cells[2, i + 1] := XMLMessage.ChildNodes.Nodes['name'].Text;
      //GetPlayerAchievementsGrid.Cells[3, i + 1] := XMLMessage.ChildNodes.Nodes['playtime_2weeks'].Text;
      if XMLMessage.ChildNodes.Nodes['playtime_forever'].Text = '' then
        SteamBuysGrid.Cells[3, i + 1] := '0'
      else
        SteamBuysGrid.Cells[3, i + 1] := XMLMessage.ChildNodes.Nodes['playtime_forever'].Text;
      SteamBuysGrid.Cells[4, i + 1] := XMLMessage.ChildNodes.Nodes['img_icon_url'].Text;
      //SteamBuysGrid.Cells[0, i] := XMLMessage.ChildNodes.Nodes['img_logo_url'].Text;
      }
    //Screen.Cursor := crArrow;
    end;
  end
  else
  begin
    DoneAchievements.Visible := FALSE;
    GetPlayerAchievementsGrid.Visible := FALSE;
    //Screen.Cursor := crArrow;
  end;

end;

procedure TMainSteamHelperForm.GetPlayerAchievementsClick(Sender: TObject);
var LoadURL: String;
    Node, Root, XMLGames, XMLMessage: IXMLNode;
    GamesCount, Return: String;
    i, j: integer;
begin
  GamesList.Clear;
  //Screen.Cursor := crHourGlass;//Screen.Cursor := crArrow;
  GetPlayerAchievementsGrid.Refresh;
  SetLength(GamesIDs, 0);
  LoadURL := 'http://api.steampowered.com/IPlayerService/GetOwnedGames/v1/?key=' + SteamKey + '&steamid=' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'steamid') + '&include_appinfo=1&format=xml';
  if DownloadFile(LoadURL, TempPath + PlayerOwnedGames) then
  begin
    //MemoHelp.Lines.LoadFromFile(TempPath + UserXML);
    NewXMLFile(TempPath + PlayerOwnedGames);

    XMLDoc.LoadFromFile(TempPath + PlayerOwnedGames);
    XMLDoc.Active := TRUE;
    Root := XMLDoc.DocumentElement;
    GamesCount := Root.ChildNodes.Nodes['game_count'].Text; //<game_count>
    SetLength(GamesIDs, StrToInt(GamesCount));
    XMLGames := Root.ChildNodes.Nodes[1]; //
{
    for I := 1 to SteamBuysGrid.RowCount do
    begin
      Application.ProcessMessages();
      SteamBuysGrid.Cells[0, i] := IntToStr(i);
    end;
}
    ConnectProgress.Max := XMLGames.ChildNodes.Count - 1;
    ConnectProgress.Position := 5;
    for i := 0 to XMLGames.ChildNodes.Count - 1 do
    begin
      if DownloadFiles then
      begin
        ConnectProgress.Position := i;
        Application.ProcessMessages();
        XMLMessage := XMLGames.ChildNodes.Nodes[i];
        GamesIDs[i] := StrToInt(XMLMessage.ChildNodes.Nodes['appid'].Text);
        GamesList.Items.Add(XMLMessage.ChildNodes.Nodes['name'].Text);
      end
      else
        break;
      {SteamBuysGrid.Cells[2, i + 1] := XMLMessage.ChildNodes.Nodes['name'].Text;
      //SteamBuysGrid.Cells[3, i + 1] := XMLMessage.ChildNodes.Nodes['playtime_2weeks'].Text;
      if XMLMessage.ChildNodes.Nodes['playtime_forever'].Text = '' then
        SteamBuysGrid.Cells[3, i + 1] := '0'
      else
        SteamBuysGrid.Cells[3, i + 1] := XMLMessage.ChildNodes.Nodes['playtime_forever'].Text;
      SteamBuysGrid.Cells[4, i + 1] := XMLMessage.ChildNodes.Nodes['img_icon_url'].Text;
      //SteamBuysGrid.Cells[0, i] := XMLMessage.ChildNodes.Nodes['img_logo_url'].Text;
      }
    end;
    //Screen.Cursor := crArrow;
    {SetUserAvatar(CheckImage, XMLDoc, TempPath + PlayerOwnedGames, TempPath + UserAvatar);
    ConnectProgress.Position := 4;
    CheckUserName.Text :=  GetXMLPlayerSummariesByNode(XMLDoc, TempPath + PlayerOwnedGames, 'personaname');
    ConnectProgress.Position := 5;
    CheckUserLVL.Text := GetUserLVL(XMLDoc, UserID.Text);
    CheckLastOnline.Text := DateToStr(UnixToDateTime(Cardinal(StrToInt(GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'lastlogoff'))), FALSE));
    ConnectProgress.Position := 6;}

  end
  else
  begin
    ShowMessage('Не удалось совершить авторизацию');
    //Screen.Cursor := crArrow;
  end;
end;

procedure TMainSteamHelperForm.GetPlayerAchievementsGridClick(Sender: TObject);
begin
  WatchStatus.Visible := FALSE;
  WatchDOta2.Visible := FALSE;
end;

procedure TMainSteamHelperForm.GetPlayerAchievementsGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if Pos('Выполнено' ,GetPlayerAchievementsGrid.Cells[ACol,ARow]) > 0 then GetPlayerAchievementsGrid.Canvas.Brush.Color:= clMoneyGreen;
  GetPlayerAchievementsGrid.Canvas.FillRect(Rect);
  GetPlayerAchievementsGrid.Canvas.TextOut(Rect.Left+2, Rect.Top+2, GetPlayerAchievementsGrid.Cells[ACol, ARow]);
end;

procedure TMainSteamHelperForm.GetPlayerAchievementsGridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  GridSelection := GetPlayerAchievementsGrid.Cells[ACol, ARow];
  GetPlayerAchievements.Hint := GridSelection;
end;

procedure TMainSteamHelperForm.HeroOrIDFindTextChange(Sender: TObject);
var i: integer;
begin
//SteamAppsGrid.Cells[1, i + 1] := XMLApp.ChildNodes.Nodes['appid'].Text;
//SteamAppsGrid.Cells[2, i + 1] := XMLApp.ChildNodes.Nodes['name'].Text;
  case HeroOrIDFindOption.ItemIndex of
    0:
      begin
        for I := 0 to ShowAllHeroesGrid.RowCount - 1 do
        begin
          if Pos(HeroOrIDFindText.Text, ShowAllHeroesGrid.Cells[1, i + 1]) > 0 then
          begin
            ResultOfHeroOrIDFind.Text := ShowAllHeroesGrid.Cells[4, i + 1];
            exit;
          end;
        end;
      end;

    1:
      begin
        for I := 0 to ShowAllHeroesGrid.RowCount - 1 do
        begin
          if Pos(HeroOrIDFindText.Text, ShowAllHeroesGrid.Cells[4, i + 1]) > 0 then
          begin
            ResultOfHeroOrIDFind.Text := ShowAllHeroesGrid.Cells[1, i + 1];
            exit;
          end;
        end;
      end;

    else
      ResultOfHeroOrIDFind.Text := '?';
  end;
end;

procedure TMainSteamHelperForm.UserLinkClick(Sender: TObject);
begin
  LogInByLinkRadio.Checked := TRUE;
  LogInByIDRadio.Checked := FALSE;
end;

procedure TMainSteamHelperForm.VisibleMatchCountChange(Sender: TObject);
begin
  MatchCountLabel.Caption :=  'Количество матчей = ' + IntToStr(VisibleMatchCount.Position);
end;

procedure TMainSteamHelperForm.WatchDota2Click(Sender: TObject);
begin
  LocalDotaNotification1UserID.Text := WatchStatusStr;
  LocalDotaNotificationCheckBox.Checked := TRUE;
  LocalDotaNotificationCheckBoxClick(nil);

  LocalNotificationSaveButtonClick(nil);
end;

procedure TMainSteamHelperForm.WatchStatusClick(Sender: TObject);
begin
  LocalNotification1UserID.Text := WatchStatusStr;
  SteamHelperNotificationCheckBox.Checked := TRUE;
  LocalNotification1UserIDCheckBox.Checked := TRUE;
  SteamHelperNotificationCheckBoxClick(nil);
  LocalNotification1UserIDCheckBoxClick(nil);

  LocalNotificationSaveButtonClick(nil);
end;

procedure TMainSteamHelperForm.PublicGridPopupCopyClick(Sender: TObject);
begin
  //ShowMessage(PublicDataGridSelection);
  Clipboard.SetTextBuf(PChar(GridSelection));
end;

procedure TMainSteamHelperForm.MailAllCheckClick(Sender: TObject);
begin
  MailFriendsCheckBox.Checked := TRUE;
  MailSteamCheckBox.Checked := TRUE;
  MailDota2CheckBox.Checked := TRUE;
end;

procedure TMainSteamHelperForm.MailCheckButtonClick(Sender: TObject);
var S: String;
begin
  RegMail.WriteString('MailAdress', '');
  MaillNotificationStatusLabel.Caption := 'Не подтверждён';
  MaillNotificationStatusLabel.Font.Color := clRed;

  Randomize;
  MailCheckSendPassword := Random(40000) + Random(3000) + Random(200) + Random(10);

  S := 'Пароль подтверждения: ' + IntToStr(MailCheckSendPassword);
  if SendMail(Trim(MaillNotificationUserMail.Text), 'Подтверждение почтового ящика', S) then
  begin
    ShowMessage('Сообщение успешно отправлено');
  end
  else
  begin
    ShowMessage('Не удалось отправить сообщение');
  end;
  //MaillNotificationUserMail
end;

procedure TMainSteamHelperForm.MailFriendsCheckBoxClick(Sender: TObject);
begin
  IniFile.WriteBool('Mail','MailFriends', MailFriendsCheckBox.Checked);
end;

procedure TMainSteamHelperForm.MailOffCheckClick(Sender: TObject);
begin
  MailFriendsCheckBox.Checked := FALSE;
  MailSteamCheckBox.Checked := FALSE;
  MailDota2CheckBox.Checked := FALSE
end;

procedure TMainSteamHelperForm.MailSteamCheckBoxClick(Sender: TObject);
begin
  IniFile.WriteBool('Mail','MailSteam', MailSteamCheckBox.Checked);
end;

procedure TMainSteamHelperForm.MailDota2CheckBoxClick(Sender: TObject);
begin
  IniFile.WriteBool('Mail','MailDota2', MailDota2CheckBox.Checked);
end;

procedure TMainSteamHelperForm.MailSaveButtonClick(Sender: TObject);
begin
  IniFile.WriteString('Mail','MailFriendsText', MailFriendsEdit.Text);
  IniFile.WriteString('Mail','MailSteamText', MailSteamEdit.Text);
  IniFile.WriteString('Mail','MailDota2Text', MailDotaEdit.Text);
end;

procedure TMainSteamHelperForm.MainMenuAutoLoadClick(Sender: TObject);
var RegOptions: TRegistry;
begin
  RegOptions := TRegistry.Create;
  RegOptions.RootKey := HKEY_CURRENT_USER;
  RegOptions.OpenKey('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run', false);
  if not MainMenuAutoLoad.Checked then
  begin
    MainMenuAutoLoad.Checked := TRUE;
    RegOptions.WriteString(MainSteamHelperForm.Caption, Application.ExeName);
  end
  else
  begin
    MainMenuAutoLoad.Checked := FALSE;
    RegOptions.DeleteValue(MainSteamHelperForm.Caption);
  end;
  IniFile.WriteBool('Options', 'Autoload', MainMenuAutoLoad.Checked);
  RegOptions.Free;
end;

procedure TMainSteamHelperForm.MainMenuExitClick(Sender: TObject);
begin
  MainSteamHelperForm.Close;
end;

procedure TMainSteamHelperForm.MainMenuHideClick(Sender: TObject);
begin
  MainSteamHelperForm.Hide;
end;

procedure TMainSteamHelperForm.MainMenuToTrayClick(Sender: TObject);
begin
  if not MainMenuToTray.Checked then
  begin
    MainMenuToTray.Checked := TRUE;
  end
  else
  begin
    MainMenuToTray.Checked := FALSE;
  end;
  IniFile.WriteBool('Options', 'Tray', MainMenuToTray.Checked);
end;

procedure TMainSteamHelperForm.SteamNewAppTimerTimer(Sender: TObject);
var AppNotification: String;
begin
  //УВЕДОМЛЕНИЕ ЛОКАЛЬНОЕ ТОВАР СТИМ
  if LocalSteamNotificationCheckBox.Checked then
  begin
    if DownloadFile('http://api.steampowered.com/ISteamApps/GetAppList/v2?format=xml', TempPath + SteamAppsList) then
    begin
      ShowApps;
    end;
    if ConnectProgress.Position <> ConnectProgress.Max then
      Sleep(5000);
    NowSteamAppCount := SteamAppsGrid.RowCount;
    if LastSteamAppCount <> NowSteamAppCount then
    begin
      AppNotification := Trim(LocalNotificationNewAppCheckBoxTemplate.Text);
      AppNotification := ReplaceNotification(AppNotification, '%Время%', TimeToStr(Time));
      AppNotification := ReplaceNotification(AppNotification, '%Товар%', SteamAppsGrid.Cells[2, SteamAppsGrid.RowCount - 1]);
      //%Время% В Steam появился %Товар%
      SaveLastSteamAppCount := LastSteamAppCount;
      LastSteamAppCount := NowSteamAppCount;
      if SaveLastSteamAppCount <> 0 then
      begin
        Log(AppNotification, 1);

        if SmsSteamCheckBox.Checked then
          SendSms(AppNotification);

        if MailSteamCheckBox.Checked then
          SendMailNotification(MaillNotificationUserMail.Text, MailSteamEdit.Text, AppNotification);

        ShowNotification(AppNotification);
      end;
    end;
  end;
end;

procedure TMainSteamHelperForm.SteamLocalNotification(var NotificationTemplate: String; AppIndexInSteamAppGrid: integer);
var NowXMLDoc: IXMLDocument;
    Node, LastRoot, NowRoot, XMLLastDailyDeal, XMLNowDailyDeal: IXMLNode;
begin
  NowXMLDoc := NewXMLDocument;
  NowXMLDoc.LoadFromFile(TempDailyDealPath + 'NowDailyDeal.xml');
  NowXMLDoc.Active := TRUE;
  LastRoot := NowXMLDoc.DocumentElement;
  XMLNowDailyDeal := LastRoot.ChildNodes.Nodes[0];
  NotificationTemplate := ReplaceNotification(NotificationTemplate, '%Время%', TimeToStr(Time));
  NotificationTemplate := ReplaceNotification(NotificationTemplate, '%Скидка%', XMLNowDailyDeal.ChildNodes.Nodes['discount_pct'].Text);
  //TOVAR
  if AppIndexInSteamAppGrid = 0 then
    NotificationTemplate := ReplaceNotification(NotificationTemplate, '%Товар%', '*Название не найдено :(*')
  else
    NotificationTemplate := ReplaceNotification(NotificationTemplate, '%Товар%', SteamAppsGrid.Cells[2, AppIndexInSteamAppGrid + 1]);
  NotificationTemplate := ReplaceNotification(NotificationTemplate, '%ЦенаБезСкидки%', XMLNowDailyDeal.ChildNodes.Nodes['discount_original_price'].Text);
  NotificationTemplate := ReplaceNotification(NotificationTemplate, '%ЦенаСоСкидкой%', XMLNowDailyDeal.ChildNodes.Nodes['discount_final_price'].Text);
end;

procedure TMainSteamHelperForm.GoToURL(Sender: TObject);
var LastXMLDoc, NowXMLDoc: IXMLDocument;
    Node, LastRoot, NowRoot, XMLLastDailyDeal, XMLNowDailyDeal: IXMLNode;
begin
  NowXMLDoc := NewXMLDocument;
  NowXMLDoc.LoadFromFile(TempDailyDealPath + 'NowDailyDeal.xml');
  NowXMLDoc.Active := TRUE;
  LastRoot := NowXMLDoc.DocumentElement;
  XMLNowDailyDeal := LastRoot.ChildNodes.Nodes[0];
  ShellExecute(0, 'open', PWideChar(WideString(XMLNowDailyDeal.ChildNodes.Nodes['href'].Text)), '', '', 1);//открываем ссылку и делаем окно активным
  //ShowWindow(GetForegroundWindow, SW_PARENTOPENING)//разворачиваем активное окно
end;

procedure TMainSteamHelperForm.DealTimerTimer(Sender: TObject);
var LastXMLDoc, NowXMLDoc: IXMLDocument;
    Node, LastRoot, NowRoot, XMLLastDailyDeal, XMLNowDailyDeal: IXMLNode;
    LastAppID, NowAppID, DailyDealNotification, DailyDealCaption: String;
    i, AppIndex, buttonSelected: integer;
    DailyDealForm: TForm;
    DailyDealImage: TImage;
    DailyDealPicture: TPicture;
    DailyDealLabel: TLabel;
    DailyDealMemo: TMemo;
begin
  if LocalDealNotificationCheckBox.Checked then
  begin
    if GetDailyDeal then
    begin
{
<result>
  <dailydeal>
    <appid>234710</appid>
    <href>
      http://store.steampowered.com/app/234710/?snr=1_4_4__43
    </href>
    <src>
      http://cdn3.steampowered.com/v/gfx/apps/234710/header_292x136.jpg?t=1373561383
    </src>
    <discount_pct>-51%</discount_pct>
    <discount_original_price>99</discount_original_price>
    <discount_final_price>49</discount_final_price>
  </dailydeal>
</result>
}
      LastXMLDoc := NewXMLDocument;
      LastXMLDoc.LoadFromFile(TempDailyDealPath + 'LastDailyDeal.xml');
      LastXMLDoc.Active := TRUE;
      LastRoot := LastXMLDoc.DocumentElement;
      XMLLastDailyDeal := LastRoot.ChildNodes.Nodes[0];
      //LastAppID := ;

      NowXMLDoc := NewXMLDocument;
      NowXMLDoc.LoadFromFile(TempDailyDealPath + 'NowDailyDeal.xml');
      NowXMLDoc.Active := TRUE;
      LastRoot := NowXMLDoc.DocumentElement;
      XMLNowDailyDeal := LastRoot.ChildNodes.Nodes[0];
      //NowAppID := ;
      ShowApps;

      for I := 0 to SteamAppsGrid.RowCount - 1 do
      begin
        if  XMLNowDailyDeal.ChildNodes.Nodes['appid'].Text = SteamAppsGrid.Cells[1, i + 1] then
        begin
          AppIndex := i;
          break;
        end;
      end;

      DailyDealNotification := Trim(LocalDealNotificationTemplate.Text);
      SteamLocalNotification(DailyDealNotification, AppIndex);

      if XMLLastDailyDeal.ChildNodes.Nodes['appid'].Text <> XMLNowDailyDeal.ChildNodes.Nodes['appid'].Text then
      begin
        CopyFile(PWideChar(WideString(TempDailyDealPath + 'NowDailyDeal.xml')), PWideChar(WideString(TempDailyDealPath + 'LastDailyDeal.xml')), FALSE);// FALSE - перезапись

        //LocalDealNotificationTemplate
        //%Время% В Steam скидка %Скидка% на игру %Товар%! Вместо %ЦенаБезСкидки% она стоит %ЦенаСоСкидкой%

        LocalDealNotificationText.Text := DailyDealNotification;

        Log(DailyDealNotification, 1);

        if SmsSteamCheckBox.Checked then
          SendSms(DailyDealNotification);

        if MailSteamCheckBox.Checked then
          SendMailNotification(MaillNotificationUserMail.Text, MailSteamEdit.Text, DailyDealNotification);

        //КАРТИНКА
        if DownloadFile(XMLNowDailyDeal.ChildNodes.Nodes['src'].Text, TempDailyDealPath + DailyDealPic) then
        begin
          DailyDealCaption := LocalDealFormNotificationTemplate.Text;
          SteamLocalNotification(DailyDealCaption, AppIndex);

          if LocalNotificationShowMessage.Checked then
            DrawDealNotification(DailyDealCaption, DailyDealNotification);

          DeleteFile(TempDailyDealPath + DailyDealPic);
        end
        else
        begin
          //ShowMessage(DailyDealNotification);
          if LocalNotificationShowMessage.Checked then
          begin
            buttonSelected := MessageDlg(DailyDealNotification + '. Перейти на сайт?', mtConfirmation, mbOKCancel, 0);
            if buttonSelected = mrOK then GoToURL(nil);
          end;
        end;

      if LocalNotificationBaloonHint.Checked then
        TrayIconNotification(DailyDealNotification);

      end
      else
      begin
        LocalDealNotificationText.Text := DailyDealNotification;
      end;
    end
    else
    begin
      Log('Не удалось получить информацию о предложении дня', 1);
    end;
  end;
end;

procedure TMainSteamHelperForm.DeleteLogsClick(Sender: TObject);
begin
  if MessageDlg('Точно?', mtWarning, mbOKCancel, 0) = mrOK then
    DeleteFilesFromPath(LogPath);
end;

procedure TMainSteamHelperForm.LocalDotaNotificationCheckBoxClick(
  Sender: TObject);
begin
  DotaTimer.Interval := LocalDotaNotificationRefresh.Position * 60000;
  if LocalDotaNotificationCheckBox.Checked then
  begin
    //LocalNotificationSteamGroupBox.Visible := TRUE;
    DotaTimer.Enabled := TRUE;
    IniFile.WriteBool('DotaNotification','LocalDotaNotification', LocalDotaNotificationCheckBox.Checked);
  end
  else
  begin
    //LocalNotificationSteamGroupBox.Visible := FALSE;
    DotaTimer.Enabled := FALSE;
    IniFile.WriteBool('DotaNotification','LocalDotaNotification', LocalDotaNotificationCheckBox.Checked);
  end;

  RefreshStatusBar;
end;

procedure TMainSteamHelperForm.LocalDotaNotificationRefreshChange(Sender: TObject);
begin
  DotaTimer.Interval := LocalDotaNotificationRefresh.Position * 60000;
  LocalDotaNotificationRefreshText.Caption := IntToStr(LocalDotaNotificationRefresh.Position) + ' минут';

  IniFile.WriteInteger('DotaNotification','LocalDotaNotificationRefresh', LocalDotaNotificationRefresh.Position);

  RefreshStatusBar;
end;

procedure TMainSteamHelperForm.LocalHeroNotificationCheckBoxClick(
  Sender: TObject);
begin
  if LocalHeroNotificationCheckBox.Checked then
  begin
    IniFile.WriteBool('DotaNotification','LocalHeroNotification', LocalHeroNotificationCheckBox.Checked);
  end
  else
  begin
    IniFile.WriteBool('DotaNotification','LocalHeroNotification', LocalHeroNotificationCheckBox.Checked);
  end;

  RefreshStatusBar;
end;

procedure TMainSteamHelperForm.NewHeroTimerTimer(Sender: TObject);
var LoadURL, HeroNotification: String;
begin
  //УВЕДОМЛЕНИЕ ЛОКАЛЬНОЕ ТОВАР СТИМ
  if LocalHeroNotificationCheckBox.Checked then
  begin
    LoadURL := 'http://api.steampowered.com/IEconDOTA2_570/GetHeroes/v1/?key=' + SteamKey + '&format=xml&language=us';
    if DownloadFile(LoadURL, TempDotaPath + DotaHeroes) then
    begin
      ShowHeroes;
    end;
    if ConnectProgress.Position <> ConnectProgress.Max then
      Sleep(5000);

    if not FileExists(TempDotaPath + LastHeroFile) then
    begin
      StringToTextFile(IntToStr(LastHeroCount), TempDotaPath + LastHeroFile);
    end;

    if not FileExists(TempDotaPath + NowHeroFile) then
    begin
      StringToTextFile(IntToStr(NowHeroCount), TempDotaPath + NowHeroFile);
    end;

    if TextFileToString(TempDotaPath + NowHeroFile) = '' then
    begin
      NowHeroCount := ShowAllHeroesGrid.RowCount;
      StringToTextFile(IntToStr(NowHeroCount), TempDotaPath + NowHeroFile);
    end;

    NowHeroCount := ShowAllHeroesGrid.RowCount;

    LastHeroCount := StrToInt(TextFileToString(TempDotaPath + LastHeroFile));
    NowHeroCount := StrToInt(TextFileToString(TempDotaPath + NowHeroFile));
    if LastHeroCount <> NowHeroCount then
    begin
      HeroNotification := Trim(LocalHeroNotificationTemplate.Text);
      HeroNotification := ReplaceNotification(HeroNotification, '%Время%', TimeToStr(Time));
      HeroNotification := ReplaceNotification(HeroNotification, '%Герой%', ShowAllHeroesGrid.Cells[4, ShowAllHeroesGrid.RowCount - 1]);
      //%Время% В Dota 2 появился (появится) герой %Герой%
      SaveLastSteamAppCount := LastHeroCount;
      LastHeroCount := NowHeroCount;
      StringToTextFile(IntToStr(NowHeroCount), TempDotaPath + LastHeroFile);
      if SaveLastSteamAppCount <> 0 then
      begin
        Log(HeroNotification, 2);

        if SmsDotaCheckBox.Checked then
          SendSms(HeroNotification);

        if MailDota2CheckBox.Checked then
          SendMailNotification(MaillNotificationUserMail.Text, MailDotaEdit.Text, HeroNotification);

        ShowNotification(HeroNotification);
      end;
    end;
  end;
end;

procedure TMainSteamHelperForm.NotificationOffAllClick(Sender: TObject);
begin
  SteamHelperNotificationCheckBox.Checked := FALSE;
  LocalNotification1UserIDCheckBox.Checked := FALSE;
  LocalNotificationPlayGameCheckBox.Checked := FALSE;
  LocalSteamNotificationCheckBox.Checked := FALSE;
  LocalDealNotificationCheckBox.Checked := FALSE;
  LocalDotaNotificationCheckBox.Checked := FALSE;
  LocalHeroNotificationCheckBox.Checked := FALSE;

  MailFriendsCheckBox.Checked := FALSE;
  MailSteamCheckBox.Checked := FALSE;
  MailDota2CheckBox.Checked := FALSE;

  SmsFriendsCheckBox.Checked := FALSE;
  SmsSteamCheckBox.Checked := FALSE;
  SmsDotaCheckBox.Checked := FALSE;
end;

procedure TMainSteamHelperForm.NotificationOnAllClick(Sender: TObject);
begin
  SteamHelperNotificationCheckBox.Checked := TRUE;
  LocalNotification1UserIDCheckBox.Checked := TRUE;
  LocalNotificationPlayGameCheckBox.Checked := TRUE;
  LocalSteamNotificationCheckBox.Checked := TRUE;
  LocalDealNotificationCheckBox.Checked := TRUE;
  LocalDotaNotificationCheckBox.Checked := TRUE;
  LocalHeroNotificationCheckBox.Checked := TRUE;

  if MailNotification.Enabled then
  begin
    MailFriendsCheckBox.Checked := TRUE;
    MailSteamCheckBox.Checked := TRUE;
    MailDota2CheckBox.Checked := TRUE;
  end;

  if SMSNotification.Enabled then
  begin
    SmsFriendsCheckBox.Checked := TRUE;
    SmsSteamCheckBox.Checked := TRUE;
    SmsDotaCheckBox.Checked := TRUE;
  end;
end;

procedure TMainSteamHelperForm.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  MainSteamHelperForm.Caption := IntToStr(Node.AbsoluteIndex);
end;

procedure TMainSteamHelperForm.UserIDClick(Sender: TObject);
begin
  LogInByIDRadio.Checked := TRUE;
  LogInByLinkRadio.Checked := FALSE;
end;

procedure TMainSteamHelperForm.UserInfoPageChange(Sender: TObject);
begin
  DownloadFiles := TRUE;
  WatchStatus.Visible := FALSE;
  WatchDOta2.Visible := FALSE;
end;

procedure TMainSteamHelperForm.PageControl1Change(Sender: TObject);
begin
  DownloadFiles := TRUE;
end;

procedure TMainSteamHelperForm.PrivateDataGridClick(Sender: TObject);
begin
  WatchStatus.Visible := FALSE;
  WatchDOta2.Visible := FALSE;
end;

procedure TMainSteamHelperForm.PrivateDataGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  {условие : в какой ячейке рисовать}
  if ((ACol = 1)and(ARow=7)) then
    FlagsList.Draw(PrivateDataGrid.Canvas, Rect.Left + 10, Rect.Top + 4, FlagsListBox.Items.IndexOf(GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'loccountrycode')));
{1- индекс картинки в ImageList-е}
end;

procedure TMainSteamHelperForm.PrivateDataGridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  GridSelection := PrivateDataGrid.Cells[ACol, ARow];
  PrivateDataGrid.Hint := GridSelection;
end;

procedure TMainSteamHelperForm.PublicDataGridClick(Sender: TObject);
begin
  WatchStatus.Visible := FALSE;
  WatchDOta2.Visible := FALSE;
end;

procedure TMainSteamHelperForm.PublicDataGridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  GridSelection := PublicDataGrid.Cells[ACol, ARow];
  PublicDataGrid.Hint := GridSelection;
end;

procedure TMainSteamHelperForm.ChangeDownloadLogosPathClick(Sender: TObject);
var Dir: String;
begin
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Pictures') then
    CreateDir(ExtractFilePath(Application.ExeName) + 'Pictures');
  Dir:= ExtractFilePath(Application.ExeName) + 'Pictures';
  SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate], 0);
  DownloadLogosPath.Text := Dir;
end;

procedure TMainSteamHelperForm.CheckUserNoClick(Sender: TObject);
begin
  CheckPanel.Visible := FALSE;
end;

function SetCommunityVisibilityState(XMLDoc: TXMLDocument): String;
var State: integer;
begin
{
1 - the profile is not visible to you (Private, Friends Only, etc),
3 - the profile is "Public", and the data is visible
}
  State := StrToInt(GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'communityvisibilitystate'));
    case State of
    1:
      begin
        Result := 'Приватность установлена';
      end;
    3:
      begin
        Result := 'Приватность не установлена';
      end;
  end;
end;

function SetProfileState(XMLDoc: TXMLDocument): String;
var State: integer;
begin
{
If set, indicates the user has a community profile configured (will be set to '1')
}
  Result := 'Профиль не настроен';
  State := StrToInt(GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'profilestate'));
  if State = 1 then
    begin
      Result := 'Профиль настроен';
    end;
end;

procedure TMainSteamHelperForm.CheckUserYesClick(Sender: TObject);
var State: String;
begin
  IniFile.WriteString('UserInfo','User64ID', UserID.Text);
  IniFile.WriteString('UserInfo','UserLink', UserLink.Text);
{
  //PUBLIC DATA
  PublicDataGrid.Cells[0, 0] := '64-битный SteamID';  //64steamid
  PublicDataGrid.Cells[0, 1] := '32-битный SteamID';  //32steamid
  PublicDataGrid.Cells[0, 2] := 'Ник';  //personaname
  PublicDataGrid.Cells[0, 3] := 'Уровень';  //GetUserLVL(XMLDoc, UserID.Text);
  PublicDataGrid.Cells[0, 4] := 'Профиль';  //profileurl
  PublicDataGrid.Cells[0, 5] := 'Статус'; //personastate
  PublicDataGrid.Cells[0, 6] := 'Приватность';  //communityvisibilitystate
  PublicDataGrid.Cells[0, 7] := 'Статус профиля'; //profilestate
  PublicDataGrid.Cells[0, 8] := 'Был в онлайн'; //lastlogoff
  PublicDataGrid.Cells[0, 9] := 'Аватар (184x184)'; //avatarfull
  PublicDataGrid.Cells[0, 10] := 'Аватар (64x64)'; //avatarmedium
  PublicDataGrid.Cells[0, 11] := 'Аватар (32x32)'; //avatar

  //PRIVATE DATA
  PrivateDataGrid.Cells[0, 0] := 'Имя';  //realname
  PrivateDataGrid.Cells[0, 1] := 'ID основной группы';  //primaryclanid
  PrivateDataGrid.Cells[0, 2] := 'Аккуант создан';  //timecreated
  PrivateDataGrid.Cells[0, 3] := 'ID игры';  //gameid
  PrivateDataGrid.Cells[0, 4] := 'Название игры';  //gameextrainfo
  PrivateDataGrid.Cells[0, 5] := 'IP сервера игры'; //gameserverip
  PrivateDataGrid.Cells[0, 6] := 'Страна';  //loccountrycode
}
  //Screen.Cursor := crHourGlass;//Screen.Cursor := crArrow;

  PublicDataGrid.Refresh;
  PrivateDataGrid.Refresh;
  SteamBuysGrid.Refresh;
  FriendsDataGrid.Refresh;
  GetPlayerAchievementsGrid.Refresh;

  ConnectProgress.Max := 3;
  ConnectProgress.Position := 1;
  //ЗАПОЛНЕНИЕ ПУБЛИЧНЫХ ДАННЫХ
  PublicDataGrid.Cells[1, 1] := ' ' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'steamid');
  PublicDataGrid.Cells[1, 2] := ' ' + FloatToStr(StrToFloat(PublicDataGrid.Cells[1, 1]) - 76561197960265728);//Float потому что число большое :(
  PublicDataGrid.Cells[1, 3] := ' ' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'personaname');
  PublicDataGrid.Cells[1, 4] := ' ' + GetUserLVL(XMLDoc, UserID.Text);
  PublicDataGrid.Cells[1, 5] := ' ' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'profileurl');
  PublicDataGrid.Cells[1, 6] := ' ' + SetPersonaState(XMLDoc, TempPath + UserXML);
  PublicDataGrid.Cells[1, 7] := ' ' + SetCommunityVisibilityState(XMLDoc);
  PublicDataGrid.Cells[1, 8] := ' ' + SetProfileState(XMLDoc);
  PublicDataGrid.Cells[1, 9] := ' ' + DateTimeToStr(UnixToDateTime(Cardinal(StrToInt(GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'lastlogoff'))), FALSE));
  PublicDataGrid.Cells[1, 10] := ' ' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'avatarfull');
  PublicDataGrid.Cells[1, 11] := ' ' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'avatarmedium');
  PublicDataGrid.Cells[1, 12] := ' ' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'avatar');
  ConnectProgress.Position := 2;

  //ЗАПОЛНЕНИЕ ПРИВАТНЫХ ДАННЫХ
  PrivateDataGrid.Cells[1, 1] := ' ' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'realname');
  PrivateDataGrid.Cells[1, 2] := ' ' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'primaryclanid');
  PrivateDataGrid.Cells[1, 3] := ' ' + DateTimeToStr(UnixToDateTime(Cardinal(StrToInt(GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'timecreated'))), FALSE));
  PrivateDataGrid.Cells[1, 4] := ' ' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'gameid');
  PrivateDataGrid.Cells[1, 5] := ' ' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'gameextrainfo');
  PrivateDataGrid.Cells[1, 6] := ' ' + GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'gameserverip');
  State := GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'loccountrycode');
  if State <> '?' then
  begin
    if FlagsListBox.Items.IndexOf(State) > 0 then
      PrivateDataGrid.Cells[1, 7] := '           ' + State + ' (' + FlagsNamesListBox.Items[FlagsListBox.Items.IndexOf(State)] + ')';
  end;

  PrivateDataGrid.Refresh;
  ConnectProgress.Position := 3;

  SteamHelperPage.ActivePage := UserInfo;

  //Screen.Cursor := crArrow;
end;

function TMainSteamHelperForm.LoadDotaUserNameByID(SteamID: String): String;
var LoadURL: String;
begin
  LoadURL := 'http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v2/?key=' + SteamKey + '&steamids=' + SteamID + '&format=xml';

  if DownloadFile(LoadURL, TempDotaPath + UserXML) then
  begin
    NewXMLFile(TempDotaPath + UserXML);
    if not UserExist then
    begin
      Result := '?';
      exit;
    end
    else

    Result := GetXMLPlayerSummariesByNode(XMLDoc, TempDotaPath + UserXML, 'personaname');
  end
  else
  begin
    Result := '?';
  end;
end;

procedure TMainSteamHelperForm.LoadDotaUserInfoByID(SteamID: String);
var LoadURL: String;
begin
  LoadURL := 'http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v2/?key=' + SteamKey + '&steamids=' + SteamID + '&format=xml';
  ConnectProgress.Max := 6;
  ConnectProgress.Position := 1;
  if DownloadFile(LoadURL, TempDotaUsersPath + SteamID + '.xml') then
  begin
    ConnectProgress.Position := 2;
    //MemoHelp.Lines.LoadFromFile(TempPath + UserXML);
    NewXMLFile(TempDotaUsersPath + SteamID + '.xml');
    ConnectProgress.Position := 3;
    if not UserExist then
    begin
      ConnectProgress.State := pbsError;
      ShowMessage('Такого пользователя не существует');
      ConnectProgress.Position := 0;
      exit;
    end
    else
      ConnectProgress.State := pbsNormal;
    SetUserAvatar(CheckDotaImage, XMLDoc, TempDotaUsersPath + SteamID + '.xml', TempDotaUsersPath + SteamID + UserAvatar);
    ConnectProgress.Position := 4;
    CheckDotaUserName.Text :=  GetXMLPlayerSummariesByNode(XMLDoc, TempDotaUsersPath + SteamID + '.xml', 'personaname');
    ConnectProgress.Position := 5;
    CheckDotaLastOnline.Text := DateTimeToStr(UnixToDateTime(Cardinal(StrToInt(GetXMLPlayerSummariesByNode(XMLDoc, TempDotaUsersPath + SteamID + '.xml', 'lastlogoff'))), FALSE));
    ConnectProgress.Position := 6;

    DotaCheckGroup.Visible := TRUE;
    //Screen.Cursor := crHourGlass;
    //Screen.Cursor := crArrow;
  end
  else
  begin
    ShowMessage('Не удалось совершить авторизацию');
    //Screen.Cursor := crArrow;
  end;
end;

procedure TMainSteamHelperForm.LoadUserInfoByID(SteamID: String);
var LoadURL: String;
begin
  LoadURL := 'http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v2/?key=' + SteamKey + '&steamids=' + SteamID + '&format=xml';
  ConnectProgress.Max := 6;
  ConnectProgress.Position := 1;
  if DownloadFile(LoadURL, TempPath + UserXML) then
  begin
    ConnectProgress.Position := 2;
    //MemoHelp.Lines.LoadFromFile(TempPath + UserXML);
    NewXMLFile(TempPath + UserXML);
    ConnectProgress.Position := 3;
    if not UserExist then
    begin
      ConnectProgress.State := pbsError;
      ShowMessage('Такого пользователя не существует');
      ConnectProgress.Position := 0;
      exit;
    end
    else
      ConnectProgress.State := pbsNormal;
    SetUserAvatar(CheckImage, XMLDoc, TempPath + UserXML, TempPath + UserAvatar);
    ConnectProgress.Position := 4;
    CheckUserName.Text :=  GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'personaname');
    ConnectProgress.Position := 5;
    CheckUserLVL.Text := GetUserLVL(XMLDoc, UserID.Text);
    CheckLastOnline.Text := DateTimeToStr(UnixToDateTime(Cardinal(StrToInt(GetXMLPlayerSummariesByNode(XMLDoc, TempPath + UserXML, 'lastlogoff'))), FALSE));
    ConnectProgress.Position := 6;

    CheckPanel.Visible := TRUE;
    //Screen.Cursor := crHourGlass;
    //Screen.Cursor := crArrow;
  end
  else
  begin
    ShowMessage('Не удалось совершить авторизацию');
    //Screen.Cursor := crArrow;
  end;
end;

procedure TMainSteamHelperForm.LocaHeroNotificationRefreshChange(
  Sender: TObject);
begin
  NewHeroTimer.Interval := LocaHeroNotificationRefresh.Position * 3600000;
  LocalHeroNotificationRefreshText.Caption := IntToStr(LocaHeroNotificationRefresh.Position) + ' часов';

  IniFile.WriteInteger('DotaNotification','LocaHeroNotificationRefresh', LocaHeroNotificationRefresh.Position);

  RefreshStatusBar;
end;

procedure TMainSteamHelperForm.LocalAllCheckClick(Sender: TObject);
begin
  SteamHelperNotificationCheckBox.Checked := TRUE;
  LocalNotification1UserIDCheckBox.Checked := TRUE;
  LocalNotificationPlayGameCheckBox.Checked := TRUE;
  LocalSteamNotificationCheckBox.Checked := TRUE;
  LocalDealNotificationCheckBox.Checked := TRUE;
  LocalDotaNotificationCheckBox.Checked := TRUE;
  LocalHeroNotificationCheckBox.Checked := TRUE;
end;

procedure TMainSteamHelperForm.LocalDealNotificationCheckBoxClick(
  Sender: TObject);
begin
  DealTimer.Interval := LocalSteamNotificationRefresh.Position * 3600000;
  if LocalDealNotificationCheckBox.Checked then
  begin
    DealTimer.Enabled := TRUE;
    IniFile.WriteBool('SteamNotification','LocalDealNotification', LocalDealNotificationCheckBox.Checked);
  end
  else
  begin
    DealTimer.Enabled := FALSE;
    IniFile.WriteBool('SteamNotification','LocalDealNotification', LocalDealNotificationCheckBox.Checked);
  end;

  RefreshStatusBar;
end;

procedure TMainSteamHelperForm.LocalNotification1UserIDCheckBoxClick(
  Sender: TObject);
begin
  if LocalNotification1UserIDCheckBox.Checked then
  begin
    IniFile.WriteBool('FriendsNotification','LocalNotification1UserID', LocalNotification1UserIDCheckBox.Checked);
  end
  else
  begin
    IniFile.WriteBool('FriendsNotification','LocalNotification1UserID', LocalNotification1UserIDCheckBox.Checked);
  end;
  RefreshStatusBar
end;

procedure TMainSteamHelperForm.LocalNotificationBaloonHintClick(
  Sender: TObject);
begin
  if LocalNotificationBaloonHint.Checked then
  begin
    IniFile.WriteBool('LocalNotification','LocalNotificationBaloonHint', LocalNotificationBaloonHint.Checked);
  end
  else
  begin
    IniFile.WriteBool('LocalNotification','LocalNotificationBaloonHint', LocalNotificationBaloonHint.Checked);
  end;
end;

procedure TMainSteamHelperForm.LocalNotificationNewAppCheckBoxClick(
  Sender: TObject);
begin
  if LocalSteamNotificationCheckBox.Checked then
  begin
    SteamNewAppTimer.Enabled := TRUE;
  end
  else
  begin
    SteamNewAppTimer.Enabled := FALSE;
  end;
end;

procedure TMainSteamHelperForm.LocalNotificationPlayGameCheckBoxClick(
  Sender: TObject);
begin
  if LocalNotificationPlayGameCheckBox.Checked then
  begin
    IniFile.WriteBool('FriendsNotification','LocalNotificationPlayGame', LocalNotificationPlayGameCheckBox.Checked);
  end
  else
  begin
    IniFile.WriteBool('FriendsNotification','LocalNotificationPlayGame', LocalNotificationPlayGameCheckBox.Checked);
  end;
  RefreshStatusBar
end;

procedure TMainSteamHelperForm.LocalNotificationRefreshChange(Sender: TObject);
begin
  LocalNotificationTimer.Interval := LocalNotificationRefresh.Position * 60000;
  LocalNotificationRefreshText.Caption := IntToStr(LocalNotificationRefresh.Position) + ' минут';

  IniFile.WriteInteger('FriendsNotification','LocalNotificationRefresh', LocalNotificationRefresh.Position);

  RefreshStatusBar;
end;

procedure TMainSteamHelperForm.LocalNotificationSaveButtonClick(
  Sender: TObject);
begin
  //FRIENDS
  IniFile.WriteString('FriendsNotification','LocalNotification1UserIDText', LocalNotification1UserID.Text);
  IniFile.WriteString('FriendsNotification','LocalFriendNotificationTemplateText', LocalFriendNotificationTemplate.Text);

  IniFile.WriteString('FriendsNotification','LocalNotificationPlayGameTemplateText', LocalNotificationPlayGameTemplate.Text);

  //STEAM
  IniFile.WriteString('SteamNotification','LocalNotificationNewAppCheckBoxTemplateText', LocalNotificationNewAppCheckBoxTemplate.Text);

  IniFile.WriteString('SteamNotification','LocalDealNotificationTemplateText', LocalDealNotificationTemplate.Text);
  IniFile.WriteString('SteamNotification','LocalDealFormNotificationTemplateText', LocalDealFormNotificationTemplate.Text);

  //DOTA 2
  IniFile.WriteString('DotaNotification','LocalDotaNotification1UserIDText', LocalDotaNotification1UserID.Text);
  IniFile.WriteString('DotaNotification','LocalDotaNotificationTemplateText', LocalDotaNotificationTemplate.Text);
  IniFile.WriteString('DotaNotification','LocalHeroNotificationTemplateText', LocalHeroNotificationTemplate.Text);

end;

procedure TMainSteamHelperForm.LocalNotificationShowMessageClick(
  Sender: TObject);
begin
  if LocalNotificationShowMessage.Checked then
  begin
    IniFile.WriteBool('LocalNotification','LocalNotificationShowMessage', LocalNotificationShowMessage.Checked);
  end
  else
  begin
    IniFile.WriteBool('LocalNotification','LocalNotificationShowMessage', LocalNotificationShowMessage.Checked);
  end;
end;

procedure TMainSteamHelperForm.LocalNotificationTimerTimer(Sender: TObject);
var FriendNotification, GameNotification, SaveLastStatus: String;
    i: integer;
begin
//ЛОКАЛЬНЫЕ
  //УВЕДОМЛЕНИЕ ЛОКАЛЬНОЕ СТАТУСА
  if SteamHelperNotificationCheckBox.Checked then
  begin
    ShowFriendsClick(nil);
    if ConnectProgress.Position <> ConnectProgress.Max then
      Sleep(5000);

    if LocalNotification1UserIDCheckBox.Checked then
    begin
      if LocalNotification1UserID.Text = '' then
      begin
        ShowMessage('В поле с ID ничего нет');
        LocalNotificationTimer.Enabled := FALSE;
        LocalNotification1UserIDCheckBox.Checked := FALSE;
        exit;
      end;
      for i := 0 to FriendsDataGrid.RowCount - 1 do
      begin
        if LocalNotification1UserID.Text = FriendsDataGrid.Cells[1, i + 1] then
        begin
          NowStatus := FriendsDataGrid.Cells[4, i + 1];
          if LastStatus <> NowStatus then
          begin
            FriendNotification := Trim(LocalFriendNotificationTemplate.Text);
            SaveLastStatus := LastStatus;
            FriendNotification := ReplaceNotification(FriendNotification, '%Время%', TimeToStr(Time));
            FriendNotification := ReplaceNotification(FriendNotification, '%Ник%', FriendsDataGrid.Cells[2, i + 1]);
            FriendNotification := ReplaceNotification(FriendNotification, '%ПрошлыйСтатус%', '''' + SaveLastStatus + '''');
            FriendNotification := ReplaceNotification(FriendNotification, '%НовыйСтатус%', '''' + NowStatus + '''');
            //%Время% %Ник% сменил статус с %ПрошлыйСтатус% на %НовыйСтатус%
            LastStatus := NowStatus;
            if SaveLastStatus <> '' then
            begin
              Log(FriendNotification, 0);

              if SmsFriendsCheckBox.Checked then
                SendSms(FriendNotification);

              if MailFriendsCheckBox.Checked then
                SendMailNotification(MaillNotificationUserMail.Text, MailFriendsEdit.Text, FriendNotification);

              ShowNotification(FriendNotification);
            end;
            break;
          end;
          break;
        end;
      end;
    end;

    if LocalNotification2UserIDCheckBox.Checked then
    begin
      for i := 0 to FriendsDataGrid.RowCount - 1 do
      begin
        if LocalNotification2UserID.Text = FriendsDataGrid.Cells[1, i + 1] then
        begin
          NowStatus := FriendsDataGrid.Cells[4, i + 1];
          if LastStatus <> NowStatus then
          begin
            FriendNotification := Trim(LocalFriendNotificationTemplate.Text);
            SaveLastStatus := LastStatus;
            FriendNotification := ReplaceNotification(FriendNotification, '%Время%', TimeToStr(Time));
            FriendNotification := ReplaceNotification(FriendNotification, '%Ник%', FriendsDataGrid.Cells[2, i + 1]);
            FriendNotification := ReplaceNotification(FriendNotification, '%ПрошлыйСтатус%', '''' + SaveLastStatus + '''');
            FriendNotification := ReplaceNotification(FriendNotification, '%НовыйСтатус%', '''' + NowStatus + '''');
            //%Время% %Ник% сменил статус с %ПрошлыйСтатус% на %НовыйСтатус%
            LastStatus := NowStatus;
            if SaveLastStatus <> '' then
            begin
              Log(FriendNotification, 0);

              if SmsFriendsCheckBox.Checked then
                SendSms(FriendNotification);

              if MailFriendsCheckBox.Checked then
                SendMailNotification(MaillNotificationUserMail.Text, MailFriendsEdit.Text, FriendNotification);

              ShowNotification(FriendNotification);
            end;
            break;
          end;
          break;
        end;
      end;
    end;

  //УВЕДОМЛЕНИЕ ЛОКАЛЬНОЕ В ИГРУ
    if LocalNotificationPlayGameCheckBox.Checked then
    begin
      SetLength(NowGame, FriendsDataGrid.RowCount);
      SetLength(LastGame, FriendsDataGrid.RowCount);
      SetLength(SaveLastGameStatus, FriendsDataGrid.RowCount);
      for i := 0 to FriendsDataGrid.RowCount - 1 do
      begin
        NowGame[i] := FriendsDataGrid.Cells[5, i + 1];
        if LastGame[i] <> NowGame[i] then
        begin
          GameNotification := Trim(LocalNotificationPlayGameTemplate.Text);
          SaveLastGameStatus[i] := LastGame[i];
          GameNotification := ReplaceNotification(GameNotification, '%Время%', TimeToStr(Time));
          GameNotification := ReplaceNotification(GameNotification, '%Ник%', FriendsDataGrid.Cells[2, i + 1]);
          //%Время% %Ник% %Состояние%
          LastGame[i] := NowGame[i];
          if SaveLastGameStatus[i] <> '' then
          begin
            if SaveLastGameStatus[i] = '?' then
            begin
              GameNotification := ReplaceNotification(GameNotification, '%Состояние%', ' вошёл в ' + '''' + NowGame[i] + '''');
            end
            else
            begin
              GameNotification := ReplaceNotification(GameNotification, '%Состояние%', ' вышел из ' + '''' + SaveLastGameStatus[i] + '''');
            end;
            Log(GameNotification, 0);

            if SmsFriendsCheckBox.Checked then
              SendSms(GameNotification);

            if MailFriendsCheckBox.Checked then
                SendMailNotification(MaillNotificationUserMail.Text, MailFriendsEdit.Text, GameNotification);

            ShowNotification(GameNotification);
          end;
        end;
      end;
    end;
  end;


end;

procedure TMainSteamHelperForm.LocalOffCheckClick(Sender: TObject);
begin
  SteamHelperNotificationCheckBox.Checked := FALSE;
  LocalNotification1UserIDCheckBox.Checked := FALSE;
  LocalNotificationPlayGameCheckBox.Checked := FALSE;
  LocalSteamNotificationCheckBox.Checked := FALSE;
  LocalDealNotificationCheckBox.Checked := FALSE;
  LocalDotaNotificationCheckBox.Checked := FALSE;
  LocalHeroNotificationCheckBox.Checked := FALSE;
end;

procedure TMainSteamHelperForm.LocalSteamNotificationCheckBoxClick(
  Sender: TObject);
begin
  SteamNewAppTimer.Interval := LocalSteamNotificationRefresh.Position * 3600000;

  if LocalSteamNotificationCheckBox.Checked then
  begin
    //LocalNotificationSteamGroupBox.Visible := TRUE;
    SteamNewAppTimer.Enabled := TRUE;
    IniFile.WriteBool('SteamNotification','LocalSteamNotification', LocalSteamNotificationCheckBox.Checked);
  end
  else
  begin
    //LocalNotificationSteamGroupBox.Visible := FALSE;
    SteamNewAppTimer.Enabled := FALSE;
    IniFile.WriteBool('SteamNotification','LocalSteamNotification', LocalSteamNotificationCheckBox.Checked);
  end;

  RefreshStatusBar;
end;

procedure TMainSteamHelperForm.LocalSteamNotificationRefreshChange(
  Sender: TObject);
begin
  SteamNewAppTimer.Interval := LocalSteamNotificationRefresh.Position * 3600000;
  DealTimer.Interval := LocalSteamNotificationRefresh.Position * 3600000;
  LocalSteamNotificationRefreshText.Caption := IntToStr(LocalSteamNotificationRefresh.Position) + ' часов';

  IniFile.WriteInteger('SteamNotification','LocalSteamNotificationRefresh', LocalSteamNotificationRefresh.Position);

  RefreshStatusBar;
end;

function GetUserIDByUserName(XMLDoc: TXMLDocument; XMLPath: String): String;
var LoadURL: String;
    Node, Root: IXMLNode;
    Return: String;
    i, j: integer;
begin
{
<response>
  <steamid>76561198030988834</steamid>
  <success>1</success>
</response>
}
  Result := '?';
  NewXMLFile(XMLPath);
  XMLDoc.LoadFromFile(XMLPath);
  XMLDoc.Active := TRUE;
  Root := XMLDoc.DocumentElement;

  if Root.ChildNodes.Nodes[1].Text = '1' then
  begin
    Result := Root.ChildNodes.Nodes[0].Text;
  end;
end;

procedure TMainSteamHelperForm.ConnectSteamClick(Sender: TObject);
var LoadURL, UserNameFromLink: String;
begin
  //Screen.Cursor := crHourGlass;
  if LogInByIDRadio.Checked then
  begin
    if '666' = UserID.Text then
      ShowMessage('N0-no >:C');
    LoadUserInfoByID(UserID.Text);
  end
  else
  if LogInByLinkRadio.Checked then
  begin
  //http://steamcommunity.com/id/quoe/
  //http://steamcommunity.com/profiles/76561198044450938/
    if UserLink.Text = 'http://steamcommunity.com/id/' then
    begin
      ShowMessage('Вы не ввесли ссылку на профиль');
      exit;
    end;
    UserNameFromLink := UserLink.Text;
    if Pos('http://steamcommunity.com/id/', UserNameFromLink) > 0 then
    begin
      Delete(UserNameFromLink, 1, Length('http://steamcommunity.com/id/'));
      if UserNameFromLink[Length(UserNameFromLink)] = '/' then
      UserNameFromLink := Copy(UserNameFromLink, 1, Length(UserNameFromLink) - 1);
    end
    else
    if Pos('http://steamcommunity.com/profiles/', UserNameFromLink) > 0 then
    begin
      Delete(UserNameFromLink, 1, Length('http://steamcommunity.com/profiles/'));
      if UserNameFromLink[Length(UserNameFromLink)] = '/' then
      UserNameFromLink := Copy(UserNameFromLink, 1, Length(UserNameFromLink) - 1);
      LoadUserInfoByID(UserNameFromLink);
      exit;
    end;

    LoadURL := 'http://api.steampowered.com/ISteamUser/ResolveVanityURL/v0001/?key=' + SteamKey + '&vanityurl=' + UserNameFromLink + '&format=xml';
    if DownloadFile(LoadURL, TempPath + UserIDFromLink) then
    begin
      UserID.Text := GetUserIDByUserName(XMLDoc, TempPath + UserIDFromLink);
      LoadUserInfoByID(UserID.Text);
      //Screen.Cursor := crHourGlass;
      //Screen.Cursor := crArrow;
    end;
  end;
end;

procedure TMainSteamHelperForm.ConnectSteamMouseEnter(Sender: TObject);
begin
  if FileExists(ExePath + 'Buttons\sits_large_noborder_mouse.png') then
  begin
    ConnectSteam.Picture.LoadFromFile(ExePath + 'Buttons\sits_large_noborder_mouse.png');
  end;
end;

procedure TMainSteamHelperForm.ConnectSteamMouseLeave(Sender: TObject);
begin
  if FileExists(ExePath + 'Buttons\sits_large_noborder.png') then
  begin
    ConnectSteam.Picture.LoadFromFile(ExePath + 'Buttons\sits_large_noborder.png');
  end;
end;

procedure TMainSteamHelperForm.FindTextChange(Sender: TObject);
var i: integer;
begin
//SteamAppsGrid.Cells[1, i + 1] := XMLApp.ChildNodes.Nodes['appid'].Text;
//SteamAppsGrid.Cells[2, i + 1] := XMLApp.ChildNodes.Nodes['name'].Text;
  case FindOption.ItemIndex of
    0:
      begin
        for I := 0 to SteamAppsGrid.RowCount - 1 do
        begin
          if Pos(FindText.Text, SteamAppsGrid.Cells[1, i + 1]) > 0 then
          begin
            ResultOfFind.Text := SteamAppsGrid.Cells[2, i + 1];
            exit;
          end;
        end;
      end;

    1:
      begin
        for I := 0 to SteamAppsGrid.RowCount - 1 do
        begin
          if Pos(FindText.Text, SteamAppsGrid.Cells[2, i + 1]) > 0 then
          begin
            ResultOfFind.Text := SteamAppsGrid.Cells[1, i + 1];
            exit;
          end;
        end;
      end;

    else
      ResultOfFind.Text := '?';
  end;
end;

end.
