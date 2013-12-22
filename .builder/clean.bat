@echo off

if not %builder_starts%==1 goto :EOF
if exist %repo_name% RD /S /Q %repo_name%
