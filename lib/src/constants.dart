import 'dart:ffi';
import 'package:ffi/ffi.dart';

///////////////
// CONSTANTS //
///////////////

const NULL = 0;

const MAX_PATH = 260;

// WindowStyle constants
const WS_BORDER = 0x00800000;
const WS_CAPTION = 0x00C00000;
const WS_CHILD = 0x40000000;
const WS_CHILDWINDOW = 0x40000000;
const WS_CLIPCHILDREN = 0x02000000;
const WS_CLIPSIBLINGS = 0x04000000;
const WS_DISABLED = 0x08000000;
const WS_DLGFRAME = 0x00400000;
const WS_GROUP = 0x00020000;
const WS_HSCROLL = 0x00100000;
const WS_ICONIC = 0x20000000;
const WS_MAXIMIZE = 0x01000000;
const WS_MAXIMIZEBOX = 0x00010000;
const WS_MINIMIZE = 0x20000000;
const WS_MINIMIZEBOX = 0x00020000;
const WS_OVERLAPPED = 0x00000000;
const WS_OVERLAPPEDWINDOW = WS_OVERLAPPED |
    WS_CAPTION |
    WS_SYSMENU |
    WS_THICKFRAME |
    WS_MINIMIZEBOX |
    WS_MAXIMIZEBOX;
const WS_POPUP = 0x80000000;
const WS_POPUPWINDOW = WS_POPUP | WS_BORDER | WS_SYSMENU;
const WS_SIZEBOX = 0x00040000;
const WS_SYSMENU = 0x00080000;
const WS_TABSTOP = 0x00010000;
const WS_THICKFRAME = 0x00040000;
const WS_TILED = 0x00000000;
const WS_TILEDWINDOW = WS_OVERLAPPED |
    WS_CAPTION |
    WS_SYSMENU |
    WS_THICKFRAME |
    WS_MINIMIZEBOX |
    WS_MAXIMIZEBOX;
const WS_VISIBLE = 0x10000000;
const WS_VSCROLL = 0x00200000;

// WindowMessage constants
const WM_NULL = 0x0000;
const WM_CREATE = 0x0001;
const WM_DESTROY = 0x0002;
const WM_MOVE = 0x0003;
const WM_SIZE = 0x0005;
const WM_ACTIVATE = 0x0006;
const WM_SETFOCUS = 0x0007;
const WM_KILLFOCUS = 0x0008;
const WM_ENABLE = 0x000A;
const WM_SETREDRAW = 0x000B;
const WM_SETTEXT = 0x000C;
const WM_GETTEXT = 0x000D;
const WM_GETTEXTLENGTH = 0x000E;
const WM_PAINT = 0x000F;
const WM_CLOSE = 0x0010;
const WM_QUIT = 0x0012;
const WM_ERASEBKGND = 0x0014;
const WM_SYSCOLORCHANGE = 0x0015;
const WM_SHOWWINDOW = 0x0018;
const WM_WININICHANGE = 0x001A;
const WM_SETTINGCHANGE = WM_WININICHANGE;
const WM_DEVMODECHANGE = 0x001B;
const WM_ACTIVATEAPP = 0x001C;
const WM_FONTCHANGE = 0x001D;
const WM_TIMECHANGE = 0x001E;
const WM_CANCELMODE = 0x001F;
const WM_SETCURSOR = 0x0020;
const WM_MOUSEACTIVATE = 0x0021;
const WM_CHILDACTIVATE = 0x0022;
const WM_QUEUESYNC = 0x0023;
const WM_GETMINMAXINFO = 0x0024;
const WM_KEYFIRST = 0x0100;
const WM_KEYDOWN = 0x0100;
const WM_KEYUP = 0x0101;
const WM_CHAR = 0x0102;
const WM_DEADCHAR = 0x0103;
const WM_SYSKEYDOWN = 0x0104;
const WM_SYSKEYUP = 0x0105;
const WM_SYSCHAR = 0x0106;
const WM_SYSDEADCHAR = 0x0107;
const WM_INITDIALOG = 0x0110;
const WM_COMMAND = 0x0111;
const WM_SYSCOMMAND = 0x0112;
const WM_TIMER = 0x0113;
const WM_HSCROLL = 0x0114;
const WM_VSCROLL = 0x0115;

// ShowWindow constants
const SW_HIDE = 0;
const SW_SHOWNORMAL = 1;
const SW_SHOWMINIMIZED = 2;
const SW_MAXIMIZE = 3;
const SW_SHOWMAXIMIZED = 3;
const SW_SHOWNOACTIVATE = 4;
const SW_SHOW = 5;
const SW_MINIMIZE = 6;
const SW_SHOWMINNOACTIVE = 7;
const SW_SHOWNA = 8;
const SW_RESTORE = 9;
const SW_SHOWDEFAULT = 10;
const SW_FORCEMINIMIZE = 11;

// DrawText constants
const DT_TOP = 0x000;
const DT_LEFT = 0x000;
const DT_CENTER = 0x001;
const DT_RIGHT = 0x002;
const DT_VCENTER = 0x004;
const DT_BOTTOM = 0x008;
const DT_WORDBREAK = 0x0010;
const DT_SINGLELINE = 0x0020;

