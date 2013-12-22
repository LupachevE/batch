@echo off

if not %builder_starts%==1 goto :EOF
if %github_fail%==1 goto :fail_in_git
if %build_fail%==1 goto :fail_in_build
echo No fail
goto :EOF

:fail_in_git
set email_message="Github failed, error log is in attachment."
goto :EOF

:fail_in_build
set email_message="Build failed, error log is in attachment."
goto :EOF
