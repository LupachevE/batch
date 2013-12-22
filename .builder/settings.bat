@echo off

if %builder_starts%==0 goto :EOF

set repo_name=Csharphomework
set proj_name=Somethingstrange

set msbuildpath="C:\Program Files (x86)\MSBuild\Microsoft\VisualStudio\v11.0\Bin"
set blatpath="C:\Users\Евгений\Downloads\Мусор"

set fail=0
set github_fail=0
set build_fail=0
set err_file="error.log"

set email_message=""
set email_sender=
set email_subject=""
set email_list=emails.txt
set email_log=""

set bin_list=binlist.txt

set mail_addr="jon-apa4@mail.ru"
set mail_pass="1111qwerty"
set mail_serv=smtp.mail.ru