// Class styles
const CS_VREDRAW = 0x0001;
const CS_HREDRAW = 0x0002;
const CS_DBLCLKS = 0x0008;
const CS_OWNDC = 0x0020;
const CS_CLASSDC = 0x0040;
const CS_PARENTDC = 0x0080;
const CS_NOCLOSE = 0x0200;
const CS_SAVEBITS = 0x0800;
const CS_BYTEALIGNCLIENT = 0x1000;
const CS_BYTEALIGNWINDOW = 0x2000;
const CS_GLOBALCLASS = 0x4000;
const CS_IME = 0x00010000;
const CS_DROPSHADOW = 0x00020000;

// ControlWord constant
const CW_USEDEFAULT = 0x80000000;

// System colors
const COLOR_SCROLLBAR = 0;
const COLOR_BACKGROUND = 1;
const COLOR_ACTIVECAPTION = 2;
const COLOR_INACTIVECAPTION = 3;
const COLOR_MENU = 4;
const COLOR_WINDOW = 5;
const COLOR_WINDOWFRAME = 6;
const COLOR_MENUTEXT = 7;
const COLOR_WINDOWTEXT = 8;
const COLOR_CAPTIONTEXT = 9;
const COLOR_ACTIVEBORDER = 10;
const COLOR_INACTIVEBORDER = 11;
const COLOR_APPWORKSPACE = 12;
const COLOR_HIGHLIGHT = 13;
const COLOR_HIGHLIGHTTEXT = 14;
const COLOR_BTNFACE = 15;
const COLOR_BTNSHADOW = 16;
const COLOR_GRAYTEXT = 17;
const COLOR_BTNTEXT = 18;
const COLOR_INACTIVECAPTIONTEXT = 19;
const COLOR_BTNHIGHLIGHT = 20;

// Stock objects
const WHITE_BRUSH = 0;
const LTGRAY_BRUSH = 1;
const GRAY_BRUSH = 2;
const DKGRAY_BRUSH = 3;
const BLACK_BRUSH = 4;
const NULL_BRUSH = 5;
const HOLLOW_BRUSH = NULL_BRUSH;
const WHITE_PEN = 6;
const BLACK_PEN = 7;

final IDI_APPLICATION = Pointer<Utf16>.fromAddress(32512);
final IDI_HAND = Pointer<Utf16>.fromAddress(32513);
final IDI_QUESTION = Pointer<Utf16>.fromAddress(32514);
final IDI_EXCLAMATION = Pointer<Utf16>.fromAddress(32515);
final IDI_ASTERISK = Pointer<Utf16>.fromAddress(32516);
final IDI_WINLOGO = Pointer<Utf16>.fromAddress(32517);
final IDI_SHIELD = Pointer<Utf16>.fromAddress(32518);
final IDI_WARNING = IDI_EXCLAMATION;
final IDI_ERROR = IDI_HAND;
final IDI_INFORMATION = IDI_ASTERISK;

// Stock cursors
final IDC_ARROW = Pointer<Utf16>.fromAddress(32512);
final IDC_IBEAM = Pointer<Utf16>.fromAddress(32513);
final IDC_WAIT = Pointer<Utf16>.fromAddress(32514);
final IDC_CROSS = Pointer<Utf16>.fromAddress(32515);
final IDC_UPARROW = Pointer<Utf16>.fromAddress(32516);

// MessageBox flags
const MB_OK = 0x00000000;
const MB_OKCANCEL = 0x00000001;
const MB_ABORTRETRYIGNORE = 0x00000002;
const MB_YESNOCANCEL = 0x00000003;
const MB_YESNO = 0x00000004;
const MB_RETRYCANCEL = 0x00000005;
const MB_CANCELTRYCONTINUE = 0x00000006;
const MB_ICONHAND = 0x00000010;
const MB_ICONQUESTION = 0x00000020;
const MB_ICONEXCLAMATION = 0x00000030;
const MB_ICONASTERISK = 0x00000040;
const MB_USERICON = 0x00000080;
const MB_ICONWARNING = MB_ICONEXCLAMATION;
const MB_ICONERROR = MB_ICONHAND;
const MB_ICONINFORMATION = MB_ICONASTERISK;
const MB_ICONSTOP = MB_ICONHAND;
const MB_DEFBUTTON1 = 0x00000000;
const MB_DEFBUTTON2 = 0x00000100;
const MB_DEFBUTTON3 = 0x00000200;
const MB_DEFBUTTON4 = 0x00000300;
const MB_APPLMODAL = 0x00000000;
const MB_SYSTEMMODAL = 0x00001000;
const MB_TASKMODAL = 0x00002000;
const MB_HELP = 0x00004000;
const MB_NOFOCUS = 0x00008000;
const MB_SETFOREGROUND = 0x00010000;
const MB_DEFAULT_DESKTOP_ONLY = 0x00020000;
const MB_TOPMOST = 0x00040000;
const MB_RIGHT = 0x00080000;
const MB_RTLREADING = 0x00100000;
const MB_SERVICE_NOTIFICATION = 0x00200000;

