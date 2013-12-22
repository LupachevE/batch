@echo off

if not %builder_starts%==1 goto :EOF

if %fail%==0 goto :fail_with_zero 

echo %email_subject%

blat -body " " -tf %email_list% -server %mail_serv% -f %mail_addr% -subject "Building %proj_name%. %email_subject%." -atf %err_file%>%email_log%

goto :EOF

:fail_with_zero
blat -body " " -tf %email_list% -server %mail_serv% -f %mail_addr% -subject "Building %proj_name%. %email_subject%.">%email_log%
