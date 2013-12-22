@echo off

set builder_starts=1
chcp 1252
set config_folder=.builder

call %config_folder%\settings.bat

set PATH=%PATH%;%msbuildpath%;%blatpath%

call %config_folder%\clean.bat
call %config_folder%\build_clone.bat

call %config_folder%\fail.bat

call %config_folder%\mail_send.bat
call %config_folder%\rm_tmp.bat