// Mapping modes
const MM_TEXT = 1;
const MM_LOMETRIC = 2;
const MM_HIMETRIC = 3;
const MM_LOENGLISH = 4;
const MM_HIENGLISH = 5;
const MM_TWIPS = 6;
const MM_ISOTROPIC = 7;
const MM_ANISOTROPIC = 8;
const MM_MIN = MM_TEXT;
const MM_MAX = MM_ANISOTROPIC;
const MM_MAX_FIXEDSCALE = MM_TWIPS;

// Background modes
const TRANSPARENT = 1;
const OPAQUE = 2;
const BKMODE_LAST = 2;

// Dialog box command IDs
const IDOK = 1;
const IDCANCEL = 2;
const IDABORT = 3;
const IDRETRY = 4;
const IDIGNORE = 5;
const IDYES = 6;
const IDNO = 7;
const IDCLOSE = 8;
const IDHELP = 9;
const IDTRYAGAIN = 10;
const IDCONTINUE = 11;
const IDTIMEOUT = 32000;

// Virtual keys
const VK_LBUTTON = 0x01;
const VK_RBUTTON = 0x02;
const VK_CANCEL = 0x03;
const VK_MBUTTON = 0x04;
const VK_XBUTTON1 = 0x05;
const VK_XBUTTON2 = 0x06;
const VK_BACK = 0x08;
const VK_TAB = 0x09;
const VK_CLEAR = 0x0C;
const VK_RETURN = 0x0D;
const VK_SHIFT = 0x10;
const VK_CONTROL = 0x11;
const VK_MENU = 0x12;
const VK_PAUSE = 0x13;
const VK_CAPITAL = 0x14;
const VK_KANA = 0x15;
const VK_HANGEUL = 0x15;
const VK_HANGUL = 0x15;
const VK_JUNJA = 0x17;
const VK_FINAL = 0x18;
const VK_HANJA = 0x19;
const VK_KANJI = 0x19;
const VK_ESCAPE = 0x1B;
const VK_CONVERT = 0x1C;
const VK_NONCONVERT = 0x1D;
const VK_ACCEPT = 0x1E;
const VK_MODECHANGE = 0x1F;
const VK_SPACE = 0x20;
const VK_PRIOR = 0x21;
const VK_NEXT = 0x22;
const VK_END = 0x23;
const VK_HOME = 0x24;
const VK_LEFT = 0x25;
const VK_UP = 0x26;
const VK_RIGHT = 0x27;
const VK_DOWN = 0x28;
const VK_SELECT = 0x29;
const VK_PRINT = 0x2A;
const VK_EXECUTE = 0x2B;
const VK_SNAPSHOT = 0x2C;
const VK_INSERT = 0x2D;
const VK_DELETE = 0x2E;
const VK_HELP = 0x2F;
const VK_LWIN = 0x5B;
const VK_RWIN = 0x5C;
const VK_APPS = 0x5D;
const VK_SLEEP = 0x5F;
const VK_NUMPAD0 = 0x60;
const VK_NUMPAD1 = 0x61;
const VK_NUMPAD2 = 0x62;
const VK_NUMPAD3 = 0x63;
const VK_NUMPAD4 = 0x64;
const VK_NUMPAD5 = 0x65;
const VK_NUMPAD6 = 0x66;
const VK_NUMPAD7 = 0x67;
const VK_NUMPAD8 = 0x68;
const VK_NUMPAD9 = 0x69;
const VK_MULTIPLY = 0x6A;
const VK_ADD = 0x6B;
const VK_SEPARATOR = 0x6C;
const VK_SUBTRACT = 0x6D;
const VK_DECIMAL = 0x6E;
const VK_DIVIDE = 0x6F;
const VK_F1 = 0x70;
const VK_F2 = 0x71;
const VK_F3 = 0x72;
const VK_F4 = 0x73;
const VK_F5 = 0x74;
const VK_F6 = 0x75;
const VK_F7 = 0x76;
const VK_F8 = 0x77;
const VK_F9 = 0x78;
const VK_F10 = 0x79;
const VK_F11 = 0x7A;
const VK_F12 = 0x7B;
const VK_F13 = 0x7C;
const VK_F14 = 0x7D;
const VK_F15 = 0x7E;
const VK_F16 = 0x7F;
const VK_F17 = 0x80;
const VK_F18 = 0x81;
const VK_F19 = 0x82;
const VK_F20 = 0x83;
const VK_F21 = 0x84;
const VK_F22 = 0x85;
const VK_F23 = 0x86;
const VK_F24 = 0x87;
const VK_NUMLOCK = 0x90;
const VK_SCROLL = 0x91;
const VK_LSHIFT = 0xA0;
const VK_RSHIFT = 0xA1;
const VK_LCONTROL = 0xA2;
const VK_RCONTROL = 0xA3;
const VK_LMENU = 0xA4;
const VK_RMENU = 0xA5;
const VK_BROWSER_BACK = 0xA6;
const VK_BROWSER_FORWARD = 0xA7;
const VK_BROWSER_REFRESH = 0xA8;
const VK_BROWSER_STOP = 0xA9;
const VK_BROWSER_SEARCH = 0xAA;
const VK_BROWSER_FAVORITES = 0xAB;
const VK_BROWSER_HOME = 0xAC;
const VK_VOLUME_MUTE = 0xAD;
const VK_VOLUME_DOWN = 0xAE;
const VK_VOLUME_UP = 0xAF;
const VK_MEDIA_NEXT_TRACK = 0xB0;
const VK_MEDIA_PREV_TRACK = 0xB1;
const VK_MEDIA_STOP = 0xB2;
const VK_MEDIA_PLAY_PAUSE = 0xB3;
const VK_LAUNCH_MAIL = 0xB4;
const VK_LAUNCH_MEDIA_SELECT = 0xB5;
const VK_LAUNCH_APP1 = 0xB6;
const VK_LAUNCH_APP2 = 0xB7;
const VK_OEM_1 = 0xBA;
const VK_OEM_PLUS = 0xBB;
const VK_OEM_COMMA = 0xBC;
const VK_OEM_MINUS = 0xBD;
const VK_OEM_PERIOD = 0xBE;
const VK_OEM_2 = 0xBF;
const VK_OEM_3 = 0xC0;
const VK_OEM_4 = 0xDB;
const VK_OEM_5 = 0xDC;
const VK_OEM_6 = 0xDD;
const VK_OEM_7 = 0xDE;
const VK_OEM_8 = 0xDF;
const VK_OEM_AX = 0xE1;
const VK_OEM_102 = 0xE2;
const VK_ICO_HELP = 0xE3;
const VK_ICO_00 = 0xE4;
const VK_PROCESSKEY = 0xE5;
const VK_ICO_CLEAR = 0xE6;
const VK_PACKET = 0xE7;

