# Bookstack-HTTPS-Shell-script-Ubuntu.
# PLEASE READ README AND USE THE CODE VIEW NOT PREVIEW:
This is a simple shell script for a bash terminal to download Bookstack on Ubuntu and Make it Https right away:
Note: 
as it stands since your mail is different than everyone elses the server's mail is not set up so making accounts is not possible.
If you want to setup accounts you have to change the .env file further you should edit these segments:
MAIL_DRIVER= (Set the driver you want to use like smtp or sendmail)
MAIL_FROM= ( This is the email it sends it from example of what to put, Dummy@gmail.com) 
MAIL_HOST= (Should be set to the mailserver used, example smtp.gmail.com)
MAIL_PORT= (Ensure it is correct for SMTP it should be 587 typically)
MAIL_USERNAME= (The username should be the same as your MAIL_FROM)
MAIL_PASSWORD= (This is the App specific password for your sending mail so typically you would need 2FA and a APP password for bookstack)
MAIL_ENCRYPTION= (This you want to set to your prefered type that matches your sender mail my preferred use here is TLS)
