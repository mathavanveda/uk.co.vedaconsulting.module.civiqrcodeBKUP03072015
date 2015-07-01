CiviQRCode
==========


TO Install
-----------

Navigate to Administer > Manage extensions 

Find the extensions and click install.

Extension update your database with custom table , which is use to manage the QRCode settings



Post Install
--------------

Once the Extensions successfully installed, you can find the navigation menu Administer > QR Code Token Settings

This link would take you to view list of QRcode settings. Click 'Add one' to add new token. 

You can manage the token by using 'Edit' & 'Delete' link which display right side of each row. 


NOTES
------

Find the Variable Name for the each token in Administer > QR Code Token Settings, which use to replace token values in Word template. 

1) Add the dummy image in word template (dummy image name should be Token name, For eg: token name is 'qrcode', then dummy image name should be 'qrcode.png')
2) Find and Copy the Variable Name of token From CiviCRM > Administer > QR Code Token Settings, copy the variable name which you want to replace in word template
3) Paste the Varibale Name into the word template (next to the dummy image) and save it. 



