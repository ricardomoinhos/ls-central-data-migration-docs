---
hide:
  - navigation
---

# New-UpgradeInitializationScript Wizard - Step by Step - v14 to v25 example

This page walks through each step of the `New-UpgradeInitializationScript` wizard, showing the prompts and example input values for an upgrade from version 14 to LS Central 25.

**SQL Server**

> ```
>  _____  ____  _         _____
> / ____|/ __ \| |       / ____|
> | (___ | |  | | |      | (___   ___ _ ____   _____ _ __
> \___ \| |  | | |       \___ \ / _ | '__\ \ / / _ | '__|
>  ____) | |__| | |____   ____) |  __| |   \ V |  __| |
> |_____/ \___\_|______| |_____/ \___|_|    \_/ \___|_|
> ```
>
> Enter the name of the SQL Server (and the SQL Server Instance, when applied).
>
> Example: localhost or localhost\MSSQLSERVER, where localhost would be the SQL Server and MSSQLSERVER would be the instance.
>
> ! accept default answers for the remaining questions  
> Enter x to start over  
> Enter z to go back  
>
> SQL Server name: (default localhost) localhost\SQL2019
>
> <font color="green">**localhost\sql2019 selected**</font>


**Database**

> ```
>  _____        _        _
> |  __ \      | |      | |
> | |  | | __ _| |_ __ _| |__   __ _ ___  ___
> | |  | |/ _` | __/ _` | '_ \ / _` / __|/ _ \
> | |__| | (_| | |_ (_| | |_) | (_| \__ \  __/
> |_____/ \__,_|\__\__,_|_.__/ \__,_|___/\___|
> ```
>
> Enter the name of the database that's going to be upgraded.
>
> Enter x to start over  
> Enter z to go back
>
> Database Name: ls-w1-14-02-upg
>
> <font color="green">**ls-w1-14-02-upg selected**</font>


**From LS Version**
> ```
>  ______                       _        _____ __      __               _
> |  ____|                     | |      / ____|\ \    / /              (_)
> | |__  _ __  ___   _ __ ___  | |     | (___   \ \  / /___  _ __  ___  _   ___   _ __
> |  __|| '__|/ _ \ | '_ ` _ \ | |      \___ \   \ \/ // _ \| '__|/ __|| | / _ \ | '_ \
> | |   | |  | (_) || | | | | || |____  ____) |   \  /|  __/| |   \__ \| || (_) || | | |
> |_|   |_|   \___/ |_| |_| |_||______||_____/     \/  \___||_|   |___/|_| \___/ |_| |_|
> ```
> 
> What version of LS Central are you upgrading from?
> 
> ! accept default answers for the remaining questions  
> Enter x to start over  
> Enter z to go back  
> 
> From LS Version: (14.2, 15.0, 15.1, 15.2, 15.3, 16.0, 16.1, 16.2, 16.3, 16.4, 17.0, 17.1, 17.2, 17.3, 17.4, 17.5, 18.0, 18.1, 18.2, 18.3) (default 14.2)
> 
> <font color="green">**14.2 selected**</font>


**From BC Version**
> ```
>  ______                       ____    _____ __      __               _
> |  ____|                     |  _ \  / ____|\ \    / /              (_)
> | |__  _ __  ___   _ __ ___  | |_) || |      \ \  / /___  _ __  ___  _   ___   _ __
> |  __|| '__|/ _ \ | '_ ` _ \ |  _ < | |       \ \/ // _ \| '__|/ __|| | / _ \ | '_ \
> | |   | |  | (_) || | | | | || |_) || |____    \  /|  __/| |   \__ \| || (_) || | | |
> |_|   |_|   \___/ |_| |_| |_||____/  \_____|    \/  \___||_|   |___/|_| \___/ |_| |_|
> ```
> 
> What version of Business Central are you upgrading from?
> 
> a Specific Business Central OnPrem build (requires version number)
> 
> ! accept default answers for the remaining questions  
> x start over  
> z go back
> 
> From BC Version (default a)
> 
> <font color="green">**Specific Business Central OnPrem build (requires version number) selected**</font>


**From BC Version (2nd step)**

> Specify version number.  
> If you specify a full version number (like 15.4.41023.41345), you will get the closest version.  
> If multiple versions matches the entered value, you will be asked to select
>
> Enter x to start over  
> Enter z to go back  
>
> Enter version number (format major\[.minor\[.build\[.release\]\]\]) 14.28
>
> <font color="green">**14.28 selected**</font>


**From Server Instance Name**
> ```
>  ______                        _____                              _____              _                            _   _
> |  ____|                      / ____|                            |_   _|            | |                          | \ | |
> | |__  _ __  ___   _ __ ___  | (___    ___  _ __ __   __ ___  _ __ | |   _ __   ___ | |_  __ _  _ __    ___  ___ |  \| |  __ _  _ __ ___    ___
> |  __|| '__|/ _ \ | '_ ` _ \  \___ \  / _ \| '__|\ \ / // _ \| '__|| |  | '_ \ / __|| __|/ _` || '_ \  / __|/ _ \| . ` | / _` || '_ ` _ \  / _ \
> | |   | |  | (_) || | | | | | ____) ||  __/| |    \ V /|  __/| |  _| |_ | | | |\__ \| |_| (_| || | | || (__|  __/| |\  || (_| || | | | | ||  __/
> |_|   |_|   \___/ |_| |_| |_||_____/  \___||_|     \_/  \___||_| |_____||_| |_||___/ \__|\__,_||_| |_| \___|\___||_| \_| \__,_||_| |_| |_| \___|
> ```
>
> Enter the name of the NAV/BC server instance name for the original NAV/BC version.
>
> Enter x to start over  
> Enter z to go back  
>
> Original NAV/BC version Service Instance Name: BC140
>
> <font color="green">**BC140 selected**</font>


**From BC Server Path**
> ```
>  ______                       ____    _____   _____                                _____        _    _
> |  ____|                     |  _ \  / ____| / ____|                              |  __ \      | |  | |
> | |__  _ __  ___   _ __ ___  | |_) || |     | (___    ___  _ __ __   __ ___  _ __ | |__) |__ _ | |_ | |__
> |  __|| '__|/ _ \ | '_ ` _ \ |  _ < | |      \___ \  / _ \| '__|\ \ / // _ \| '__||  ___// _` || __|| '_ \
> | |   | |  | (_) || | | | | || |_) || |____  ____) ||  __/| |    \ V /|  __/| |   | |   | (_| || |_ | | | |
> |_|   |_|   \___/ |_| |_| |_||____/  \_____||_____/  \___||_|     \_/  \___||_|   |_|    \__,_| \__||_| |_|
> ```
> 
> Enter the path for the NAV/BC service version you're upgrading from. Example: C:\Program Files\Microsoft Dynamics 365 Business Central\140
> 
> ! accept default answers for the remaining questions  
> Enter x to start over  
> Enter z to go back
> 
> From BC Server Path: (default C:\Program Files\Microsoft Dynamics 365 Business Central\140)
> 
> <font color="green">**C:\Program Files\Microsoft Dynamics 365 Business Central\140 selected**</font>


**From BC Client Path**

> ```
>  ______                       ____    _____  _____  _  _               _    _____        _    _
> |  ____|                     |  _ \  / ____|/ ____|| |(_)             | |  |  __ \      | |  | |
> | |__  _ __  ___   _ __ ___  | |_) || |    | |     | | _   ___  _ __  | |_ | |__) |__ _ | |_ | |__
> |  __|| '__|/ _ \ | '_ ` _ \ |  _ < | |    | |     | || | / _ \| '_ \ | __||  ___// _` || __|| '_ \
> | |   | |  | (_) || | | | | || |_) || |____| |____ | || ||  __/| | | || |_ | |   | (_| || |_ | | | |
> |_|   |_|   \___/ |_| |_| |_||____/  \_____|\_____||_||_| \___||_| |_| \__||_|    \__,_| \__||_| |_|
> ```
>
> Enter the path for the BC roletailored client version you're upgrading from. Example: C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\140
>
> ! accept default answers for the remaining questions
> Enter x to start over
> Enter z to go back
>
> From BC Roletailored Client Path: (default C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\140)
>
> <font color="green">**C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\140 selected**</font>

**To LS Version**
> ```
>  _______      _        _____ __      __               _
> |__   __|    | |      / ____|\ \    / /              (_)
>    | |  ___  | |     | (___   \ \  / /___  _ __  ___  _   ___   _ __
>    | | / _ \ | |      \___ \   \ \/ // _ \| '__|/ __|| | / _ \ | '_ \
>    | || (_) || |____  ____) |   \  /|  __/| |   \__ \| || (_) || | | |
>    |_| \___/ |______||_____/     \/  \___||_|   |___/|_| \___/ |_| |_|
> ```
> 
> What version of LS Central are you upgrading to?
> 
> ! accept default answers for the remaining questions  
> Enter x to start over  
> Enter z to go back
> 
> To LS Version: (24.0, 24.1) (default 24.1)
> 
> <font color="green">**24.0 selected**</font>


**To BC Version**
> ```
>  _______      ____    _____ __      __               _
> |__   __|    |  _ \  / ____|\ \    / /              (_)
>    | |  ___  | |_) || |      \ \  / /___  _ __  ___  _   ___   _ __
>    | | / _ \ |  _ < | |       \ \/ // _ \| '__|/ __|| | / _ \ | '_ \
>    | || (_) || |_) || |____    \  /|  __/| |   \__ \| || (_) || | | |
>    |_| \___/ |____/  \_____|    \/  \___||_|   |___/|_| \___/ |_| |_|
> ```
> 
> What version of Business Central are you upgrading to?
> 
> a Specific Business Central OnPrem build (requires version number)
> 
> ! accept default answers for the remaining questions  
> x start over  
> z go back
> 
> To BC Version: (default a)
> 
> <font color="green">**Specific Business Central OnPrem build (requires version number) selected**</font>


**To BC Version (2nd Step)**

> Specify version number.  
> If you specify a full version number (like 15.4.41023.41345), you will get the closest version.  
> If multiple versions matches the entered value, you will be asked to select
>
> Enter x to start over  
> Enter z to go back
>
> Enter version number (format major\[.minor\[.build\[.release\]\]\]) 24.0
>
> <font color="green">**24.0 selected**</font>



**To Server Instance Name**

> ```
>  _______      _____                              _____              _                            _   _
> |__   __|    / ____|                            |_   _|            | |                          | \ | |
>    | |  ___ | (___    ___  _ __ __   __ ___  _ __ | |   _ __   ___ | |_  __ _  _ __    ___  ___ |  \| |  __ _  _ __ ___    ___
>    | | / _ \ \___ \  / _ \| '__|\ \ / // _ \| '__|| |  | '_ \ / __|| __|/ _` || '_ \  / __|/ _ \| . ` | / _` || '_ ` _ \  / _ \
>    | || (_) |____) ||  __/| |    \ V /|  __/| |  _| |_ | | | |\__ \| |_| (_| || | | || (__|  __/| |\  || (_| || | | | | ||  __/
>    |_| \___/|_____/  \___||_|     \_/  \___||_| |_____||_| |_||___/ \__|\__,_||_| |_| \___|\___||_| \_| \__,_||_| |_| |_| \___|
> ```
>
> Enter the name of the BC server instance name for the new BC version
>
> Enter x to start over  
> Enter z to go back
>
> New BC version Service Instance Name: BC240
>
> <font color="green">**BC240 selected**</font>

**To BC Server Path**

> ```
> _______      ____    _____   _____                                _____        _    _
> |__   __|    |  _ \  / ____| / ____|                              |  __ \      | |  | |
>    | |  ___  | |_) || |     | (___    ___  _ __ __   __ ___  _ __ | |__) |__ _ | |_ | |__
>    | | / _ \ |  _ < | |      \___ \  / _ \| '__|\ \ / // _ \| '__||  ___// _` || __|| '_ \
>    | || (_) || |_) || |____  ____) ||  __/| |    \ V /|  __/| |   | |   | (_| || |_ | | | |
>    |_| \___/ |____/  \_____||_____/  \___||_|     \_/  \___||_|   |_|    \__,_| \__||_| |_|
> ```
> 
> Enter the path for the NAV/BC service version you're upgrading to. Example: C:\Program Files\Microsoft Dynamics 365 Business Central\240
> 
> ! accept default answers for the remaining questions  
> Enter x to start over  
> Enter z to go back
> 
> To BC Server Path: (default C:\Program Files\Microsoft Dynamics 365 Business Central\240)
> 
> <font color="green">**C:\Program Files\Microsoft Dynamics 365 Business Central\240 selected**</font>


**Custom Extensions**
> ```
>  _____             _                     ______        _                     _
> / ____|           | |                   |  ____|      | |                   (_)
> | |     _   _  ___ | |_  ___   _ __ ___  | |__   __  __| |_  ___  _ __   ___  _   ___   _ __   ___
> | |    | | | |/ __|| __|/ _ \ | '_ ` _ \ |  __|  \ \/ /| __|/ _ \| '_ \ / __|| | / _ \ | '_ \ / __|
> | |____| |_| |\__ \| |_| (_) || | | | | || |____  >  < | |_|  __/| | | |\__ \| || (_) || | | |\__ \
> \_____|\__,_||___/ \__|\___/ |_| |_| |_||______|/_/\_\ \__|\___||_| |_||___/|_| \___/ |_| |_||___/
> ```
> 
> If you have customization extensions then you can automatically add those to the migration script.
> 
> Custom extensions:
> 
> a Add custom extension  
> b Remove custom extension  
> c Continue to next step.
> 
> ! accept default answers for the remaining questions  
> x start over  
> z go back
> 
> Do you want to add or remove custom extensions to the script? (default c)

Add your custom extensions if applicable.

**Multitenancy**

> ```
> __  __         _  _    _  _
> |  \/  |       | || |  (_)| |
> | \  / | _   _ | || |_  _ | |_  ___  _ __    __ _  _ __    ___  _   _
> | |\/| || | | || || __|| || __|/ _ \| '_ \  / _` || '_ \  / __|| | | |
> | |  | || |_| || || |_ | || |_|  __/| | | || (_| || | | || (__ | |_| |
> |_|  |_| \__,_||_| \__||_| \__|\___||_| |_| \__,_||_| |_| \___| \__, |
>                                                                  __/ |
>                                                                  |___/
> ```
>
> Indicate if you're setting up a single or multitenant environment.
>
> a Yes, it's a multi tenant environment.  
> b No, it's a single tenant environment.
>
> ! accept default answers for the remaining questions  
> x start over  
> z go back
>
> Are you setting up a multitenancy environment? (default b)

## Related

- [Back to upgrade guide](v14-to-v25.md)
