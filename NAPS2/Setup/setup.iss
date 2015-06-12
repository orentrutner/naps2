; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define AppVersion "3.3.1"

[Setup]
AppName=NAPS2 (Not Another PDF Scanner 2)
AppVerName=NAPS2 {#AppVersion}
AppPublisher=Ben Olden-Cooligan
AppPublisherURL=http://www.sourceforge.net/projects/naps2
AppSupportURL=http://www.sourceforge.net/projects/naps2
AppUpdatesURL=http://www.sourceforge.net/projects/naps2
DefaultDirName={pf}\NAPS2
DefaultGroupName=NAPS2
OutputDir=../publish/{#AppVersion}
OutputBaseFilename=naps2-{#AppVersion}-setup       
Compression=lzma
SolidCompression=yes

LicenseFile=license.txt     
UninstallDisplayIcon={app}\scanner-app.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]                              
#include "setup.languagefiles.iss"                                                          
Source: "..\bin\InstallerEXE\NAPS2.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\NAPS2.Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\PdfSharp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\Interop.WIA.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\Ninject.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\NLog.dll"; DestDir: "{app}"; Flags: ignoreversion     
Source: "..\bin\InstallerEXE\NTwain.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\NAPS2.Core\Resources\scanner-app.ico"; DestDir: "{app}"; Flags: ignoreversion 
Source: "..\appsettings.xml"; DestDir: "{app}"; Flags: ignoreversion           
Source: "license.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\NAPS2.Console\bin\InstallerEXE\NAPS2.Console.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\NAPS2.Console\bin\InstallerEXE\CommandLine.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\wiaaut.dll"; DestDir: "{sys}"; Flags: regserver

[Icons]
Name: "{group}\NAPS2"; Filename: "{app}\NAPS2.exe"
Name: "{commondesktop}\NAPS2"; Filename: "{app}\NAPS2.exe"; Tasks: desktopicon