// Input types
const INPUT_MOUSE = 0;
const INPUT_KEYBOARD = 1;
const INPUT_HARDWARE = 2;

// Keyboard and mouse events
const KEYEVENTF_EXTENDEDKEY = 0x0001;
const KEYEVENTF_KEYUP = 0x0002;
const KEYEVENTF_UNICODE = 0x0004;
const KEYEVENTF_SCANCODE = 0x0008;

const MOUSEEVENTF_MOVE = 0x0001;
const MOUSEEVENTF_LEFTDOWN = 0x0002;
const MOUSEEVENTF_LEFTUP = 0x0004;
const MOUSEEVENTF_RIGHTDOWN = 0x0008;
const MOUSEEVENTF_RIGHTUP = 0x0010;
const MOUSEEVENTF_MIDDLEDOWN = 0x0020;
const MOUSEEVENTF_MIDDLEUP = 0x0040;
const MOUSEEVENTF_XDOWN = 0x0080;
const MOUSEEVENTF_XUP = 0x0100;
const MOUSEEVENTF_WHEEL = 0x0800;
const MOUSEEVENTF_HWHEEL = 0x01000;
const MOUSEEVENTF_MOVE_NOCOALESCE = 0x2000;
const MOUSEEVENTF_VIRTUALDESK = 0x4000;
const MOUSEEVENTF_ABSOLUTE = 0x8000;

// Classic Folder IDs
const CSIDL_DESKTOP = 0x0000;
const CSIDL_INTERNET = 0x0001;
const CSIDL_PROGRAMS = 0x0002;
const CSIDL_CONTROLS = 0x0003;
const CSIDL_PRINTERS = 0x0004;
const CSIDL_PERSONAL = 0x0005;
const CSIDL_FAVORITES = 0x0006;
const CSIDL_STARTUP = 0x0007;
const CSIDL_RECENT = 0x0008;
const CSIDL_SENDTO = 0x0009;
const CSIDL_BITBUCKET = 0x000a;
const CSIDL_STARTMENU = 0x000b;
const CSIDL_MYDOCUMENTS = CSIDL_PERSONAL;
const CSIDL_MYMUSIC = 0x000d;
const CSIDL_MYVIDEO = 0x000e;
const CSIDL_DESKTOPDIRECTORY = 0x0010;
const CSIDL_DRIVES = 0x0011;
const CSIDL_NETWORK = 0x0012;
const CSIDL_NETHOOD = 0x0013;
const CSIDL_FONTS = 0x0014;
const CSIDL_TEMPLATES = 0x0015;
const CSIDL_COMMON_STARTMENU = 0x0016;
const CSIDL_COMMON_PROGRAMS = 0X0017;
const CSIDL_COMMON_STARTUP = 0x0018;
const CSIDL_COMMON_DESKTOPDIRECTORY = 0x0019;
const CSIDL_APPDATA = 0x001a;
const CSIDL_PRINTHOOD = 0x001b;
const CSIDL_LOCAL_APPDATA = 0x001c;
const CSIDL_ALTSTARTUP = 0x001d;
const CSIDL_COMMON_ALTSTARTUP = 0x001e;
const CSIDL_COMMON_FAVORITES = 0x001f;
const CSIDL_INTERNET_CACHE = 0x0020;
const CSIDL_COOKIES = 0x0021;
const CSIDL_HISTORY = 0x0022;
const CSIDL_COMMON_APPDATA = 0x0023;
const CSIDL_WINDOWS = 0x0024;
const CSIDL_SYSTEM = 0x0025;
const CSIDL_PROGRAM_FILES = 0x0026;
const CSIDL_MYPICTURES = 0x0027;
const CSIDL_PROFILE = 0x0028;
const CSIDL_SYSTEMX86 = 0x0029;
const CSIDL_PROGRAM_FILESX86 = 0x002a;
const CSIDL_PROGRAM_FILES_COMMON = 0x002b;
const CSIDL_PROGRAM_FILES_COMMONX86 = 0x002c;
const CSIDL_COMMON_TEMPLATES = 0x002d;
const CSIDL_COMMON_DOCUMENTS = 0x002e;
const CSIDL_COMMON_ADMINTOOLS = 0x002f;
const CSIDL_ADMINTOOLS = 0x0030;
const CSIDL_CONNECTIONS = 0x0031;
const CSIDL_COMMON_MUSIC = 0x0035;
const CSIDL_COMMON_PICTURES = 0x0036;
const CSIDL_COMMON_VIDEO = 0x0037;
const CSIDL_RESOURCES = 0x0038;
const CSIDL_RESOURCES_LOCALIZED = 0x0039;
const CSIDL_COMMON_OEM_LINKS = 0x003a;
const CSIDL_CDBURN_AREA = 0x003b;
const CSIDL_COMPUTERSNEARME = 0x003d;
const CSIDL_FLAG_CREATE = 0x8000;
const CSIDL_FLAG_DONT_VERIFY = 0x4000;
const CSIDL_FLAG_DONT_UNEXPAND = 0x2000;
const CSIDL_FLAG_NO_ALIAS = 0x1000;
const CSIDL_FLAG_PER_USER_INIT = 0x0800;
const CSIDL_FLAG_MASK = 0xFF00;

