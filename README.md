# Dockerized Guestbook for GKE - based on https://github.com/fredrikj31/PHP-Guestbook

This guestbook is made for new beginners to PHP, and is focused to make people learn from it. Or maybe you just want to use it as a guestbook. You can do whatever you want with it. 

You can see a preview of the guestbook here:

![Preview of guestbook](https://raw.githubusercontent.com/fredrikj31/PHP-Guestbook/master/Preview1.PNG)

It is dockerized for use in Google Kubernetes Engine.

## Deployment

#### GCP configuration

These are the steps I took to make the setup work:
- Created a project
- Created a normal GKE instance (no autopilot) in my project
- Created a SQL Instance which was MySQL 8.0 in my project
- Enabled Cloud Registry API in my project
- In order to build my docker image and insert secrets into my dockerfile, I've made a secrets file and placed it in the same folder as my dockerfile (which is actually the src/settings.php with credentials filled in.)
- I built and pushed my image to GCR.
- Created a Deployment in GKE.
- Exposed my deployment.


#### Initialization of SQL database

You need to access your database (using DBeaver or whatever), and then you click import and then upload/execute the sql code in `guestbook.sql` file.

## Usage

You is needed to edit these line of code to you database information. This code is located in the settings.php

The code looks like this:

```php
<?php
    //Database settings
    $dbhost = "localhost"; //Database host
    $dbuser = "root"; //Database username
    $dbpassword = ""; //Database Password. Leave blank for no password!
    $dbname = "guestbook"; //Database Name;

    //General Settings
    $sitename = "Guestbook"; //Website Name;
?>
```

You can edit the website name to your own website name if you want to use it as a normal guestbook. 


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.


## License
[Fredrik Johansen](https://github.com/fredrikj31)
[Parsa Asgari](https://github.com/parsa-asgari)

