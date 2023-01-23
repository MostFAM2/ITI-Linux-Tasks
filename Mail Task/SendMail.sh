#!/bin/bash
clear

sudo apt install mailutils

sudo apt install ssmtp

sudo nano /etc/ssmtp/ssmtp.conf

<<comment
Do Some Configurations to setup mail
====================================


# Config file for sSMTP sendmail
#
# The person who gets all mail for userids < 1000
# Make this empty to disable rewriting.
root=YourEmail@gmail.com

# The place where the mail goes. The actual machine name is required no 
# MX records are consulted. Commonly mailhosts are named mail.domain.com
mailhub=smtp.gmail.com:587

AuthUser=YourEmail@gmail.com
AuthPass=Application_Password_From_Gmail
UseTLS=YES
UseSTARTTLS=YES

# Where will the mail seem to come from?
#rewriteDomain=
rewriteDomain=gmail.com

# The full hostname
hostname=Your_Machine_Hostname

# Are users allowed to set their own From: address?
# YES - Allow the user to specify their own From: address
# NO - Use the system generated From: address
# FromLineOverride=YES
FromLineOverride=YES

comment

#Send Norml Mail Without Attachment
#=================================
mail -s "SendTest" AnyMail@gmail.com 
cc:

# Here You Can Write Mail Body

Hello From Ubuntu Terminal 
This is Test Mail

# then Press Ctrl+d
#===================

#Send Mail With Attachment
#=================================
mail -s "SendTest" -A PowerErrorLog.txt AnyMail@gmail.com 


