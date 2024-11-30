# Bookstack-HTTPS-Shell-Script-Ubuntu
## PLEASE READ THE README AND USE THE CODE VIEW, NOT PREVIEW

This is a simple shell script designed for a Bash terminal to download and install Bookstack on Ubuntu, setting up HTTPS right away.

### Important Notes:
As it currently stands, the server's mail configuration is not set up, so creating accounts is not possible. If you wish to enable account creation, you must modify the `.env` file and update the following fields:

- `MAIL_DRIVER` – Set the mail driver you want to use (e.g., `smtp` or `sendmail`).
- `MAIL_FROM` – Specify the email address the system will use to send emails (e.g., `Dummy@gmail.com`).
- `MAIL_HOST` – Configure this to the mail server being used (e.g., `smtp.gmail.com`).
- `MAIL_PORT` – Ensure the port is correct (typically `587` for SMTP).
- `MAIL_USERNAME` – Use the same email address as specified in `MAIL_FROM`.
- `MAIL_PASSWORD` – Enter the app-specific password for your email account. (Note: You may need to enable 2FA on your email account and generate an app password for Bookstack.)
- `MAIL_ENCRYPTION` – Set this to your preferred encryption type, matching your email provider. (e.g., `TLS` is recommended.)

Make these changes to ensure email functionality works properly.