// *** CONSOLE CONSTANTS ***

// Handles
const STD_INPUT_HANDLE = -10;
const STD_OUTPUT_HANDLE = -11;
const STD_ERROR_HANDLE = -12;

const INVALID_HANDLE_VALUE = -1;

// input flags
const ENABLE_ECHO_INPUT = 0x0004;
const ENABLE_EXTENDED_FLAGS = 0x0080;
const ENABLE_INSERT_MODE = 0x0020;
const ENABLE_LINE_INPUT = 0x0002;
const ENABLE_MOUSE_INPUT = 0x0010;
const ENABLE_PROCESSED_INPUT = 0x0001;
const ENABLE_QUICK_EDIT_MODE = 0x0040;
const ENABLE_WINDOW_INPUT = 0x0008;
const ENABLE_VIRTUAL_TERMINAL_INPUT = 0x0200;

// output flags
const ENABLE_PROCESSED_OUTPUT = 0x0001;
const ENABLE_WRAP_AT_EOL_OUTPUT = 0x0002;
const ENABLE_VIRTUAL_TERMINAL_PROCESSING = 0x0004;
const DISABLE_NEWLINE_AUTO_RETURN = 0x0008;
const ENABLE_LVB_GRID_WORLDWIDE = 0x0010;

// *** COM CONSTANTS ***
const S_OK = 0;
const E_FAIL = 0x80004005;
const E_INVALIDARG = 0x80070057;

// Known folder flags
const KF_FLAG_DEFAULT = 0x00000000;
const KF_FLAG_FORCE_APP_DATA_REDIRECTION = 0x00080000;
const KF_FLAG_RETURN_FILTER_REDIRECTION_TARGET = 0x00040000;
const KF_FLAG_FORCE_PACKAGE_REDIRECTION = 0x00020000;
const KF_FLAG_NO_PACKAGE_REDIRECTION = 0x00010000;
const KF_FLAG_FORCE_APPCONTAINER_REDIRECTION = 0x00020000;
const KF_FLAG_NO_APPCONTAINER_REDIRECTION = 0x00010000;
const KF_FLAG_CREATE = 0x00008000;
const KF_FLAG_DONT_VERIFY = 0x00004000;
const KF_FLAG_DONT_UNEXPAND = 0x00002000;
const KF_FLAG_NO_ALIAS = 0x00001000;
const KF_FLAG_INIT = 0x00000800;
const KF_FLAG_DEFAULT_PATH = 0x00000400;
const KF_FLAG_NOT_PARENT_RELATIVE = 0x00000200;
const KF_FLAG_SIMPLE_IDLIST = 0x00000100;
const KF_FLAG_ALIAS_ONLY = 0x80000000;

