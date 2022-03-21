[**< Tilbake til forsiden**](index.md)

## Lage bruker

**Åpne server Manager**

<img src="Images\win_server_mngr.png" title="" alt="" width="512">

**Trykk Tools**

![](Images\win_server_mngr_tools.png)

**Trykk Active Directory Users and Computers**

**Trykk på OU-en den nye brukeren hører til**

![](Images\win_server_aduc.png)

**Høyreklikk en bruker**

**Trykk `Copy...`**

**Fyll ut informasjonen til den nye brukeren**

![](Images\win_server_aduc_user.png)

_Husk å bruke navnestandarden_

**Bilder hentet fra:**

[Basiskonfigurasjon av Windows Server - Informasjonsteknologi (IM-ITK vg2) - BETA - NDLA](https://ndla.no/subject:1:83cd145e-3412-4f06-8de6-961bae9ff452/topic:1:c2c479d4-421a-45c7-8d2c-bff5f4c46c80/topic:1:4520c763-ccea-4897-a2bd-7a7ddabea88a/topic:1:4584b191-d4d7-4557-bb93-450d66431749/resource:4e308c45-6048-4638-9bbf-7c8d8a01cd8a)

[What is Active Directory Users and Computers Console? - Windows Server Technology
(windowstechno.com)](https://www.windowstechno.com/what-is-active-directory-users-and-computers-console/)

[How to Create a New Active Directory User Account - Active Directory Pro](https://activedirectorypro.com/how-to-create-a-new-active-directory-user-account/)

## Slette bruker

**Åpne Excel**

**Skriv `Identity` i rute A1**

**Fyll resten av A med brukerne som skal bli slettet**

![](Images\win_server_rm_user_csv.png)

_eksempel på hvordan det kan se ut_

**Eksporter filen som CSV**

![](Images\excel_export_csv.png)

**Kjør PowerShell scriptet under**

![](Images\win_server_rm_user_ps1.png)

**Skriv inn filbanen til CSV-filen**

**Vent til ferdig**

**Åpne filutforskeren**

**Gå til** `C:\Users\home_folders\`

**Slett mappene til de brukerne som ble slettet**
