; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define public Dependency_NoExampleSetup
#include "CodeDependencies.iss"

;#define UDB_arch "x64"
#define UDB_GetVersionString() \
  Local[0] = GetVersionNumbersString("..\Build\Builder.exe"), \
  Delete(Local[0], 0, RPos(".", Local[0])+1), \
  "R" + Local[0]

[Setup]
AppName=Ultimate Doom Builder
AppVersion={#UDB_GetVersionString} ({#UDB_arch})
;AppVerName=Ultimate Doom Builder {#UDB_GetVersionString} ({#UDB_arch})
AppPublisher=ZZYZX
AppPublisherURL=https://forum.zdoom.org/memberlist.php?mode=viewprofile&u=7527
AppSupportURL=https://forum.zdoom.org/viewtopic.php?f=232&t=66745
AppUpdatesURL=https://ultimatedoombuilder.github.io/
DefaultDirName={userpf}\Ultimate Doom Builder
DefaultGroupName=Ultimate Doom Builder
AllowNoIcons=true
LicenseFile=..\LICENSE.txt
OutputDir=..\Release
OutputBaseFilename=Setup
Compression=lzma/ultra64
SolidCompression=true
SourceDir=..\Build
SetupLogging=false
AppMutex=ultimatedoombuilder
PrivilegesRequired=lowest
ShowLanguageDialog=no
LanguageDetectionMethod=none
MinVersion=0,6.1sp1
UninstallDisplayIcon={app}\Updater.exe
WizardImageFile=..\Setup\WizModernImage-IS.bmp
WizardSmallImageFile=..\Setup\WizModernSmallImage-IS.bmp
#if UDB_arch != "x86"
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64
#endif

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: Builder.exe; DestDir: {app}; Flags: ignoreversion
Source: Builder.pdb; DestDir: {app}; Flags: ignoreversion
Source: Builder.exe.config; DestDir: {app}; Flags: ignoreversion
Source: UDBuilder.default.cfg; DestDir: {app}; Flags: ignoreversion
Source: Updater.exe; DestDir: {app}; Flags: ignoreversion
Source: Updater.ini; DestDir: {app}; Flags: ignoreversion
Source: Refmanual.chm; DestDir: {app}; Flags: ignoreversion
Source: BuilderNative.dll; DestDir: {app}; Flags: ignoreversion
Source: BuilderNative.pdb; DestDir: {app}; Flags: ignoreversion
Source: SharpCompress.dll; DestDir: {app}; Flags: ignoreversion
Source: ScintillaNET.dll; DestDir: {app}; Flags: ignoreversion
Source: TabControlEX.dll; DestDir: {app}; Flags: ignoreversion
Source: System.Buffers.dll; DestDir: {app}; Flags: ignoreversion
Source: System.Memory.dll; DestDir: {app}; Flags: ignoreversion
Source: System.Numerics.Vectors.dll; DestDir: {app}; Flags: ignoreversion
Source: System.Runtime.CompilerServices.Unsafe.dll; DestDir: {app}; Flags: ignoreversion
Source: LICENSE.txt; DestDir: {app}; Flags: ignoreversion
Source: Compilers\*; DestDir: {app}\Compilers; Flags: ignoreversion recursesubdirs
Source: Configurations\*; DestDir: {app}\Configurations; Flags: ignoreversion recursesubdirs
Source: Scripting\*; DestDir: {app}\Scripting; Flags: ignoreversion recursesubdirs
Source: Snippets\*; DestDir: {app}\Snippets; Flags: ignoreversion recursesubdirs
Source: UDBScript\udbscript.d.ts; DestDir: {app}\UDBScript; Flags: ignoreversion
Source: UDBScript\Libraries\*; DestDir: {app}\UDBScript\Libraries; Flags: ignoreversion recursesubdirs
Source: UDBScript\Scripts\Examples\*; DestDir: {app}\UDBScript\Scripts\Examples; Flags: ignoreversion recursesubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: Plugins\AutomapMode.dll; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\AutomapMode.pdb; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\BuilderModes.dll; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\BuilderModes.pdb; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\BuilderEffects.dll; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\BuilderEffects.pdb; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\ColorPicker.dll; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\ColorPicker.pdb; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\CommentsPanel.dll; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\CommentsPanel.pdb; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\NodesViewer.dll; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\NodesViewer.pdb; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\SoundPropagationMode.dll; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\SoundPropagationMode.pdb; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\StairSectorBuilder.dll; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\StairSectorBuilder.pdb; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\TagExplorer.dll; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\TagExplorer.pdb; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\TagRange.dll; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\TagRange.pdb; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\ThreeDFloorMode.dll; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\ThreeDFloorMode.pdb; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\UDBScript.dll; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\UDBScript.pdb; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\VisplaneExplorer.dll; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\VisplaneExplorer.pdb; DestDir: {app}\Plugins; Flags: ignoreversion
Source: Plugins\Loadorder.cfg; DestDir: {app}\Plugins; Flags: ignoreversion onlyifdoesntexist
Source: Plugins\Dependencies\*; DestDir: {app}\Plugins\Dependencies; Flags: ignoreversion
Source: Sprites\*; DestDir: {app}\Sprites; Flags: ignoreversion recursesubdirs
Source: Textures\*; DestDir: {app}\Textures; Flags: ignoreversion

[Icons]
Name: {group}\Ultimate Doom Builder; Filename: {app}\Builder.exe
Name: {group}\{cm:UninstallProgram,Ultimate Doom Builder}; Filename: {uninstallexe}
Name: {autodesktop}\Ultimate Doom Builder; Filename: {app}\Builder.exe; Tasks: desktopicon

[Run]
Filename: {app}\Builder.exe; Description: Run {#SetupSetting("AppName")}; Flags: postinstall skipifsilent

[UninstallDelete]
Name: {app}; Type: filesandordirs

;[InstallDelete]
;Name: {app}\Builder.pdb; Type: files
;Name: {app}\Builder.xml; Type: files

[Registry]
Root: HKCU; Subkey: SOFTWARE\Ultimate Doom Builder\; ValueType: string; ValueName: Location; ValueData: {app}; Flags: uninsdeletevalue

[Messages]
ReadyLabel2a=Continue to begin with the installation, or click Back if you want to review or change any settings.

[Code]
// When the wizard initializes
procedure InitializeWizard();
begin
  // .Net and VC Redistributables. Those come from CodeDependencies.iss
  Dependency_AddDotNet47;
  //Dependency_AddVC2015To2022;
end;

//Remove configs?
procedure DeinitializeUninstall();
begin
	if MsgBox('Delete map restore data and program configuration files?', mbConfirmation, MB_YESNO) = IDYES then
	begin
		// Remove restore data
		DelTree(ExpandConstant('{localappdata}\Doom Builder\Restore'), True, True, True);

		// Remove configs
		DeleteFile(ExpandConstant('{localappdata}\Doom Builder\UDBuilder.cfg'));
		DeleteFile(ExpandConstant('{localappdata}\Doom Builder\UDBuilder.log'));
		DeleteFile(ExpandConstant('{localappdata}\Doom Builder\UDBCrash.txt'));
	end;
end;