// Folder IDs
const FOLDERID_NetworkFolder = '{D20BEEC4-5CA8-4905-AE3B-BF251EA09B53}';
const FOLDERID_ComputerFolder = '{0AC0837C-BBF8-452A-850D-79D08E667CA7}';
const FOLDERID_InternetFolder = '{4D9F7874-4E0C-4904-967B-40B0D20C3E4B}';
const FOLDERID_ControlPanelFolder = '{82A74AEB-AEB4-465C-A014-D097EE346D63}';
const FOLDERID_PrintersFolder = '{76FC4E2D-D6AD-4519-A663-37BD56068185}';
const FOLDERID_SyncManagerFolder = '{43668BF8-C14E-49B2-97C9-747784D784B7}';
const FOLDERID_SyncSetupFolder = '{0F214138-B1D3-4a90-BBA9-27CBC0C5389A}';
const FOLDERID_ConflictFolder = '{4bfefb45-347d-4006-a5be-ac0cb0567192}';
const FOLDERID_SyncResultsFolder = '{289a9a43-be44-4057-a41b-587a76d7e7f9}';
const FOLDERID_RecycleBinFolder = '{B7534046-3ECB-4C18-BE4E-64CD4CB7D6AC}';
const FOLDERID_ConnectionsFolder = '{6F0CD92B-2E97-45D1-88FF-B0D186B8DEDD}';
const FOLDERID_Fonts = '{FD228CB7-AE11-4AE3-864C-16F3910AB8FE}';
const FOLDERID_Desktop = '{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}';
const FOLDERID_Startup = '{B97D20BB-F46A-4C97-BA10-5E3608430854}';
const FOLDERID_Programs = '{A77F5D77-2E2B-44C3-A6A2-ABA601054A51}';
const FOLDERID_StartMenu = '{625B53C3-AB48-4EC1-BA1F-A1EF4146FC19}';
const FOLDERID_Recent = '{AE50C081-EBD2-438A-8655-8A092E34987A}';
const FOLDERID_SendTo = '{8983036C-27C0-404B-8F08-102D10DCFD74}';
const FOLDERID_Documents = '{FDD39AD0-238F-46AF-ADB4-6C85480369C7}';
const FOLDERID_Favorites = '{1777F761-68AD-4D8A-87BD-30B759FA33DD}';
const FOLDERID_NetHood = '{C5ABBF53-E17F-4121-8900-86626FC2C973}';
const FOLDERID_PrintHood = '{9274BD8D-CFD1-41C3-B35E-B13F55A758F4}';
const FOLDERID_Templates = '{A63293E8-664E-48DB-A079-DF759E0509F7}';
const FOLDERID_CommonStartup = '{82A5EA35-D9CD-47C5-9629-E15D2F714E6E}';
const FOLDERID_CommonPrograms = '{0139D44E-6AFE-49F2-8690-3DAFCAE6FFB8}';
const FOLDERID_CommonStartMenu = '{A4115719-D62E-491D-AA7C-E74B8BE3B067}';
const FOLDERID_PublicDesktop = '{C4AA340D-F20F-4863-AFEF-F87EF2E6BA25}';
const FOLDERID_ProgramData = '{62AB5D82-FDC1-4DC3-A9DD-070D1D495D97}';
const FOLDERID_CommonTemplates = '{B94237E7-57AC-4347-9151-B08C6C32D1F7}';
const FOLDERID_PublicDocuments = '{ED4824AF-DCE4-45A8-81E2-FC7965083634}';
const FOLDERID_RoamingAppData = '{3EB685DB-65F9-4CF6-A03A-E3EF65729F3D}';
const FOLDERID_LocalAppData = '{F1B32785-6FBA-4FCF-9D55-7B8E7F157091}';
const FOLDERID_LocalAppDataLow = '{A520A1A4-1780-4FF6-BD18-167343C5AF16}';
const FOLDERID_InternetCache = '{352481E8-33BE-4251-BA85-6007CAEDCF9D}';
const FOLDERID_Cookies = '{2B0F765D-C0E9-4171-908E-08A611B84FF6}';
const FOLDERID_History = '{D9DC8A3B-B784-432E-A781-5A1130A75963}';
const FOLDERID_System = '{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}';
const FOLDERID_SystemX86 = '{D65231B0-B2F1-4857-A4CE-A8E7C6EA7D27}';
const FOLDERID_Windows = '{F38BF404-1D43-42F2-9305-67DE0B28FC23}';
const FOLDERID_Profile = '{5E6C858F-0E22-4760-9AFE-EA3317B67173}';
const FOLDERID_Pictures = '{33E28130-4E1E-4676-835A-98395C3BC3BB}';
const FOLDERID_ProgramFilesX86 = '{7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}';
const FOLDERID_ProgramFilesCommonX86 = '{DE974D24-D9C6-4D3E-BF91-F4455120B917}';
const FOLDERID_ProgramFilesX64 = '{6D809377-6AF0-444b-8957-A3773F02200E}';
const FOLDERID_ProgramFilesCommonX64 = '{6365D5A7-0F0D-45e5-87F6-0DA56B6A4F7D}';
const FOLDERID_ProgramFiles = '{905e63b6-c1bf-494e-b29c-65b732d3d21a}';
const FOLDERID_ProgramFilesCommon = '{F7F1ED05-9F6D-47A2-AAAE-29D317C6F066}';
const FOLDERID_UserProgramFiles = '{5cd7aee2-2219-4a67-b85d-6c9ce15660cb}';
const FOLDERID_UserProgramFilesCommon =
    '{bcbd3057-ca5c-4622-b42d-bc56db0ae516}';
