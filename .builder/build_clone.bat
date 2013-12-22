@echo off

if not %builder_starts%==1 goto :EOF

git clone https://github.com/LupachevE/%repo_name%.git>nul 2>%err_file%
if errorlevel 1 goto :fail_in_git
MSBuild.exe %repo_name%/%proj_name%.sln>%err_file%
if not %ERRORLEVEL%==0  goto :fail_in_build

set email_message="Build successed"
goto :EOF

:fail_in_git
set github_fail=1
set fail=1
goto :EOF

:fail_in_build
set build_fail=1
set fail=1
goto :EOF