const FOLDERID_AdminTools = '{724EF170-A42D-4FEF-9F26-B60E846FBA4F}';
const FOLDERID_CommonAdminTools = '{D0384E7D-BAC3-4797-8F14-CBA229B392B5}';
const FOLDERID_Music = '{4BD8D571-6D19-48D3-BE97-422220080E43}';
const FOLDERID_Videos = '{18989B1D-99B5-455B-841C-AB7C74E4DDFC}';
const FOLDERID_Ringtones = '{C870044B-F49E-4126-A9C3-B52A1FF411E8}';
const FOLDERID_PublicPictures = '{B6EBFB86-6907-413C-9AF7-4FC2ABF07CC5}';
const FOLDERID_PublicMusic = '{3214FAB5-9757-4298-BB61-92A9DEAA44FF}';
const FOLDERID_PublicVideos = '{2400183A-6185-49FB-A2D8-4A392A602BA3}';
const FOLDERID_PublicRingtones = '{E555AB60-153B-4D17-9F04-A5FE99FC15EC}';
const FOLDERID_ResourceDir = '{8AD10C31-2ADB-4296-A8F7-E4701232C972}';
const FOLDERID_LocalizedResourcesDir = '{2A00375E-224C-49DE-B8D1-440DF7EF3DDC}';
const FOLDERID_CommonOEMLinks = '{C1BAE2D0-10DF-4334-BEDD-7AA20B227A9D}';
const FOLDERID_CDBurning = '{9E52AB10-F80D-49DF-ACB8-4330F5687855}';
const FOLDERID_UserProfiles = '{0762D272-C50A-4BB0-A382-697DCD729B80}';
const FOLDERID_Playlists = '{DE92C1C7-837F-4F69-A3BB-86E631204A23}';
const FOLDERID_SamplePlaylists = '{15CA69B3-30EE-49C1-ACE1-6B5EC372AFB5}';
const FOLDERID_SampleMusic = '{B250C668-F57D-4EE1-A63C-290EE7D1AA1F}';
const FOLDERID_SamplePictures = '{C4900540-2379-4C75-844B-64E6FAF8716B}';
const FOLDERID_SampleVideos = '{859EAD94-2E85-48AD-A71A-0969CB56A6CD}';
const FOLDERID_PhotoAlbums = '{69D2CF90-FC33-4FB7-9A0C-EBB0F0FCB43C}';
const FOLDERID_Public = '{DFDF76A2-C82A-4D63-906A-5644AC457385}';
const FOLDERID_ChangeRemovePrograms = '{df7266ac-9274-4867-8d55-3bd661de872d}';
const FOLDERID_AppUpdates = '{a305ce99-f527-492b-8b1a-7e76fa98d6e4}';
const FOLDERID_AddNewPrograms = '{de61d971-5ebc-4f02-a3a9-6c82895e5c04}';
const FOLDERID_Downloads = '{374DE290-123F-4565-9164-39C4925E467B}';
const FOLDERID_PublicDownloads = '{3D644C9B-1FB8-4f30-9B45-F670235F79C0}';
const FOLDERID_SavedSearches = '{7d1d3a04-debb-4115-95cf-2f29da2920da}';
const FOLDERID_QuickLaunch = '{52a4f021-7b75-48a9-9f6b-4b87a210bc8f}';
const FOLDERID_Contacts = '{56784854-C6CB-462b-8169-88E350ACB882}';
const FOLDERID_SidebarParts = '{A75D362E-50FC-4fb7-AC2C-A8BEAA314493}';
const FOLDERID_SidebarDefaultParts = '{7B396E54-9EC5-4300-BE0A-2482EBAE1A26}';
const FOLDERID_PublicGameTasks = '{DEBF2536-E1A8-4c59-B6A2-414586476AEA}';
const FOLDERID_GameTasks = '{054FAE61-4DD8-4787-80B6-090220C4B700}';
const FOLDERID_SavedGames = '{4C5C32FF-BB9D-43b0-B5B4-2D72E54EAAA4}';
const FOLDERID_Games = '{CAC52C1A-B53D-4edc-92D7-6B2E8AC19434}';
const FOLDERID_SEARCH_MAPI = '{98ec0e18-2098-4d44-8644-66979315a281}';
const FOLDERID_SEARCH_CSC = '{ee32e446-31ca-4aba-814f-a5ebd2fd6d5e}';
const FOLDERID_Links = '{bfb9d5e0-c6a9-404c-b2b2-ae6db6af4968}';
const FOLDERID_UsersFiles = '{f3ce0f7c-4901-4acc-8648-d5d44b04ef8f}';
const FOLDERID_UsersLibraries = '{A302545D-DEFF-464b-ABE8-61C8648D939B}';
const FOLDERID_SearchHome = '{190337d1-b8ca-4121-a639-6d472d16972a}';
const FOLDERID_OriginalImages = '{2C36C0AA-5812-4b87-BFD0-4CD0DFB19B39}';
const FOLDERID_DocumentsLibrary = '{7b0db17d-9cd2-4a93-9733-46cc89022e7c}';
const FOLDERID_MusicLibrary = '{2112AB0A-C86A-4ffe-A368-0DE96E47012E}';
const FOLDERID_PicturesLibrary = '{A990AE9F-A03B-4e80-94BC-9912D7504104}';
const FOLDERID_VideosLibrary = '{491E922F-5643-4af4-A7EB-4E7A138D8174}';
const FOLDERID_RecordedTVLibrary = '{1A6FDBA2-F42D-4358-A798-B74D745926C5}';
const FOLDERID_HomeGroup = '{52528A6B-B9E3-4add-B60D-588C2DBA842D}';
const FOLDERID_HomeGroupCurrentUser = '{9B74B6A3-0DFD-4f11-9E78-5F7800F2E772}';
const FOLDERID_DeviceMetadataStore = '{5CE4A5E9-E4EB-479D-B89F-130C02886155}';
const FOLDERID_Libraries = '{1B3EA5DC-B587-4786-B4EF-BD1DC332AEAE}';
const FOLDERID_PublicLibraries = '{48daf80b-e6cf-4f4e-b800-0e69d84ee384}';
const FOLDERID_UserPinned = '{9e3995ab-1f9c-4f13-b827-48b24b6c7174}';
const FOLDERID_ImplicitAppShortcuts = '{bcb5256f-79f6-4cee-b725-dc34e402fd46}';
const FOLDERID_AccountPictures = '{008ca0b1-55b4-4c56-b8a8-4de4b299d3be}';
const FOLDERID_PublicUserTiles = '{0482af6c-08f1-4c34-8c90-e17ec98b1e17}';
const FOLDERID_AppsFolder = '{1e87508d-89c2-42f0-8a7e-645a0f50ca58}';
const FOLDERID_StartMenuAllPrograms = '{F26305EF-6948-40B9-B255-81453D09C785}';
const FOLDERID_CommonStartMenuPlaces = '{A440879F-87A0-4F7D-B700-0207B966194A}';
const FOLDERID_ApplicationShortcuts = '{A3918781-E5F2-4890-B3D9-A7E54332328C}';
const FOLDERID_RoamingTiles = '{00BCFC5A-ED94-4e48-96A1-3F6217F21990}';
const FOLDERID_RoamedTileImages = '{AAA8D5A5-F1D6-4259-BAA8-78E7EF60835E}';
const FOLDERID_Screenshots = '{b7bede81-df94-4682-a7d8-57a52620b86f}';
const FOLDERID_CameraRoll = '{AB5FB87B-7CE2-4F83-915D-550846C9537B}';
const FOLDERID_SkyDrive = '{A52BBA46-E9E1-435f-B3D9-28DAA648C0F6}';
const FOLDERID_OneDrive = '{A52BBA46-E9E1-435f-B3D9-28DAA648C0F6}';
const FOLDERID_SkyDriveDocuments = '{24D89E24-2F19-4534-9DDE-6A6671FBB8FE}';
const FOLDERID_SkyDrivePictures = '{339719B5-8C47-4894-94C2-D8F77ADD44A6}';
const FOLDERID_SkyDriveMusic = '{C3F2459E-80D6-45DC-BFEF-1F769F2BE730}';
const FOLDERID_SkyDriveCameraRoll = '{767E6811-49CB-4273-87C2-20F355E1085B}';
const FOLDERID_SearchHistory = '{0D4C3DB6-03A3-462F-A0E6-08924C41B5D4}';
const FOLDERID_SearchTemplates = '{7E636BFE-DFA9-4D5E-B456-D7B39851D8A9}';
const FOLDERID_CameraRollLibrary = '{2B20DF75-1EDA-4039-8097-38798227D5B7}';
const FOLDERID_SavedPictures = '{3B193882-D3AD-4eab-965A-69829D1FB59F}';
const FOLDERID_SavedPicturesLibrary = '{E25B5812-BE88-4bd9-94B0-29233477B6C3}';
const FOLDERID_RetailDemo = '{12D4C69E-24AD-4923-BE19-31321C43A767}';
const FOLDERID_Device = '{1C2AC1DC-4358-4B6C-9733-AF21156576F0}';
const FOLDERID_DevelopmentFiles = '{DBE8E08E-3053-4BBC-B183-2A7B2B191E59}';
const FOLDERID_Objects3D = '{31C0DD25-9439-4F12-BF41-7FF4EDA38722}';
const FOLDERID_AppCaptures = '{EDC0FE71-98D8-4F4A-B920-C8DC133CB165}';
const FOLDERID_LocalDocuments = '{f42ee2d3-909f-4907-8871-4c22fc0bf756}';
const FOLDERID_LocalPictures = '0ddd015d-b06c-45d5-8c4c-f59713854639 }';
const FOLDERID_LocalVideos = '{35286a68-3c57-41a1-bbb1-0eae73d76c95}';
const FOLDERID_LocalMusic = '{a0c69a99-21c8-4671-8703-7934162fcf1d}';
const FOLDERID_LocalDownloads = '{7d83ee9b-2244-4e70-b1f5-5393042af1e4}';
const FOLDERID_RecordedCalls = '{2f8b40c2-83ed-48ee-b383-a1f157ec6f9a}';
const FOLDERID_AllAppMods = '{7ad67899-66af-43ba-9156-6aad42e6c596}';
const FOLDERID_CurrentAppMods = '{3db40b20-2a30-4dbe-917e-771dd21dd099}';
const FOLDERID_AppDataDesktop = '{B2C5E279-7ADD-439F-B28C-C41FE1BBF672}';
const FOLDERID_AppDataDocuments = '{7BE16610-1F7F-44AC-BFF0-83E15F2FFCA1}';
const FOLDERID_AppDataFavorites = '{7CFBEFBC-DE1F-45AA-B843-A542AC536CC9}';
const FOLDERID_AppDataProgramData = '{559D40A3-A036-40FA-AF61-84CB430A4D34}';
